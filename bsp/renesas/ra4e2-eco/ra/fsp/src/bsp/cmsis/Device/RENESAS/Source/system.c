/*
* Copyright (c) 2020 - 2025 Renesas Electronics Corporation and/or its affiliates
*
* SPDX-License-Identifier: BSD-3-Clause
*/

/*******************************************************************************************************************//**
 * @addtogroup BSP_MCU
 * @{
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Includes   <System Includes> , "Project Includes"
 **********************************************************************************************************************/
#include <string.h>
#if defined(__GNUC__) && defined(__llvm__) && !defined(__ARMCC_VERSION) && !defined(__CLANG_TIDY__)
 #include <picotls.h>
#endif
#if defined(__ARMCC_VERSION)
 #if defined(__ARMCC_USING_STANDARDLIB)
  #include <rt_misc.h>
 #endif
#endif
#include "bsp_api.h"

/***********************************************************************************************************************
 * Macro definitions
 **********************************************************************************************************************/

/* Mask to select CP bits( 0xF00000 ) */
#define CP_MASK                                       (0xFU << 20)

/* Startup value for CCR to enable instruction cache, branch prediction and LOB extension */
#define CCR_CACHE_ENABLE                              (0x000E0201)

/* Value to write to OAD register of MPU stack monitor to enable NMI when a stack overflow is detected. */
#define BSP_STACK_POINTER_MONITOR_NMI_ON_DETECTION    (0xA500U)

/* Key code for writing PRCR register. */
#define BSP_PRV_PRCR_KEY                              (0xA500U)
#define BSP_PRV_PRCR_PRC1_UNLOCK                      ((BSP_PRV_PRCR_KEY) | 0x2U)
#define BSP_PRV_PRCR_LOCK                             ((BSP_PRV_PRCR_KEY) | 0x0U)
#define BSP_PRV_STACK_LIMIT                           ((uint32_t) __Vectors[0] - BSP_CFG_STACK_MAIN_BYTES)
#define BSP_PRV_STACK_TOP                             ((uint32_t) __Vectors[0])
#define BSP_TZ_STACK_SEAL_VALUE                       (0xFEF5EDA5)

#define ARMV8_MPU_REGION_MIN_SIZE                     (32U)

/***********************************************************************************************************************
 * Typedef definitions
 **********************************************************************************************************************/

/***********************************************************************************************************************
 * Exported global variables (to be accessed by other files)
 **********************************************************************************************************************/

/** System Clock Frequency (Core Clock) */
uint32_t SystemCoreClock BSP_SECTION_EARLY_INIT;

#if defined(__ARMCC_VERSION)
extern uint32_t Image$$BSS$$ZI$$Base;
extern uint32_t Image$$BSS$$ZI$$Length;
extern uint32_t Load$$DATA$$Base;
extern uint32_t Image$$DATA$$Base;
extern uint32_t Image$$DATA$$Length;
 #if defined(__ARMCC_USING_STANDARDLIB)
extern uint32_t Image$$ARM_LIB_HEAP$$ZI$$Base;
extern uint32_t Image$$ARM_LIB_HEAP$$ZI$$Length;
 #endif
 #if BSP_FEATURE_BSP_HAS_ITCM
extern uint32_t Load$$ITCM_DATA$$Base;
extern uint32_t Load$$ITCM_PAD$$Limit;
extern uint32_t Image$$ITCM_DATA$$Base;
 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
extern uint32_t Load$$DTCM_DATA$$Base;
extern uint32_t Load$$DTCM_PAD$$Limit;
extern uint32_t Image$$DTCM_DATA$$Base;
extern uint32_t Image$$DTCM_BSS$$Base;
extern uint32_t Image$$DTCM_BSS_PAD$$ZI$$Limit;
 #endif
 #if BSP_CFG_DCACHE_ENABLED
extern uint32_t Image$$NOCACHE$$ZI$$Base;
extern uint32_t Image$$NOCACHE_PAD$$ZI$$Limit;
extern uint32_t Image$$NOCACHE_SDRAM$$ZI$$Base;
extern uint32_t Image$$NOCACHE_SDRAM_PAD$$ZI$$Limit;
 #endif
#elif defined(__GNUC__)

/* Generated by linker. */
extern uint32_t __etext;
extern uint32_t __data_start__;
extern uint32_t __data_end__;
extern uint32_t __bss_start__;
extern uint32_t __bss_end__;
extern uint32_t __StackLimit;
extern uint32_t __StackTop;

/* Nested in __GNUC__ because LLVM generates both __GNUC__ and __llvm__*/
 #if defined(__llvm__) && !defined(__CLANG_TIDY__)
extern uint32_t __tls_base;
 #endif
 #if BSP_FEATURE_BSP_HAS_ITCM
extern uint32_t __itcm_data_init_start;
extern uint32_t __itcm_data_init_end;
extern uint32_t __itcm_data_start;
 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
