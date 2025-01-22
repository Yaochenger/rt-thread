/*
* Copyright (c) 2020 - 2024 Renesas Electronics Corporation and/or its affiliates
*
* SPDX-License-Identifier: BSD-3-Clause
*/

#ifndef BSP_INTERNAL_H
#define BSP_INTERNAL_H

/** @cond INC_INTERNAL_DOC_SEC */

/***********************************************************************************************************************
 * Includes   <System Includes> , "Project Includes"
 **********************************************************************************************************************/

/* Internal BSP includes */
#include "../../src/bsp/mcu/all/internal/bsp_ipc.h"

/** Common macro for FSP header files. There is also a corresponding FSP_FOOTER macro at the end of this file. */
FSP_HEADER

/***********************************************************************************************************************
 * Typedef definitions
 **********************************************************************************************************************/
#if BSP_FEATURE_CGC_SCKDIVCR2_HAS_EXTRA_CLOCKS

/* Extra Clock mappings:
 * Extra Clock 1 == CPUCLK1
 * Extra Clock 2 == NPUCLK
 * Extra Clock 3 == MRICLK
 */
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK1_MASK    R_SYSTEM_SCKDIVCR2_CPUCK1_Msk
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK2_MASK    R_SYSTEM_SCKDIVCR2_NPUCK_Msk
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK3_MASK    R_SYSTEM_SCKDIVCR2_MRICK_Msk
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK1_POS     R_SYSTEM_SCKDIVCR2_CPUCK1_Pos
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK2_POS     R_SYSTEM_SCKDIVCR2_NPUCK_Pos
 #define BSP_INTERNAL_SCKDIVCR2_EXTRACK3_POS     R_SYSTEM_SCKDIVCR2_MRICK_Pos

/* Key codes for MRAM registers. */
 #define BSP_PRV_MRCFREQ_KEY                     (0x1E000000)
 #define BSP_PRV_MREFREQ_KEY                     (0xE1000000)
 #define BSP_PRV_MRCPFB_LIMIT                    (0xC9) /* Value is for WS1. Should be 0x65 for WS2/WS3. */

/* MSTP definitions for NPU, these should be moved to bsp_module_stop.h after public release. */
 #define BSP_MSTP_REG_FSP_IP_NPU(channel)    R_BSP_MSTPCRA
 #define BSP_MSTP_BIT_FSP_IP_NPU(channel)    (1U << (16U));
#endif

/* Change this feature macro to BSP_FEATURE_BSP_HAS_DSMIF_CLOCK after public release. */
#if BSP_FEATURE_BSP_HAS_EXTRA_PERIPHERAL0_CLOCK

/* These macros can be removed after public release. */
 #define BSP_PRV_EXTRA_PERIPHERAL0_CLOCK_CKCR       (&R_SYSTEM->DSMIFCKCR)
 #define BSP_PRV_EXTRA_PERIPHERAL0_CLOCK_CKDIVCR    (&R_SYSTEM->DSMIFCKDIVCR)

/* MSTP definitions for DSMIF, these should be moved to bsp_module_stop.h after public release. */
 #define BSP_MSTP_REG_FSP_IP_DSMIF(channel)    R_MSTP->MSTPCRD
 #define BSP_MSTP_BIT_FSP_IP_DSMIF(channel)    (1U << (9U - channel));
#endif

/***********************************************************************************************************************
 * Exported global variables
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Exported global functions (to be accessed by other files)
 **********************************************************************************************************************/

/*******************************************************************************************************************//**
 * @addtogroup BSP_MCU
 * @{
 **********************************************************************************************************************/

#if BSP_FEATURE_CGC_SCKDIVCR2_HAS_EXTRA_CLOCKS && !BSP_ALT_BUILD
 #define BSP_CPU1ACTCSR_KEY_CODE    0xA5

/*******************************************************************************************************************//**
 * Sets the secondary core VTOR and activates the secondary core.
 **********************************************************************************************************************/
