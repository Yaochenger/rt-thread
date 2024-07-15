/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-02-02     lizhirui     first version
 * 2021-02-11     lizhirui     fixed gp save/store bug
 * 2021-11-18     JasonHu      add fpu registers save/restore
 * 2022/10/22     WangXiaoyao  Support kernel mode RVV;
 */

#ifndef __STACKFRAME_H__
#define __STACKFRAME_H__

#include "cpuport.h"
#include "encoding.h"
#include "ext_context.h"

#define BYTES(idx)          ((idx) * REGBYTES)
#define FRAME_OFF_SSTATUS   BYTES(2)
#define FRAME_OFF_SP        BYTES(32)
#define FRAME_OFF_GP        BYTES(3)

#ifdef __ASSEMBLY__

.macro SAVE_ALL

#ifdef ENABLE_FPU
    /* reserve float registers */
    addi sp, sp, -CTX_FPU_REG_NR * REGBYTES
#endif /* ENABLE_FPU */
#ifdef ENABLE_VECTOR
    /* reserve float registers */
    addi sp, sp, -CTX_VECTOR_REG_NR * REGBYTES
#endif /* ENABLE_VECTOR */

    /* save general registers */
    addi sp, sp, -CTX_GENERAL_REG_NR * REGBYTES
    STORE x1,   1 * REGBYTES(sp)

    csrr  x1, sstatus
    STORE x1, FRAME_OFF_SSTATUS(sp)

    csrr  x1, sepc
    STORE x1,   0 * REGBYTES(sp)

    STORE x3,   3 * REGBYTES(sp)
    STORE x4,   4 * REGBYTES(sp) /* save tp */
    STORE x5,   5 * REGBYTES(sp)
    STORE x6,   6 * REGBYTES(sp)
    STORE x7,   7 * REGBYTES(sp)
    STORE x8,   8 * REGBYTES(sp)
    STORE x9,   9 * REGBYTES(sp)
    STORE x10, 10 * REGBYTES(sp)
    STORE x11, 11 * REGBYTES(sp)
    STORE x12, 12 * REGBYTES(sp)
    STORE x13, 13 * REGBYTES(sp)
    STORE x14, 14 * REGBYTES(sp)
    STORE x15, 15 * REGBYTES(sp)
    STORE x16, 16 * REGBYTES(sp)
    STORE x17, 17 * REGBYTES(sp)
    STORE x18, 18 * REGBYTES(sp)
    STORE x19, 19 * REGBYTES(sp)
    STORE x20, 20 * REGBYTES(sp)
    STORE x21, 21 * REGBYTES(sp)
    STORE x22, 22 * REGBYTES(sp)
    STORE x23, 23 * REGBYTES(sp)
    STORE x24, 24 * REGBYTES(sp)
    STORE x25, 25 * REGBYTES(sp)
    STORE x26, 26 * REGBYTES(sp)
    STORE x27, 27 * REGBYTES(sp)
    STORE x28, 28 * REGBYTES(sp)
    STORE x29, 29 * REGBYTES(sp)
    STORE x30, 30 * REGBYTES(sp)
    STORE x31, 31 * REGBYTES(sp)
    csrr t0, sscratch
    STORE t0, 32 * REGBYTES(sp)