extern uint32_t __dtcm_data_init_start;
extern uint32_t __dtcm_data_init_end;
extern uint32_t __dtcm_data_start;
extern uint32_t __dtcm_bss_start;
extern uint32_t __dtcm_bss_end;
 #endif
 #if BSP_CFG_DCACHE_ENABLED
extern uint32_t __nocache_start;
extern uint32_t __nocache_end;
extern uint32_t __nocache_sdram_start;
extern uint32_t __nocache_sdram_end;
 #endif
#elif defined(__ICCARM__)
 #pragma section=".bss"
 #pragma section=".data"
 #pragma section=".data_init"
 #pragma section=".stack"
 #if BSP_FEATURE_BSP_HAS_ITCM
extern uint32_t ITCM_DATA_INIT$$Base;
extern uint32_t ITCM_DATA_INIT$$Limit;
extern uint32_t ITCM_DATA$$Base;
 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
extern uint32_t DTCM_DATA_INIT$$Base;
extern uint32_t DTCM_DATA_INIT$$Limit;
extern uint32_t DTCM_DATA$$Base;
extern uint32_t DTCM_BSS$$Base;
extern uint32_t DTCM_BSS$$Limit;
 #endif
 #if BSP_CFG_DCACHE_ENABLED
extern uint32_t NOCACHE$$Base;
extern uint32_t NOCACHE$$Limit;
extern uint32_t NOCACHE_SDRAM$$Base;
extern uint32_t NOCACHE_SDRAM$$Limit;
 #endif

#endif

/* Initialize static constructors */
#if defined(__ARMCC_VERSION)
extern void (* Image$$INIT_ARRAY$$Base[])(void);
extern void (* Image$$INIT_ARRAY$$Limit[])(void);
#elif defined(__GNUC__)

extern void (* __init_array_start[])(void);

extern void (* __init_array_end[])(void);
#elif defined(__ICCARM__)
extern void __call_ctors(void const *, void const *);

 #pragma section = "SHT$$PREINIT_ARRAY" const
 #pragma section = "SHT$$INIT_ARRAY" const
#endif

extern void * __Vectors[];

extern void R_BSP_SecurityInit(void);

/***********************************************************************************************************************
 * Private global variables and functions
 **********************************************************************************************************************/

#if BSP_FEATURE_BSP_RESET_TRNG
static void bsp_reset_trng_circuit(void);

#endif

#if defined(__ICCARM__)

void R_BSP_WarmStart(bsp_warm_start_event_t event);

 #pragma weak R_BSP_WarmStart

#elif defined(__GNUC__) || defined(__ARMCC_VERSION)

void R_BSP_WarmStart(bsp_warm_start_event_t event) __attribute__((weak));

#endif

#if BSP_CFG_EARLY_INIT
static void bsp_init_uninitialized_vars(void);

#endif

#if BSP_CFG_C_RUNTIME_INIT
 #if BSP_FEATURE_BSP_HAS_ITCM || BSP_FEATURE_BSP_HAS_DTCM
static void memcpy_64(uint64_t * destination, const uint64_t * source, size_t count);

 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
static void memset_64(uint64_t * destination, const uint64_t value, size_t count);

 #endif
#endif

#if BSP_CFG_C_RUNTIME_INIT
 #if BSP_FEATURE_BSP_HAS_ITCM
static void bsp_init_itcm(void);

 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
static void bsp_init_dtcm(void);

 #endif
#endif

#if BSP_CFG_DCACHE_ENABLED
static void bsp_init_mpu(void);

#endif

/*******************************************************************************************************************//**
 * Initialize the MCU and the runtime environment.
 **********************************************************************************************************************/
