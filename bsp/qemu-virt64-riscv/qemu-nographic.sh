if [ ! -f "sd.bin" ]; then
dd if=/dev/zero of=sd.bin bs=1024 count=65536
mkfs.fat sd.bin
fi

/home/rv/riscv2/riscv/bin/qemu-system-riscv64 -nographic -machine virt -m 256M -kernel rtthread.elf