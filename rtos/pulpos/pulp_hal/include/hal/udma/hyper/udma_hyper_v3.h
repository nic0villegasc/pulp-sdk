/*
 * Copyright (C) 2020 ETH Zurich and University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
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
 */

/* * Authors: Nazareno Bruschi, Unibo (nazareno.bruschi@unibo.it)
            Hayate Okuhara, Unibo (hayate.okuhara@unibo.it)
 */

#ifndef __HAL_UDMA_HYPER_V3_H__
#define __HAL_UDMA_HYPER_V3_H__

#include "pmsis.h"
#include "archi/udma/hyper/udma_hyper_v3_siracusa_fix.h"
#include <stdio.h>

/* Transaction configuration parameters */
#define CONFIG_HYPERFLASH_EN_LATENCY_ADD 1
#define CONFIG_HYPERRAM_EN_LATENCY_ADD 1
#define CONFIG_HYPERFLASH_T_LATENCY_ACCESS 0x10
#define CONFIG_HYPERRAM_T_LATENCY_ACCESS 0x10

/* * Debug macro for IP register tracing. 
 * Set to 0 to disable prints for cycle-accurate profiling or production.
 */
#define HYPER_DEBUG_TRACE 0

#if HYPER_DEBUG_TRACE
#define HYPER_TRACE(fmt, ...) printf("[HYPER_TRACE] " fmt, ##__VA_ARGS__)
#else
#define HYPER_TRACE(fmt, ...)
#endif

static inline int plp_hyper_get_reg(unsigned int offset){
  return pulp_read32(offset);
}

static inline int plp_hyper_check_memsel(unsigned char hyper_id){
  return plp_hyper_get_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + MEM_SEL);
}

static inline int plp_hyper_nb_tran(unsigned char hyper_id, unsigned int tran_id){
  return plp_hyper_get_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + STATUS(tran_id)) >> 1;
}

static inline int plp_hyper_is_busy(unsigned char hyper_id, unsigned int tran_id){
  return plp_hyper_get_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + STATUS(tran_id)) & 0x00000001;
}

static inline void plp_hyper_wait(unsigned char hyper_id, unsigned int tran_id){
   while(plp_hyper_is_busy(hyper_id, tran_id)){
   }
}

static inline int plp_hyper_id_alloc(unsigned char hyper_id){
  int tran_id = HYPER_NB_CHANNELS;
  while(tran_id == HYPER_NB_CHANNELS)
  {
    tran_id = plp_hyper_get_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TRANS_ID_ALLOC);
  }
  return tran_id;
}

static inline void plp_hyper_set_reg(unsigned int offset, unsigned int value){
  pulp_write32(offset, value);
}

static inline void plp_hyper_setup(unsigned char hyper_id, unsigned int en_latency_add, unsigned int memsel, unsigned int t_latency_access)
{
  HYPER_TRACE("SETUP | ID: %d\n", hyper_id);
  HYPER_TRACE("  -> REG_EN_LATENCY_ADD (0x%08x) = 0x%08x\n", REG_EN_LATENCY_ADD, en_latency_add);
  HYPER_TRACE("  -> MEM_SEL            (0x%08x) = 0x%08x\n", MEM_SEL, memsel);
  HYPER_TRACE("  -> REG_T_CS_MAX       (0x%08x) = 0x%08x\n", REG_T_CS_MAX, 0xffffffff);
  HYPER_TRACE("  -> REG_T_LATENCY_ACC  (0x%08x) = 0x%08x\n", REG_T_LATENCY_ACCESS, t_latency_access);

  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_EN_LATENCY_ADD, en_latency_add);
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + MEM_SEL, memsel);
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_T_CS_MAX, 0xffffffff);
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_T_LATENCY_ACCESS, t_latency_access);
}

static inline void plp_hyper_set_pagebound(unsigned char hyper_id, unsigned int page_bound){
  unsigned int val;
  switch(page_bound){
     case 128:  val = 0x00; break; // page boundary is set to every 128 bytes
     case 256:  val = 0x01; break; // page boundary is set to every 256 bytes
     case 512:  val = 0x02; break; // page boundary is set to every 512 bytes
     case 1024: val = 0x03; break; // page boundary is set to every 1024 bytes
     default:   val = 0x04; break; // page boundary is not considered
  }

  HYPER_TRACE("PAGEBOUND | ID: %d\n", hyper_id);
  HYPER_TRACE("  -> REG_PAGE_BOUND     (0x%08x) = 0x%02x (Bound: %d bytes)\n", REG_PAGE_BOUND, val, page_bound);

  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_PAGE_BOUND, val);
}

