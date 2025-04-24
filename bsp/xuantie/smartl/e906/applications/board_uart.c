 /*
 * Copyright (C) 2017-2024 Alibaba Group Holding Limited
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdlib.h>
#include <stdio.h>
#include <board.h>

#include <drv/uart.h>

#include <rtthread.h>
#include <rtdevice.h>

csi_uart_t g_console_handle;;

void board_uart_init(void)
{
    /* init the console */
    csi_uart_init(&g_console_handle, CONSOLE_UART_IDX);

    /* config the UART */
    csi_uart_baud(&g_console_handle, CONFIG_CLI_USART_BAUD);
    csi_uart_format(&g_console_handle, UART_DATA_BITS_8, UART_PARITY_NONE, UART_STOP_BITS_1);
}

void rt_hw_console_output(const char *str)
{
    while (*str != '\0') 
    {
        if (*str == '\n') 
        {
            csi_uart_putc(&g_console_handle, '\r');
        }
        csi_uart_putc(&g_console_handle, *str);
        str++;
    }
}

char rt_hw_console_getchar(void)
{
    uint8_t ch = csi_uart_getc(&g_console_handle);
    return (char)ch;
}
