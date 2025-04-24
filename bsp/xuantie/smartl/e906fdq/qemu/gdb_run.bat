@echo off
cd /d "D:\RT-ThreadStudio\repo\Extract\ToolChain_Support_Packages\RISC-V\XTGccElfNewlib\V3.0.1\R\bin"
riscv64-unknown-elf-gdb.exe "E:\rt-thread\bsp\xuantie\smartl\e906fdq\rtthread.elf" -ex "target remote :23333"
pause