/*
 * Copyright (c) 2006-2025, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-04-23     Wangshun     first version
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <board.h>
#include <string.h>
#include <unistd.h>
#include <rthw.h>
#include <rtthread.h>

extern unsigned long __heap_start;
extern unsigned long __heap_end;

/**
 * This function will initial your board.
 */
void rt_hw_board_init()
{
    /* initalize interrupt */
    rt_hw_interrupt_init();

    #ifdef RT_USING_HEAP
        /* initialize memory system */
        rt_system_heap_init((void *)&__heap_start, (void *)&__heap_end);
    #endif

    board_uart_init();
  
    #ifdef RT_USING_COMPONENTS_INIT
        rt_components_board_init();
    #endif   
}
