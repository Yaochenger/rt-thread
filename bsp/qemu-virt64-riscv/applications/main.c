/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 */

#include <rtthread.h>
#include <rthw.h>
#include <stdio.h>
#include <string.h>

static rt_thread_t tid;
void thread_user(void);
int main(void)
{
    tid = rt_thread_create("usr", thread_user, RT_NULL,
                           2048*10, 11, 20);
    if (tid != RT_NULL)
    {
        rt_thread_startup(tid);
    }

    while (1)
    {
        rt_thread_delay(5);
    }   
}

void thread_user(void)
{
    while (1)
    {
        rt_thread_delay(5);
    }
}