void SystemInit (void)
{
#if defined(RENESAS_CORTEX_M85)

    /* Enable the instruction cache, branch prediction, and the branch cache (required for Low Overhead Branch (LOB) extension).
     * See sections 6.5, 6.6, and 6.7 in the Arm Cortex-M85 Processor Technical Reference Manual (Document ID: 101924_0002_05_en, Issue: 05)
     * See section D1.2.9 in the Armv8-M Architecture Reference Manual (Document number: DDI0553B.w, Document version: ID07072023) */
    SCB->CCR = (uint32_t) CCR_CACHE_ENABLE;
    __DSB();
    __ISB();
 #if !BSP_TZ_NONSECURE_BUILD

    /* Apply Arm Cortex-M85 errata workarounds for D-Cache.
     * See erratum 3175626 and 3190818 in the Cortex-M85 AT640 and Cortex-M85 with FPU AT641 Software Developer Errata Notice (Date of issue: March 07, 2024, Document version: 13.0, Document ID: SDEN-2236668). */
    MEMSYSCTL->MSCR |= MEMSYSCTL_MSCR_FORCEWT_Msk;
    __DSB();
    __ISB();
    ICB->ACTLR |= (1U << 16U);
    __DSB();
    __ISB();
 #endif
#endif

#if __FPU_USED

    /* Enable the FPU only when it is used.
     * Code taken from Section 7.1, Cortex-M4 TRM (DDI0439C) */

    /* Set bits 20-23 (CP10 and CP11) to enable FPU. */
    SCB->CPACR = (uint32_t) CP_MASK;
#endif

#if BSP_TZ_SECURE_BUILD

    /* Seal the main stack for secure projects. Reference:
     * https://developer.arm.com/documentation/100720/0300
     * https://developer.arm.com/support/arm-security-updates/armv8-m-stack-sealing */
    uint32_t * p_main_stack_top = (uint32_t *) __Vectors[0];
    *p_main_stack_top = BSP_TZ_STACK_SEAL_VALUE;
#endif

#if !BSP_TZ_NONSECURE_BUILD

    /* VTOR is in undefined state out of RESET:
     * https://developer.arm.com/documentation/100235/0004/the-cortex-m33-peripherals/system-control-block/system-control-block-registers-summary?lang=en.
     * Set the Secure/Non-Secure VTOR to the vector table address based on the build. This is skipped for non-secure
     * projects because SCB_NS->VTOR is set by the secure project before the non-secure project runs. */
    SCB->VTOR = (uint32_t) &__Vectors;
#endif

#if !BSP_TZ_CFG_SKIP_INIT && !BSP_CFG_SKIP_INIT
 #if BSP_FEATURE_BSP_VBATT_HAS_VBTCR1_BPWSWSTP

    /* Unlock VBTCR1 register. */
    R_SYSTEM->PRCR = (uint16_t) BSP_PRV_PRCR_PRC1_UNLOCK;

    /* The VBTCR1.BPWSWSTP must be set after reset on MCUs that have VBTCR1.BPWSWSTP. Reference section 11.2.1
     * "VBATT Control Register 1 (VBTCR1)" and Figure 11.2 "Setting flow of the VBTCR1.BPWSWSTP bit" in the RA4M1 manual
     * R01UM0007EU0110. This must be done before bsp_clock_init because LOCOCR, LOCOUTCR, SOSCCR, and SOMCR cannot
     * be accessed until VBTSR.VBTRVLD is set. */
    R_SYSTEM->VBTCR1 = 1U;
    FSP_HARDWARE_REGISTER_WAIT(R_SYSTEM->VBTSR_b.VBTRVLD, 1U);

    /* Lock VBTCR1 register. */
    R_SYSTEM->PRCR = (uint16_t) BSP_PRV_PRCR_LOCK;
 #endif
#endif

#if BSP_FEATURE_TFU_SUPPORTED
    R_BSP_MODULE_START(FSP_IP_TFU, 0U);
#endif

#if BSP_FEATURE_MACL_SUPPORTED
 #if __has_include("arm_math_types.h")
    R_BSP_MODULE_START(FSP_IP_MACL, 0U);
 #endif
#endif

#if BSP_CFG_EARLY_INIT

    /* Initialize uninitialized BSP variables early for use in R_BSP_WarmStart. */
    bsp_init_uninitialized_vars();
#endif

    /* Call pre clock initialization hook. */
    R_BSP_WarmStart(BSP_WARM_START_RESET);

#if BSP_TZ_CFG_SKIP_INIT || BSP_CFG_SKIP_INIT

    /* Initialize clock variables to be used with R_BSP_SoftwareDelay. */
    bsp_clock_freq_var_init();

 #if BSP_CFG_SKIP_INIT && (defined(R_CACHE) || BSP_FEATURE_BSP_FLASH_CACHE)

    /* Flush cache before enabling */
    R_CACHE->CCAFCT_b.FC = 1;

    /* Enable cache */
    R_BSP_FlashCacheEnable();
 #endif
#else

    /* Configure system clocks. */
    bsp_clock_init();

 #if BSP_FEATURE_BSP_RESET_TRNG

    /* To prevent an undesired current draw, this MCU requires a reset
     * of the TRNG circuit after the clocks are initialized */

    bsp_reset_trng_circuit();
 #endif
#endif

    /* Call post clock initialization hook. */
    R_BSP_WarmStart(BSP_WARM_START_POST_CLOCK);

#if BSP_FEATURE_BSP_HAS_SP_MON

    /* Disable MSP monitoring  */
    R_MPU_SPMON->SP[0].CTL = 0;

    /* Setup NMI interrupt  */
    R_MPU_SPMON->SP[0].OAD = BSP_STACK_POINTER_MONITOR_NMI_ON_DETECTION;

    /* Setup start address  */
    R_MPU_SPMON->SP[0].SA = BSP_PRV_STACK_LIMIT;

    /* Setup end address  */
    R_MPU_SPMON->SP[0].EA = BSP_PRV_STACK_TOP;

    /* Set SPEEN bit to enable NMI on stack monitor exception. NMIER bits cannot be cleared after reset, so no need
     * to read-modify-write. */
    R_ICU->NMIER = R_ICU_NMIER_SPEEN_Msk;

    /* Enable MSP monitoring  */
    R_MPU_SPMON->SP[0].CTL = 1U;
#endif

#if BSP_FEATURE_TZ_HAS_TRUSTZONE
    __set_MSPLIM(BSP_PRV_STACK_LIMIT);
#endif

#if BSP_CFG_C_RUNTIME_INIT

    /* Initialize C runtime environment. */
    /* Zero out BSS */
 #if defined(__ARMCC_VERSION)
    memset((uint8_t *) &Image$$BSS$$ZI$$Base, 0U, (uint32_t) &Image$$BSS$$ZI$$Length);
 #elif defined(__GNUC__)
    memset(&__bss_start__, 0U, ((uint32_t) &__bss_end__ - (uint32_t) &__bss_start__));
 #elif defined(__ICCARM__)
    memset((uint32_t *) __section_begin(".bss"), 0U, (uint32_t) __section_size(".bss"));
 #endif

    /* Copy initialized RAM data from ROM to RAM. */
 #if defined(__ARMCC_VERSION)
    memcpy((uint8_t *) &Image$$DATA$$Base, (uint8_t *) &Load$$DATA$$Base, (uint32_t) &Image$$DATA$$Length);
 #elif defined(__GNUC__)
    memcpy(&__data_start__, &__etext, ((uint32_t) &__data_end__ - (uint32_t) &__data_start__));
 #elif defined(__ICCARM__)
    memcpy((uint32_t *) __section_begin(".data"), (uint32_t *) __section_begin(".data_init"),
           (uint32_t) __section_size(".data"));

    /* Copy functions to be executed from RAM. */
  #pragma section=".code_in_ram"
  #pragma section=".code_in_ram_init"
    memcpy((uint32_t *) __section_begin(".code_in_ram"),
           (uint32_t *) __section_begin(".code_in_ram_init"),
           (uint32_t) __section_size(".code_in_ram"));

    /* Copy main thread TLS to RAM. */
  #pragma section="__DLIB_PERTHREAD_init"
  #pragma section="__DLIB_PERTHREAD"
    memcpy((uint32_t *) __section_begin("__DLIB_PERTHREAD"), (uint32_t *) __section_begin("__DLIB_PERTHREAD_init"),
           (uint32_t) __section_size("__DLIB_PERTHREAD_init"));
 #endif

    /* Initialize TCM memory. */
 #if BSP_FEATURE_BSP_HAS_ITCM
    bsp_init_itcm();
 #endif
 #if BSP_FEATURE_BSP_HAS_DTCM
    bsp_init_dtcm();
 #endif

 #if defined(RENESAS_CORTEX_M85)

    /* Invalidate I-Cache after initializing the .code_in_ram section. */
    SCB_InvalidateICache();
 #endif

 #if defined(__GNUC__) && defined(__llvm__) && !defined(__CLANG_TIDY__) && !(defined __ARMCC_VERSION)

    /* Initialize TLS memory. */
    _init_tls(&__tls_base);
    _set_tls(&__tls_base);
 #endif

    /* Initialize static constructors */
 #if defined(__ARMCC_VERSION)
  #if defined(__ARMCC_USING_STANDARDLIB)
    __rt_lib_init((uint32_t) &Image$$ARM_LIB_HEAP$$ZI$$Base,
                  (uint32_t) &Image$$ARM_LIB_HEAP$$ZI$$Base + (uint32_t) &Image$$ARM_LIB_HEAP$$ZI$$Length);
  #else
    int32_t count = Image$$INIT_ARRAY$$Limit - Image$$INIT_ARRAY$$Base;
    for (int32_t i = 0; i < count; i++)
    {
        void (* p_init_func)(void) =
            (void (*)(void))((uint32_t) &Image$$INIT_ARRAY$$Base + (uint32_t) Image$$INIT_ARRAY$$Base[i]);
        p_init_func();
    }
  #endif
 #elif defined(__GNUC__)
    int32_t count = __init_array_end - __init_array_start;
    for (int32_t i = 0; i < count; i++)
    {
        __init_array_start[i]();
    }

 #elif defined(__ICCARM__)
    void const * pibase = __section_begin("SHT$$PREINIT_ARRAY");
    void const * ilimit = __section_end("SHT$$INIT_ARRAY");
    __call_ctors(pibase, ilimit);
 #endif
#endif                                 /* BSP_CFG_C_RUNTIME_INIT */

    /* Initialize SystemCoreClock variable. */
    SystemCoreClockUpdate();

#if BSP_FEATURE_RTC_IS_AVAILABLE || BSP_FEATURE_RTC_HAS_TCEN || BSP_FEATURE_SYSC_HAS_VBTICTLR

    /* For TZ project, it should be called by the secure application, whether RTC module is to be configured as secure or not. */
 #if !BSP_TZ_NONSECURE_BUILD && !BSP_CFG_BOOT_IMAGE && !BSP_CFG_SKIP_INIT

    /* Perform RTC reset sequence to avoid unintended operation. */
    R_BSP_Init_RTC();
 #endif
#endif

#if !BSP_CFG_PFS_PROTECT && defined(R_PMISC) && !BSP_CFG_SKIP_INIT
 #if BSP_TZ_SECURE_BUILD || (BSP_FEATURE_TZ_VERSION == 2 && FSP_PRIV_TZ_USE_SECURE_REGS)
    R_PMISC->PWPRS = 0;                              /* /< Clear BOWI bit - writing to PFSWE bit enabled */
    R_PMISC->PWPRS = 1U << BSP_IO_PWPR_PFSWE_OFFSET; /* /< Set PFSWE bit - writing to PFS register enabled */
 #else
    R_PMISC->PWPR = 0;                               /* /< Clear BOWI bit - writing to PFSWE bit enabled */
    R_PMISC->PWPR = 1U << BSP_IO_PWPR_PFSWE_OFFSET;  /* /< Set PFSWE bit - writing to PFS register enabled */
 #endif
#endif

#if FSP_PRIV_TZ_USE_SECURE_REGS && !BSP_CFG_SKIP_INIT

    /* Ensure that the PMSAR registers are set to their default value. */
    R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_SAR);

    for (uint32_t i = 0; i < BSP_FEATURE_BSP_NUM_PMSAR; i++)
    {
 #if BSP_FEATURE_TZ_VERSION == 2
        R_PMISC->PMSAR[i].PMSAR = 0U;
 #else
        R_PMISC->PMSAR[i].PMSAR = UINT16_MAX;
 #endif
    }
    R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_SAR);