#ifdef ENABLE_FPU
    /* backup sp and adjust sp to save float registers */
    mv t1, sp
    addi t1, t1, CTX_GENERAL_REG_NR * REGBYTES

    li  t0, SSTATUS_FS
    csrs sstatus, t0
    fsw f0,  FPU_CTX_F0_OFF(t1)
    fsw f1,  FPU_CTX_F1_OFF(t1)
    fsw f2,  FPU_CTX_F2_OFF(t1)
    fsw f3,  FPU_CTX_F3_OFF(t1)
    fsw f4,  FPU_CTX_F4_OFF(t1)
    fsw f5,  FPU_CTX_F5_OFF(t1)
    fsw f6,  FPU_CTX_F6_OFF(t1)
    fsw f7,  FPU_CTX_F7_OFF(t1)
    fsw f8,  FPU_CTX_F8_OFF(t1)
    fsw f9,  FPU_CTX_F9_OFF(t1)
    fsw f10, FPU_CTX_F10_OFF(t1)
    fsw f11, FPU_CTX_F11_OFF(t1)
    fsw f12, FPU_CTX_F12_OFF(t1)
    fsw f13, FPU_CTX_F13_OFF(t1)
    fsw f14, FPU_CTX_F14_OFF(t1)
    fsw f15, FPU_CTX_F15_OFF(t1)
    fsw f16, FPU_CTX_F16_OFF(t1)
    fsw f17, FPU_CTX_F17_OFF(t1)
    fsw f18, FPU_CTX_F18_OFF(t1)
    fsw f19, FPU_CTX_F19_OFF(t1)
    fsw f20, FPU_CTX_F20_OFF(t1)
    fsw f21, FPU_CTX_F21_OFF(t1)
    fsw f22, FPU_CTX_F22_OFF(t1)
    fsw f23, FPU_CTX_F23_OFF(t1)
    fsw f24, FPU_CTX_F24_OFF(t1)
    fsw f25, FPU_CTX_F25_OFF(t1)
    fsw f26, FPU_CTX_F26_OFF(t1)
    fsw f27, FPU_CTX_F27_OFF(t1)
    fsw f28, FPU_CTX_F28_OFF(t1)
    fsw f29, FPU_CTX_F29_OFF(t1)
    fsw f30, FPU_CTX_F30_OFF(t1)
    fsw f31, FPU_CTX_F31_OFF(t1)

    /* clr FS domain */
    csrc sstatus, t0

    /* clean status would clr sr_sd; */
    li t0, SSTATUS_FS_CLEAN
    csrs sstatus, t0

#endif /* ENABLE_FPU */

#ifdef ENABLE_VECTOR
    csrr    t0, sstatus
    andi    t0, t0, SSTATUS_VS
    beqz    t0, 0f

    /* push vector frame */
    addi t1, sp, (CTX_GENERAL_REG_NR + CTX_FPU_REG_NR) * REGBYTES

    SAVE_VECTOR t1
0:
#endif /* ENABLE_VECTOR */
.endm

/**
 * @brief Restore All General Registers, for interrupt handling
 *
 */
.macro RESTORE_ALL

#ifdef ENABLE_VECTOR
    // skip on close
    ld      t0, 2 * REGBYTES(sp)
    // cannot use vector on initial
    andi    t0, t0, SSTATUS_VS_CLEAN
    beqz    t0, 0f

    /* push vector frame */
    addi t1, sp, (CTX_GENERAL_REG_NR + CTX_FPU_REG_NR) * REGBYTES

    RESTORE_VECTOR t1
0:
#endif /* ENABLE_VECTOR */

