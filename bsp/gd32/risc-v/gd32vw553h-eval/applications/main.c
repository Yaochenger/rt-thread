/*
 * Copyright (c) 2006-2022, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-06-04     BruceOu      first implementation
 */

#include <stdio.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <board.h>
#include "gd32vw553h_eval.h"

static rt_thread_t tid1 = RT_NULL;
static rt_thread_t tid2 = RT_NULL;
static rt_thread_t tid3 = RT_NULL;

static void rv_test1_entry(void *parameter)
{
    while (1)
    {
        gd_eval_led_on(LED1);
        rt_thread_mdelay(500);
        /* turn off LEDs */
        gd_eval_led_off(LED1);;
        rt_thread_mdelay(500);
    }
}

static void rv_test2_entry(void *parameter)
{
    while (1)
    {
        gd_eval_led_on(LED2);
        rt_thread_mdelay(1000);
        /* turn off LEDs */
        gd_eval_led_off(LED2);
        rt_thread_mdelay(1000);
    }
}

static void rv_test3_entry(void *parameter)
{
    while (1)
    {
        gd_eval_led_on(LED3);
        rt_thread_mdelay(1500);
        /* turn off LEDs */
        gd_eval_led_off(LED3);
        rt_thread_mdelay(1500);
    }
}

int main(void)
{
    gd_eval_led_init(LED1);
    gd_eval_led_init(LED2);
    gd_eval_led_init(LED3);

    tid1 = rt_thread_create("test1",
                           rv_test1_entry,
                           RT_NULL,
                           512,
                           15,
                           20);
    if (tid1 != RT_NULL)
    {
        rt_thread_startup(tid1);
    }

    tid2 = rt_thread_create("test2",
                           rv_test2_entry,
                           RT_NULL,
                           512,
                           15,
                           20);
    if (tid2 != RT_NULL)
    {
        rt_thread_startup(tid2);
    }


    tid3 = rt_thread_create("test3",
                           rv_test3_entry,
                           RT_NULL,
                           512,
                           15,
                           20);
    if (tid3 != RT_NULL)
    {
        rt_thread_startup(tid3);
    }

//    while (1)
//    {
//        rt_schedule();
//    }
}