#endif

#if BSP_TZ_SECURE_BUILD

    /* Initialize security features. */
    R_BSP_SecurityInit();
#else
 #if FSP_PRIV_TZ_USE_SECURE_REGS

    /* Initialize peripherals to secure mode for flat projects */
    R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_SAR);
    R_PSCU->PSARB = 0;
    R_PSCU->PSARC = 0;
    R_PSCU->PSARD = 0;
    R_PSCU->PSARE = 0;
    R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_SAR);
 #endif
#endif

#if BSP_CFG_DCACHE_ENABLED
    bsp_init_mpu();

    SCB_EnableDCache();
#endif

#if BSP_FEATURE_BSP_HAS_GRAPHICS_DOMAIN && !BSP_CFG_SKIP_INIT
    if ((((0 == R_SYSTEM->PGCSAR) && FSP_PRIV_TZ_USE_SECURE_REGS) ||
         ((1 == R_SYSTEM->PGCSAR) && BSP_TZ_NONSECURE_BUILD)) && (0 != R_SYSTEM->PDCTRGD))
    {
        /* Turn on graphics power domain.
         * This requires MOCO to be enabled, but MOCO is always enabled after bsp_clock_init(). */
        R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_OM_LPC_BATT);
        FSP_HARDWARE_REGISTER_WAIT((R_SYSTEM->PDCTRGD & (R_SYSTEM_PDCTRGD_PDCSF_Msk | R_SYSTEM_PDCTRGD_PDPGSF_Msk)),
                                   R_SYSTEM_PDCTRGD_PDPGSF_Msk);
        R_SYSTEM->PDCTRGD = 0;
        FSP_HARDWARE_REGISTER_WAIT((R_SYSTEM->PDCTRGD & (R_SYSTEM_PDCTRGD_PDCSF_Msk | R_SYSTEM_PDCTRGD_PDPGSF_Msk)), 0);
        R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_OM_LPC_BATT);
    }