__STATIC_INLINE void R_BSP_SecondaryCoreStart (void)
{
 #if defined(__ARMCC_VERSION)
  #define BSP_PRV_CORE1_FLASH_START    &Image$$__tz_FLASH_N$$Base
    extern const uint32_t Image$$__tz_FLASH_N$$Base;
 #elif defined(__IAR_SYSTEMS_ICC__)
  #define BSP_PRV_CORE1_FLASH_START    gp_start_of_nonsecure_flash
  #pragma section=".tz_flash_ns_start"
    uint32_t const * const gp_start_of_nonsecure_flash = (uint32_t *) __section_begin(".tz_flash_ns_start");
 #else
  #define BSP_PRV_CORE1_FLASH_START    &__tz_FLASH_N
    extern const uint32_t __tz_FLASH_N;
 #endif

    /* Setup secondary CPU vector table */
    R_CPU_CTRL->CPU1INITVTOR = (uint32_t) BSP_PRV_CORE1_FLASH_START;

    /* When debugging multicore projects, CPU1 may already be activated by the debugger with CPU1WAITCR set to 1.
     * This allows the debugger to connect to CPU1 prior to it being started by CPU0.
     * If this is the case, then the secondary core must be started by clearing CPU1WAITCR. */
    R_CPU_CTRL->CPU1WAITCR = 1;

    /* Activate secondary CPU by setting key code and activation request in CPU1ACTCSR */
    R_CPU_CTRL->CPU1ACTCSR = (BSP_CPU1ACTCSR_KEY_CODE << R_CPU_CTRL_CPU1ACTCSR_KEY_Pos) |
                             R_CPU_CTRL_CPU1ACTCSR_ACTREQ_Msk;
}

#endif

/** @} (end addtogroup BSP_MCU) */

#if BSP_FEATURE_CGC_SCKDIVCR2_HAS_EXTRA_CLOCKS

/*******************************************************************************************************************//**
 * Clears the PFB for MRAM, this is part of bsp_internal to obfuscate references to MRAM.
 **********************************************************************************************************************/
__STATIC_INLINE void bsp_internal_prv_clear_pfb (void)
{
    /* Clear MRAM pre-fetch buffer, see 54.4.3 Frequency Change Procedure for MRAM */
    R_MRMS->MRCPFB = 0x00;
    (void) R_MRMS->MRCPFB;
    (void) R_MRMS->MRCPFB;
    (void) R_MRMS->MRCPFB;
}

/*******************************************************************************************************************//**
 * Sets the PFB for MRAM if the frequency exceeds the threshold.
 * This is part of bsp_internal to obfuscate references to MRAM.
 **********************************************************************************************************************/
__STATIC_INLINE void bsp_internal_prv_set_pfb (uint32_t frequency)
{
    if (frequency >= BSP_PRV_MRCPFB_LIMIT)
    {
        /* Enable PFB when MRCFREQ is 0x65 or higher */
        R_MRMS->MRCPFB = 0x01;
    }
}

/*******************************************************************************************************************//**
 * Sets the wait states for MRAM, this is part of bsp_internal to obfuscate references to MRAM.
 **********************************************************************************************************************/
__STATIC_INLINE void bsp_internal_prv_set_wait_state_frequency (uint32_t frequency)
{
    while (frequency != R_MRMS->MRCFREQ)
    {
        R_MRMS->MRCFREQ = BSP_PRV_MRCFREQ_KEY | frequency;
    }
}

/*******************************************************************************************************************//**
 * Enables the power domain for the NPU.
 **********************************************************************************************************************/
__STATIC_INLINE void bsp_internal_prv_enable_extra_power_domain (void)
{
    R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_OM_LPC_BATT);
    FSP_HARDWARE_REGISTER_WAIT((R_SYSTEM->PDCTRNPU & (R_SYSTEM_PDCTRGD_PDCSF_Msk | R_SYSTEM_PDCTRGD_PDPGSF_Msk)),
                               R_SYSTEM_PDCTRGD_PDPGSF_Msk);
    R_SYSTEM->PDCTRNPU = 0;
    FSP_HARDWARE_REGISTER_WAIT((R_SYSTEM->PDCTRNPU & (R_SYSTEM_PDCTRGD_PDCSF_Msk | R_SYSTEM_PDCTRGD_PDPGSF_Msk)), 0);
    R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_OM_LPC_BATT);
}

#endif

/** Common macro for FSP header files. There is also a corresponding FSP_HEADER macro at the top of this file. */
FSP_FOOTER

/** @endcond */

#endif
