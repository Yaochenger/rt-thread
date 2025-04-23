/*
 * Copyright (c) 2006-2025, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2025-04-21     Wangshun     first version
 */

#include <rtthread.h>
#include <rtdevice.h>

int main(void)
{
    while (1)
    {
        // rt_kprintf("Hello RT-Thread!\n");
        rt_thread_mdelay(500);
    }
}

int usr_main(void)
{
    while (1)
    {
        
    }
}