#endif

#if BSP_FEATURE_CGC_HAS_EXTRACLK2 && !BSP_CFG_SKIP_INIT
    bsp_internal_prv_enable_extra_power_domain();
#endif

    /* Call Post C runtime initialization hook. */
    R_BSP_WarmStart(BSP_WARM_START_POST_C);

    /* Initialize ELC events that will be used to trigger NVIC interrupts. */
    bsp_irq_cfg();

    /* Call any BSP specific code. No arguments are needed so NULL is sent. */
    bsp_init(NULL);
}

/*******************************************************************************************************************//**
 * This function is called at various points during the startup process.
 * This function is declared as a weak symbol higher up in this file because it is meant to be overridden by a user
 * implemented version. One of the main uses for this function is to call functional safety code during the startup
 * process. To use this function just copy this function into your own code and modify it to meet your needs.
 *
 * @param[in]  event    Where the code currently is in the start up process
 **********************************************************************************************************************/
void R_BSP_WarmStart (bsp_warm_start_event_t event)
{
    if (BSP_WARM_START_RESET == event)
    {
        /* C runtime environment has not been setup so you cannot use globals. System clocks are not setup. */
    }

    if (BSP_WARM_START_POST_CLOCK == event)
    {
        /* C runtime environment has not been setup so you cannot use globals. Clocks have been initialized. */
    }
    else if (BSP_WARM_START_POST_C == event)
    {
        /* C runtime environment, system clocks, and pins are all setup. */
    }
    else
    {
        /* Do nothing */
    }
}

/*******************************************************************************************************************//**
 * Disable TRNG circuit to prevent unnecessary current draw which may otherwise occur when the Crypto module
 * is not in use.
 **********************************************************************************************************************/