static inline void plp_hyper_set_twd_param(unsigned char hyper_id, unsigned int *args, unsigned int tran_id){
  HYPER_TRACE("TWD_PARAM | ID: %d, Tran_ID: %d\n", hyper_id, tran_id);
  HYPER_TRACE("  -> TWD_ACT            (0x%08x) = 0x%08x\n", TWD_ACT(tran_id), args[0]);
  HYPER_TRACE("  -> TWD_COUNT          (0x%08x) = 0x%08x\n", TWD_COUNT(tran_id), args[1]);
  HYPER_TRACE("  -> TWD_STRIDE         (0x%08x) = 0x%08x\n", TWD_STRIDE(tran_id), args[2]);
  HYPER_TRACE("  -> TWD_ACT_L2         (0x%08x) = 0x%08x\n", TWD_ACT_L2(tran_id), args[3]);
  HYPER_TRACE("  -> TWD_COUNT_L2       (0x%08x) = 0x%08x\n", TWD_COUNT_L2(tran_id), args[4]);
  HYPER_TRACE("  -> TWD_STRIDE_L2      (0x%08x) = 0x%08x\n", TWD_STRIDE_L2(tran_id), args[5]);

  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_ACT(tran_id), args[0]); // 2D TRAN is deactivated
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_COUNT(tran_id), args[1]); // 2D COUNT for ext mem
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_STRIDE(tran_id), args[2]); // 2D STRIDE for ext mem
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_ACT_L2(tran_id), args[3]); // 2D TRAN is deactivated
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_COUNT_L2(tran_id), args[4]); // 2D COUNT for l2
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + TWD_STRIDE_L2(tran_id), args[5]); // 2D STRIDE for l2
}

static inline void plp_hyper_set_ctl_param(unsigned char hyper_id, unsigned int *args, unsigned int tran_id) {
  HYPER_TRACE("CTL_PARAM | ID: %d, Tran_ID: %d\n", hyper_id, tran_id);
  HYPER_TRACE("  -> HYPER_CA_SETUP     (0x%08x) = 0x%08x\n", HYPER_CA_SETUP(tran_id), args[0]);
  HYPER_TRACE("  -> REG_HYPER_ADDR     (0x%08x) = 0x%08x\n", REG_HYPER_ADDR(tran_id), args[1]);

  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + HYPER_CA_SETUP(tran_id), args[0]); // Write is declared for the external mem
  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_HYPER_ADDR(tran_id), args[1]); // external memory address
}

static inline void plp_hyper_set_cfg(unsigned char hyper_id, unsigned int data, unsigned int tran_id)
{
  HYPER_TRACE("CFG       | ID: %d, Tran_ID: %d\n", hyper_id, tran_id);
  HYPER_TRACE("  -> REG_HYPER_CFG      (0x%08x) = 0x%08x\n", REG_HYPER_CFG(tran_id), data);

  plp_hyper_set_reg(UDMA_HYPER_BASE_ADDR(hyper_id) + REG_HYPER_CFG(tran_id), data); 
}

static inline void plp_hyper_enqueue(unsigned int chan_offset, unsigned int l2_addr, unsigned int len, unsigned int cfg){
  HYPER_TRACE("ENQUEUE   | Chan_Offset: 0x%08x\n", chan_offset);
  HYPER_TRACE("  -> UDMA_SADDR         (0x%08x) = 0x%08x\n", chan_offset + UDMA_HYPER_SADDR_OFFSET, l2_addr);
  HYPER_TRACE("  -> UDMA_SIZE          (0x%08x) = 0x%08x (%u bytes)\n", chan_offset + UDMA_HYPER_SIZE_OFFSET, len, len);
  HYPER_TRACE("  -> UDMA_CFG           (0x%08x) = 0x%08x\n", chan_offset + UDMA_HYPER_CFG_OFFSET, cfg);

  plp_hyper_set_reg(chan_offset + UDMA_HYPER_SADDR_OFFSET, l2_addr); // Data address in L2
  plp_hyper_set_reg(chan_offset + UDMA_HYPER_SIZE_OFFSET, len );     // Data size to be sent
  plp_hyper_set_reg(chan_offset + UDMA_HYPER_CFG_OFFSET, cfg); // Write transaction is kicked
}

#endif