#ifdef ENABLE_FPU
    /* restore float register  */
    addi t2, sp, CTX_GENERAL_REG_NR * REGBYTES

    li  t0, SSTATUS_FS
    csrs sstatus, t0
    flw f0,  FPU_CTX_F0_OFF(t2)
    flw f1,  FPU_CTX_F1_OFF(t2)
    flw f2,  FPU_CTX_F2_OFF(t2)
    flw f3,  FPU_CTX_F3_OFF(t2)
    flw f4,  FPU_CTX_F4_OFF(t2)
    flw f5,  FPU_CTX_F5_OFF(t2)
    flw f6,  FPU_CTX_F6_OFF(t2)
    flw f7,  FPU_CTX_F7_OFF(t2)
    flw f8,  FPU_CTX_F8_OFF(t2)
    flw f9,  FPU_CTX_F9_OFF(t2)
    flw f10, FPU_CTX_F10_OFF(t2)
    flw f11, FPU_CTX_F11_OFF(t2)
    flw f12, FPU_CTX_F12_OFF(t2)
    flw f13, FPU_CTX_F13_OFF(t2)
    flw f14, FPU_CTX_F14_OFF(t2)
    flw f15, FPU_CTX_F15_OFF(t2)
    flw f16, FPU_CTX_F16_OFF(t2)
    flw f17, FPU_CTX_F17_OFF(t2)
    flw f18, FPU_CTX_F18_OFF(t2)
    flw f19, FPU_CTX_F19_OFF(t2)
    flw f20, FPU_CTX_F20_OFF(t2)
    flw f21, FPU_CTX_F21_OFF(t2)
    flw f22, FPU_CTX_F22_OFF(t2)
    flw f23, FPU_CTX_F23_OFF(t2)
    flw f24, FPU_CTX_F24_OFF(t2)
    flw f25, FPU_CTX_F25_OFF(t2)
    flw f26, FPU_CTX_F26_OFF(t2)
    flw f27, FPU_CTX_F27_OFF(t2)
    flw f28, FPU_CTX_F28_OFF(t2)
    flw f29, FPU_CTX_F29_OFF(t2)
    flw f30, FPU_CTX_F30_OFF(t2)
    flw f31, FPU_CTX_F31_OFF(t2)

    /* clr FS domain */
    csrc sstatus, t0

    /* clean status would clr sr_sd; */
    li t0, SSTATUS_FS_CLEAN
    csrs sstatus, t0

#endif /* ENABLE_FPU */

    /* restore general register */
    addi t0, sp, CTX_REG_NR * REGBYTES
    csrw sscratch, t0

    /* resw ra to sepc */
    LOAD x1, 0 * REGBYTES(sp)
    csrw sepc, x1

    LOAD x1,   2 * REGBYTES(sp)
    csrw sstatus, x1

    LOAD x1,   1 * REGBYTES(sp)

    LOAD x3,   3 * REGBYTES(sp)
    LOAD x4,   4 * REGBYTES(sp) /* restore tp */
    LOAD x5,   5 * REGBYTES(sp)
    LOAD x6,   6 * REGBYTES(sp)
    LOAD x7,   7 * REGBYTES(sp)
    LOAD x8,   8 * REGBYTES(sp)
    LOAD x9,   9 * REGBYTES(sp)
    LOAD x10, 10 * REGBYTES(sp)
    LOAD x11, 11 * REGBYTES(sp)
    LOAD x12, 12 * REGBYTES(sp)
    LOAD x13, 13 * REGBYTES(sp)
    LOAD x14, 14 * REGBYTES(sp)
    LOAD x15, 15 * REGBYTES(sp)
    LOAD x16, 16 * REGBYTES(sp)
    LOAD x17, 17 * REGBYTES(sp)
    LOAD x18, 18 * REGBYTES(sp)
    LOAD x19, 19 * REGBYTES(sp)
    LOAD x20, 20 * REGBYTES(sp)
    LOAD x21, 21 * REGBYTES(sp)
    LOAD x22, 22 * REGBYTES(sp)
    LOAD x23, 23 * REGBYTES(sp)
    LOAD x24, 24 * REGBYTES(sp)
    LOAD x25, 25 * REGBYTES(sp)
    LOAD x26, 26 * REGBYTES(sp)
    LOAD x27, 27 * REGBYTES(sp)
    LOAD x28, 28 * REGBYTES(sp)
    LOAD x29, 29 * REGBYTES(sp)
    LOAD x30, 30 * REGBYTES(sp)
    LOAD x31, 31 * REGBYTES(sp)

    /* restore user sp */
    LOAD sp, 32 * REGBYTES(sp)
.endm

.macro RESTORE_SYS_GP
    .option push
    .option norelax
        la gp, __global_pointer$
    .option pop
.endm

.macro OPEN_INTERRUPT
    csrsi sstatus, 2
.endm

.macro CLOSE_INTERRUPT
    csrci sstatus, 2
.endm

#endif /* __ASSEMBLY__ */

#endif /* __STACKFRAME_H__ */