#if BSP_FEATURE_BSP_RESET_TRNG
static void bsp_reset_trng_circuit (void)
{
    volatile uint8_t read_port = 0U;
    FSP_PARAMETER_NOT_USED(read_port); /* / Prevent compiler 'unused' warning */

    /* Release register protection for low power modes (per RA2A1 User's Manual (R01UH0888EJ0100) Figure 11.13 "Example
     * of initial setting flow for an unused circuit") */
    R_BSP_RegisterProtectDisable(BSP_REG_PROTECT_OM_LPC_BATT);

    /* Enable TRNG function (disable stop function) */
 #if BSP_FEATURE_BSP_HAS_SCE_ON_RA2
    R_BSP_MODULE_START(FSP_IP_TRNG, 0); /* /< TRNG Module Stop needs to be started/stopped for RA2 series. */
 #elif BSP_FEATURE_BSP_HAS_SCE5
    R_BSP_MODULE_START(FSP_IP_SCE, 0);  /* /< TRNG Module Stop needs to be started/stopped for RA4 series. */
 #else
  #error "BSP_FEATURE_BSP_RESET_TRNG is defined but not handled."
 #endif

    /* Wait for at least 3 PCLKB cycles */
    read_port = R_PFS->PORT[0].PIN[0].PmnPFS_b.PODR;
    read_port = R_PFS->PORT[0].PIN[0].PmnPFS_b.PODR;
    read_port = R_PFS->PORT[0].PIN[0].PmnPFS_b.PODR;

    /* Disable TRNG function */
 #if BSP_FEATURE_BSP_HAS_SCE_ON_RA2
    R_BSP_MODULE_STOP(FSP_IP_TRNG, 0); /* /< TRNG Module Stop needs to be started/stopped for RA2 series. */
 #elif BSP_FEATURE_BSP_HAS_SCE5
    R_BSP_MODULE_STOP(FSP_IP_SCE, 0);  /* /< TRNG Module Stop needs to be started/stopped for RA4 series. */
 #else
  #error "BSP_FEATURE_BSP_RESET_TRNG is defined but not handled."
 #endif

    /* Reapply register protection for low power modes (per RA2A1 User's Manual (R01UH0888EJ0100) Figure 11.13 "Example
     * of initial setting flow for an unused circuit") */
    R_BSP_RegisterProtectEnable(BSP_REG_PROTECT_OM_LPC_BATT);
}

#endif

#if BSP_CFG_EARLY_INIT

/*******************************************************************************************************************//**
 * Initialize BSP variables not handled by C runtime startup.
 **********************************************************************************************************************/
static void bsp_init_uninitialized_vars (void)
{
    g_protect_pfswe_counter = 0;

    extern volatile uint16_t g_protect_counters[];
    for (uint32_t i = 0; i < 4; i++)
    {
        g_protect_counters[i] = 0;
    }

    extern bsp_grp_irq_cb_t g_bsp_group_irq_sources[];
    for (uint32_t i = 0; i < 16; i++)
    {
        g_bsp_group_irq_sources[i] = 0;
    }

 #if BSP_CFG_EARLY_INIT

    /* Set SystemCoreClock to MOCO */
    SystemCoreClock = BSP_MOCO_HZ;
 #endif
}

#endif

#if BSP_CFG_C_RUNTIME_INIT
 #if (BSP_FEATURE_BSP_HAS_ITCM || BSP_FEATURE_BSP_HAS_DTCM)

/*******************************************************************************************************************//**
 * 64-bit memory copy for Armv8.1-M using low overhead loop instructions.
 *
 * @param[in] destination copy destination start address, word aligned
 * @param[in] source copy source start address, word aligned
 * @param[in] count number of doublewords to copy
 **********************************************************************************************************************/
static void memcpy_64 (uint64_t * destination, const uint64_t * source, size_t count)
{
    uint64_t temp;
    __asm volatile (
        "wls lr, %[count], memcpy_64_loop_end_%=\n"
  #if (defined(__ARMCC_VERSION) || defined(__GNUC__))

        /* Align the branch target to a 64-bit boundary, a CM85 specific optimization. */
        /* IAR does not support alignment control within inline assembly. */
        ".balign 8\n"
  #endif
        "memcpy_64_loop_start_%=:\n"
        "ldrd %Q[temp], %R[temp], [%[source]], #+8\n"
        "strd %Q[temp], %R[temp], [%[destination]], #+8\n"
        "le lr, memcpy_64_loop_start_%=\n"
        "memcpy_64_loop_end_%=:"
        :[destination] "+&r" (destination), [source] "+&r" (source), [temp] "=r" (temp)
        :[count] "r" (count)
        : "lr", "memory"
        );

    /* Suppress IAR warning: "Error[Pe550]: variable "temp" was set but never used" */
    /* "temp" triggers this warning when it lacks an early-clobber modifier, which was removed to allow register reuse with "count". */
    (void) temp;
}

 #endif

 #if BSP_FEATURE_BSP_HAS_DTCM

