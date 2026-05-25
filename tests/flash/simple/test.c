/*
 * Copyright (C) 2019 GreenWaves Technologies
 * All rights reserved.
 *
 * This software may be modified and distributed under the terms
 * of the BSD license.  See the LICENSE file for details.
 *
 * Authors: Germain Haugou, GreenWaves Technologies (germain.haugou@greenwaves-technologies.com)
 */

/*
* With additional modifications:
* Copyright (C) 2021 University of Bologna, ETH Zurich
*
* * Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* Authors: Nazareno Bruschi, UniBo (nazareno.bruschi@unibo.it)
*/

#include "pmsis.h"
#include <bsp/bsp.h>
#if defined(RTL_PLATFORM)
    #include "siracusa_padctrl.h"
#endif

#define HYPER_FLASH 0
#define SPI_FLASH   1
#define MRAM        2

#define BUFF_SIZE 2048
#define PROGRAM_SIZE_RTL   BUFF_SIZE
#define PROGRAM_SIZE_OTHER ((1<<18)*4)

#define NB_ITER 2


static inline void get_info(unsigned int *program_size)
{
#if defined(ARCHI_PLATFORM_RTL)
  if (rt_platform() == ARCHI_PLATFORM_RTL)
  {
    *program_size = PROGRAM_SIZE_RTL;
  }
  else
  {
    *program_size = PROGRAM_SIZE_OTHER;
  }
#else
  *program_size = PROGRAM_SIZE_OTHER;
#endif  /* __PULP_OS__ */
}


static PI_L2 unsigned char rx_buffer[BUFF_SIZE];
static PI_L2 unsigned char tx_buffer[BUFF_SIZE];

static int test_entry()
{
  struct pi_device flash;
  struct pi_hyperflash_conf flash_conf;
  uint32_t test_addr = 0x00040080; // Safe address from your earlier test

  printf("Starting No-Erase Flash Write Test...\n");

  pi_hyperflash_conf_init(&flash_conf);
  pi_open_from_conf(&flash, &flash_conf);

  if (pi_flash_open(&flash)) {
    printf("ERROR: pi_flash_open failed!\n");
    return -1;
  }
  printf("HyperFlash opened successfully.\n");

  // Step 1: Prove it is empty
  printf("Reading initial state...\n");
  pi_flash_read(&flash, test_addr, rx_buffer, 4);
  printf("Initial Read: %02X %02X %02X %02X\n", rx_buffer[0], rx_buffer[1], rx_buffer[2], rx_buffer[3]);

  if (rx_buffer[0] != 0xFF) {
      printf("Warning: Address is not completely erased! Write might fail.\n");
  }

  // Step 2: Write our signature
  printf("Writing DEADBEEF signature...\n");
  tx_buffer[0] = 0xDE;
  tx_buffer[1] = 0xAD;
  tx_buffer[2] = 0xBE;
  tx_buffer[3] = 0xEF;
  
  // Use bwrite to handle the flash command sequencing
  pi_flash_bwrite(&flash, test_addr, tx_buffer, 4);

  // Step 3: Read it back
  printf("Reading back written data...\n");
  // Clear rx_buffer just to be absolutely sure we aren't faking it
  rx_buffer[0] = 0; rx_buffer[1] = 0; rx_buffer[2] = 0; rx_buffer[3] = 0; 
  
  pi_flash_read(&flash, test_addr, rx_buffer, 4);
  printf("Final Read:   %02X %02X %02X %02X\n", rx_buffer[0], rx_buffer[1], rx_buffer[2], rx_buffer[3]);

  pi_flash_close(&flash);
  
  if (rx_buffer[0] == 0xDE && rx_buffer[1] == 0xAD) {
      printf(">>> TEST SUCCESS! FLASH IS 100%% FUNCTIONAL! <<<\n");
  } else {
      printf(">>> TEST FAILED! FLASH IS DEAD/LOCKED! <<<\n");
  }

  return 0;
}

static void test_kickoff(void *arg)
{
  int ret = test_entry();
  pmsis_exit(ret);
}

int main()
{
  #if defined(RTL_PLATFORM)
      padctrl_mode_set(PAD_GPIO39, PAD_MODE_UART0_RX);
      padctrl_mode_set(PAD_GPIO38, PAD_MODE_UART0_TX);
      
    #endif
    
    printf("Starting HyperRAM Test\r\n");

  return pmsis_kickoff((void *)test_kickoff);
}
