/* 
 * Copyright (C) 2017 ETH Zurich, University of Bologna and GreenWaves Technologies
 * All rights reserved.
 *
 * This software may be modified and distributed under the terms
 * of the BSD license.  See the LICENSE file for details.
 *
 */
#include "pmsis.h"
#include <bsp/bsp.h>
#include "siracusa_padctrl.h"

#define FC_CLK_FREQ_MHZ     360
// Start at 10 MHz to guarantee the FIFO fetch beats the 3-cycle CA phase.
// Once this passes, increment to find the architectural latency ceiling (e.g., 25, 50).
#define PERIPH_CLK_FREQ_MHZ 100

static void setup_clock_domains()
{
    // 1. Configure the SOC domain (UDMA engine & L2 Interconnect) for max speed
    pll_t soc_pll = pll_get_handle(PLL_SOC_DOMAIN);
    uint32_t actual_soc_freq = pll_set_freq(&soc_pll, FC_CLK_FREQ_MHZ * 1000000, NULL);

    // 3. Configure the PER domain (HyperBus PHY) for maximum CA phase stretching
    pll_t per_pll = pll_get_handle(PLL_PER_DOMAIN);
    uint32_t actual_per_freq = pll_set_freq(&per_pll, PERIPH_CLK_FREQ_MHZ * 1000000, NULL);

    printf("[CLOCK] SOC: %u Hz | PER: %u Hz \r\n", 
           actual_soc_freq, actual_per_freq);
}

static int test_entry()
{
  struct pi_device hyper;
  struct pi_hyperram_conf conf;

  pi_hyperram_conf_init(&conf);
  pi_open_from_conf(&hyper, &conf);

  if (pi_ram_open(&hyper)) {
    //printf("ERROR: Failed to open HyperRAM.\n");
    return -1;
  }

  // Choose an arbitrary address in the HyperRAM memory array
  uint32_t test_addr = 0x00001000;
  
  // --- PADDING HACK CONFIGURATION ---
  uint32_t latency_clocks = 6;                          // HyperRAM write wait latency
  uint32_t padding_size = latency_clocks * 2;           // 2 bytes per clock (DDR) = 12 bytes
  uint32_t data_size = 4;                               // The actual payload size
  uint32_t tx_transfer_size = padding_size + data_size; // Total UDMA transfer size: 16 bytes

  /* * Allocate the transmit buffer to hold BOTH padding and data.
   * Receive buffer only needs to hold the actual data.
   */
  uint8_t *tx_buffer = (uint8_t *)pmsis_l2_malloc(tx_transfer_size);
  uint8_t *rx_buffer = (uint8_t *)pmsis_l2_malloc(data_size);
  
  if (tx_buffer == NULL || rx_buffer == NULL) {
    //printf("ERROR: Failed to allocate L2 memory.\n");
    if (tx_buffer) pmsis_l2_malloc_free(tx_buffer, tx_transfer_size);
    if (rx_buffer) pmsis_l2_malloc_free(rx_buffer, data_size);
    pi_ram_close(&hyper);
    return -1;
  }

  // 1. Initialize the first 12 bytes with padding (garbage data)
  // The PHY will send this while the RAM is in its latency wait state.
  for (uint32_t i = 0; i < padding_size; i++) {
      tx_buffer[i] = 0x00; 
  }

  // 2. Append the actual test pattern at the end of the TX buffer
  // The RAM will start capturing exactly when this data hits the bus.
  tx_buffer[padding_size + 0] = 0xDE;
  tx_buffer[padding_size + 1] = 0xAD;
  tx_buffer[padding_size + 2] = 0xBE;
  tx_buffer[padding_size + 3] = 0xEF;
  
  // Clear RX buffer
  rx_buffer[0] = 0x00;
  rx_buffer[1] = 0x00;
  rx_buffer[2] = 0x00;
  rx_buffer[3] = 0x00;

  printf("Starting Memory Write (12 bytes padding + 4 bytes data)...\n");
  // Execute the write using the expanded size
  pi_ram_write(&hyper, test_addr, tx_buffer, tx_transfer_size);

  printf("Starting Memory Read (4 bytes data)...\n");
  // The read side uses the Flash Read state, which likely handles read latency correctly.
  pi_ram_read(&hyper, test_addr, rx_buffer, data_size);

  // DEBUG: Print the raw bytes to verify
  printf("RAW BYTES WRITTEN: 0x%02X 0x%02X 0x%02X 0x%02X\n", 
         tx_buffer[padding_size + 0], tx_buffer[padding_size + 1], 
         tx_buffer[padding_size + 2], tx_buffer[padding_size + 3]);
  printf("RAW BYTES READ:    0x%02X 0x%02X 0x%02X 0x%02X\n", 
         rx_buffer[0], rx_buffer[1], rx_buffer[2], rx_buffer[3]);

  // Verify the data by offsetting the tx_buffer index
  int error_count = 0;
  for (uint32_t i = 0; i < data_size; i++) {
      if (tx_buffer[padding_size + i] != rx_buffer[i]) {
          error_count++;
      }
  }

  if (error_count == 0) { 
      printf(">>> SUCCESS: Memory Read/Write Test Passed! <<<\n");
  } else {
      printf(">>> FAILED: Memory mismatch detected. Errors: %d <<<\n", error_count);
  }

  // Clean up
  pmsis_l2_malloc_free(tx_buffer, tx_transfer_size);
  pmsis_l2_malloc_free(rx_buffer, data_size);
  pi_ram_close(&hyper);

  return (error_count == 0) ? 0 : -1;
}

void test_kickoff(void *arg)
{
  int ret = test_entry();
  pmsis_exit(ret);
}

int main()
{
#ifdef RTL_PLATFORM
  padctrl_mode_set(PAD_GPIO39, PAD_MODE_UART0_RX);
  padctrl_mode_set(PAD_GPIO38, PAD_MODE_UART0_TX);
#endif

  setup_clock_domains();

  printf("Starting HyperRAM Test\r\n");

  return pmsis_kickoff((void *)test_kickoff);
}