/*******************************************************************************************************************//**
 * 64-bit memory set for Armv8.1-M using low overhead loop instructions.
 *
 * @param[in] destination set destination start address, word aligned
 * @param[in] value value to set
 * @param[in] count number of doublewords to set
 **********************************************************************************************************************/
static void memset_64 (uint64_t * destination, const uint64_t value, size_t count)
{
    __asm volatile (
        "wls lr, %[count], memset_64_loop_end_%=\n"
  #if (defined(__ARMCC_VERSION) || defined(__GNUC__))

        /* Align the branch target to a 64-bit boundary, a CM85 specific optimization. */
        /* IAR does not support alignment control within inline assembly. */
        ".balign 8\n"
  #endif
        "memset_64_loop_start_%=:\n"
        "strd %Q[value], %R[value], [%[destination]], #+8\n"
        "le lr, memset_64_loop_start_%=\n"
        "memset_64_loop_end_%=:"
        :[destination] "+&r" (destination)
        :[count] "r" (count), [value] "r" (value)
        : "lr", "memory"
        );
}

 #endif
#endif

#if BSP_CFG_C_RUNTIME_INIT
 #if BSP_FEATURE_BSP_HAS_ITCM

/*******************************************************************************************************************//**
 * Initialize ITCM RAM from ROM image.
 **********************************************************************************************************************/
static void bsp_init_itcm (void)
{
    uint64_t       * itcm_destination;
    const uint64_t * itcm_source;
    size_t           count;

  #if defined(__ARMCC_VERSION)
    itcm_destination = (uint64_t *) &Image$$ITCM_DATA$$Base;
    itcm_source      = (uint64_t *) &Load$$ITCM_DATA$$Base;
    count            = ((uint32_t) &Load$$ITCM_PAD$$Limit - (uint32_t) &Load$$ITCM_DATA$$Base) / sizeof(uint64_t);
  #elif defined(__GNUC__)
    itcm_destination = (uint64_t *) &__itcm_data_start;
    itcm_source      = (uint64_t *) &__itcm_data_init_start;
    count            = ((uint32_t) &__itcm_data_init_end - (uint32_t) &__itcm_data_init_start) / sizeof(uint64_t);
  #elif defined(__ICCARM__)
    itcm_destination = (uint64_t *) &ITCM_DATA$$Base;
    itcm_source      = (uint64_t *) &ITCM_DATA_INIT$$Base;
    count            = ((uint32_t) &ITCM_DATA_INIT$$Limit - (uint32_t) &ITCM_DATA_INIT$$Base) / sizeof(uint64_t);
  #endif

    memcpy_64(itcm_destination, itcm_source, count);
}

 #endif

 #if BSP_FEATURE_BSP_HAS_DTCM

/*******************************************************************************************************************//**
 * Initialize DTCM RAM from ROM image and zero initialize DTCM RAM BSS section.
 **********************************************************************************************************************/
static void bsp_init_dtcm (void)
{
    uint64_t       * dtcm_destination;
    const uint64_t * dtcm_source;
    size_t           count;
    uint64_t       * dtcm_zero_destination;
    size_t           count_zero;

  #if defined(__ARMCC_VERSION)
    dtcm_destination      = (uint64_t *) &Image$$DTCM_DATA$$Base;
    dtcm_source           = (uint64_t *) &Load$$DTCM_DATA$$Base;
    count                 = ((uint32_t) &Load$$DTCM_PAD$$Limit - (uint32_t) &Load$$DTCM_DATA$$Base) / sizeof(uint64_t);
    dtcm_zero_destination = (uint64_t *) &Image$$DTCM_BSS$$Base;
    count_zero            = ((uint32_t) &Image$$DTCM_BSS_PAD$$ZI$$Limit - (uint32_t) &Image$$DTCM_BSS$$Base) /
                            sizeof(uint64_t);
  #elif defined(__GNUC__)
    dtcm_destination      = (uint64_t *) &__dtcm_data_start;
    dtcm_source           = (uint64_t *) &__dtcm_data_init_start;
    count                 = ((uint32_t) &__dtcm_data_init_end - (uint32_t) &__dtcm_data_init_start) / sizeof(uint64_t);
    dtcm_zero_destination = (uint64_t *) &__dtcm_bss_start;
    count_zero            = ((uint32_t) &__dtcm_bss_end - (uint32_t) &__dtcm_bss_start) / sizeof(uint64_t);
  #elif defined(__ICCARM__)
    dtcm_destination      = (uint64_t *) &DTCM_DATA$$Base;
    dtcm_source           = (uint64_t *) &DTCM_DATA_INIT$$Base;
    count                 = ((uint32_t) &DTCM_DATA_INIT$$Limit - (uint32_t) &DTCM_DATA_INIT$$Base) / sizeof(uint64_t);
    dtcm_zero_destination = (uint64_t *) &DTCM_BSS$$Base;
    count_zero            = ((uint32_t) &DTCM_BSS$$Limit - (uint32_t) &DTCM_BSS$$Base) / sizeof(uint64_t);
  #endif

    memcpy_64(dtcm_destination, dtcm_source, count);
    memset_64(dtcm_zero_destination, 0, count_zero);
}

 #endif
