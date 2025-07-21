/*
 * Copyright (c) 2006-2023, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-08-20     BruceOu      first implementation
 * 2023-03-05     yuanzihao    change the LED pins
 * 2025-07-11     WangShun     test GD32F527I-EVAL pin
 */

#include <stdio.h>
#include <rtthread.h>
#include <rtdevice.h>
#include <board.h>

#define PWM_DEV_NAME        "pwm4"
#define PWM_DEV_CHANNEL     1       

struct rt_device_pwm *pwm_dev;      

int main(void)
{
	rt_uint32_t period, pulse, dir;

	period = 500000;
	dir = 1;            
	pulse = 0;        

	/* ???? */
	pwm_dev = (struct rt_device_pwm *)rt_device_find(PWM_DEV_NAME);
	if (pwm_dev == RT_NULL)
	{
		rt_kprintf("pwm sample run failed! can't find %s device!\n", PWM_DEV_NAME);
		return RT_ERROR;
	}

	rt_pwm_set(pwm_dev, PWM_DEV_CHANNEL, period, pulse);
	rt_pwm_enable(pwm_dev, PWM_DEV_CHANNEL);

	while (1)
	{
		rt_thread_mdelay(50);
		if (dir)
		{
			pulse += 5000;
		}
		else
		{
			pulse -= 5000;
		}
		if (pulse >= period)
		{
			dir = 0;
		}
		if (0 == pulse)
		{
			dir = 1;
		}
		rt_pwm_set(pwm_dev, PWM_DEV_CHANNEL, period, pulse);
	}
}
