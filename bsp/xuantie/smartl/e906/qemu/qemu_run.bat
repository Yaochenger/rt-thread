@echo off
cd /d "E:\XuanTie Core\6.QEMU"
qemu-system-riscv32.exe -machine smartl -kernel "E:\rt-thread\bsp\xuantie\smartl\e906fdq\rtthread.elf" -nographic -gdb tcp::23333 -S
pause