#endif

#if BSP_CFG_DCACHE_ENABLED

/*******************************************************************************************************************//**
 * Initialize MPU for Armv8-M devices.
 **********************************************************************************************************************/
static void bsp_init_mpu (void)
{
    uint32_t nocache_start;
    uint32_t nocache_end;
 #if BSP_FEATURE_SDRAM_START_ADDRESS
    uint32_t nocache_sdram_start;
    uint32_t nocache_sdram_end;
 #endif

 #if defined(__ARMCC_VERSION)
    nocache_start       = (uint32_t) &Image$$NOCACHE$$ZI$$Base;
    nocache_end         = (uint32_t) &Image$$NOCACHE_PAD$$ZI$$Limit;
 #if BSP_FEATURE_SDRAM_START_ADDRESS
    nocache_sdram_start = (uint32_t) &Image$$NOCACHE_SDRAM$$ZI$$Base;
    nocache_sdram_end   = (uint32_t) &Image$$NOCACHE_SDRAM_PAD$$ZI$$Limit;
 #endif
 #elif defined(__GNUC__)
    nocache_start       = (uint32_t) &__nocache_start;
    nocache_end         = (uint32_t) &__nocache_end;
 #if BSP_FEATURE_SDRAM_START_ADDRESS
    nocache_sdram_start = (uint32_t) &__nocache_sdram_start;
    nocache_sdram_end   = (uint32_t) &__nocache_sdram_end;
 #endif
 #elif defined(__ICCARM__)
    nocache_start       = (uint32_t) &NOCACHE$$Base;
    nocache_end         = (uint32_t) &NOCACHE$$Limit;
 #if BSP_FEATURE_SDRAM_START_ADDRESS
    nocache_sdram_start = (uint32_t) &NOCACHE_SDRAM$$Base;
    nocache_sdram_end   = (uint32_t) &NOCACHE_SDRAM$$Limit;
 #endif
 #endif

    /* Maximum of eight attributes. */
    const uint8_t bsp_mpu_mair_attributes[] =
    {
        /* Normal, Non-cacheable */
        ARM_MPU_ATTR(ARM_MPU_ATTR_NON_CACHEABLE, ARM_MPU_ATTR_NON_CACHEABLE)
    };

    /* Maximum of eight regions. */
    /* A region start address and end address must each be aligned to 32 bytes. A region must be a minimum of 32 bytes to be valid. */
    /* A region end address is inclusive. */
    const ARM_MPU_Region_t bsp_mpu_regions[] =
    {
        /* No-Cache Section */
        {
            .RBAR = ARM_MPU_RBAR(nocache_start, ARM_MPU_SH_NON, 0U, 0U, 1U),
            .RLAR = ARM_MPU_RLAR((nocache_end - ARMV8_MPU_REGION_MIN_SIZE), 0U)
        },

 #if BSP_FEATURE_SDRAM_START_ADDRESS
        /* SDRAM No-Cache Section */
        {
            .RBAR = ARM_MPU_RBAR(nocache_sdram_start, ARM_MPU_SH_NON, 0U, 0U, 1U),
            .RLAR = ARM_MPU_RLAR((nocache_sdram_end - ARMV8_MPU_REGION_MIN_SIZE), 0U)
        }
 #endif
    };

    /* Initialize MPU_MAIR0 and MPU_MAIR1 from attributes table. */
    uint8_t num_attr = (sizeof(bsp_mpu_mair_attributes) / sizeof(bsp_mpu_mair_attributes[0]));
    for (uint8_t i = 0; i < num_attr; i++)
    {
        ARM_MPU_SetMemAttr(i, bsp_mpu_mair_attributes[i]);
    }

    /* Initialize MPU from configuration table. */
    uint8_t num_regions = (sizeof(bsp_mpu_regions) / sizeof(bsp_mpu_regions[0]));
    for (uint8_t i = 0; i < num_regions; i++)
    {
        uint32_t rbar = bsp_mpu_regions[i].RBAR;
        uint32_t rlar = bsp_mpu_regions[i].RLAR;

        /* Only configure regions of non-zero size. */
        if ((((rlar & MPU_RLAR_LIMIT_Msk) >> MPU_RLAR_LIMIT_Pos) + ARMV8_MPU_REGION_MIN_SIZE) >
            ((rbar & MPU_RBAR_BASE_Msk) >> MPU_RBAR_BASE_Pos))
        {
            ARM_MPU_SetRegion(i, rbar, rlar);
        }
    }

    /*
     * SHCSR.MEMFAULTENA is set inside ARM_MPU_Enable().
     * Leave SHPR1.PRI_4 at reset value of zero.
     * Leave MPU_CTRL.HFNMIENA at reset value of zero.
     * Provide MPU_CTRL_PRIVDEFENA_Msk to ARM_MPU_Enable() to set MPU_CTRL.PRIVDEFENA.
     */
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk);
}

#endif

/** @} (end addtogroup BSP_MCU) */

