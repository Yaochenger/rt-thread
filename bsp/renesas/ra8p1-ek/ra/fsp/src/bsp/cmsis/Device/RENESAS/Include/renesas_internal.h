/*
* Copyright (c) 2020 - 2024 Renesas Electronics Corporation and/or its affiliates
*
* SPDX-License-Identifier: BSD-3-Clause
*/

/* Ensure Renesas MCU variation definitions are included to ensure MCU
 * specific register variations are handled correctly. */
#ifndef RENESAS_INTERNAL_H
 #define RENESAS_INTERNAL_H

/** @addtogroup Renesas
 * @{
 */

/** @addtogroup RA
 * @{
 */

 #ifdef __cplusplus
extern "C" {
 #endif

 #if BSP_MCU_GROUP_RA4L1
  #include "R7FA4L1AD.h"
 #elif BSP_MCU_GROUP_RA2T1
  #include "R7FA2T107.h"
 #elif BSP_MCU_GROUP_RA8P1
  #if 0U == BSP_CFG_CPU_CORE
   #include "R7KA8P1KF_core0.h"
  #elif 1U == BSP_CFG_CPU_CORE
   #include "R7KA8P1KF_core1.h"
  #else
   #warning "Unsupported CPU number"
  #endif
 #elif BSP_MCU_GROUP_RA8M2
  #if 0U == BSP_CFG_CPU_CORE
   #include "R7KA8M2JF_core0.h"
  #elif 1U == BSP_CFG_CPU_CORE
   #include "R7KA8M2JF_core1.h"
  #else
   #warning "Unsupported CPU number"
  #endif
 #elif BSP_MCU_GROUP_RA8T2
  #if 0U == BSP_CFG_CPU_CORE
   #include "R7KA8T2LF_core0.h"
  #elif 1U == BSP_CFG_CPU_CORE
   #include "R7KA8T2LF_core1.h"
  #else
   #warning "Unsupported CPU number"
  #endif
 #elif BSP_MCU_GROUP_RA8D2
  #if 0U == BSP_CFG_CPU_CORE
   #include "R7KA8D2KF_core0.h"
  #elif 1U == BSP_CFG_CPU_CORE
   #include "R7KA8D2KF_core1.h"
  #else
   #warning "Unsupported CPU number"
  #endif
 #elif BSP_MCU_GROUP_RA2L2
  #include "R7FA2L209.h"
 #elif BSP_MCU_GROUP_RA0E2
  #include "R7FA0E209.h"
 #else
  #warning "Unsupported MCU"
 #endif

 #ifdef __cplusplus
}
 #endif

/** @} */ /* End of group RA */

/** @} */ /* End of group Renesas */

#endif
