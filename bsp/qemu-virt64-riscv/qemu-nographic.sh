if [ ! -f "sd.bin" ]; then
dd if=/dev/zero of=sd.bin bs=1024 count=65536
mkfs.fat sd.bin
fi

/home/rv/opt-ilp32/bin/qemu-system-riscv64ilp32  -cpu rv64 -M virt -m 256M -nographic -kernel rtthread.elf