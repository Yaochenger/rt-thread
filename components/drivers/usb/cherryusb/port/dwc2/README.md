# Note

If you are using more than one port, all ip parameters must be the same(like fifo num, endpoint num, dma support and so on), otherwise give up using multi ports.

## Support Chip List

## STM32

**有且仅有 PB14/PB15 引脚支持 host 模式, 部分 F7/H7 可能 PA11/PA12 也支持**。

- STM32F105xc、STM32F107xc
- STM32F205xx、STM32F207xx、STM32F215xx、STM32F217xx
- STM32F401xc、STM32F401xe、STM32F405xx、STM32F407xx、STM32F411xe、STM32F412cx、STM32F412rx、STM32F412vx、STM32F412zx、STM32F413xx、STM32F415xx、STM32F417xx、STM32F423xx、STM32F423xx、STM32F429xx、STM32F437xx、STM32F439xx、STM32F446xx、STM32F469xx、STM32F479xx
- STM32F7xx
- STM32H7xx
- STM32L4xx
- STM32U5xx

## AT32

**有且仅有 AT32F405xx PB14/PB15引脚支持 host 模式**。

- AT32F402xx、AT32F405xx、AT32F415xx、AT32F423xx、AT32F425xx、AT32F435xx、AT32F437xx

## GD32

**由于无法读取 DWC2 配置信息，并且有部分寄存器是非标准的，因此暂时无法支持 GD 系列**。

- GD32F30X_CL
- GD32F405、GD32F407
- GD32F350、GD32F450

## HC32

- HC32F4A0

## Espressif

- ESP32S2、ESP32S3、ESP32P4

## Sophgo

- CV18xx

## Kendryte

- K230

## Nationstech

- N32H4X