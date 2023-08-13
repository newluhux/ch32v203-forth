CROSS_COMPILE ?= riscv64-unknown-elf-
CC = $(CROSS_COMPILE)gcc
AS = $(CROSS_COMPILE)gcc
OD = $(CROSS_COMPILE)objdump
OC = $(CROSS_COMPILE)objcopy

ASFLAGS += -march=rv32i -mabi=ilp32 -g
LDFLAGS += -nostartfiles

boot.bin:
	$(AS) $(ASFLAGS) $(LDFLAGS) boot.s -o boot.elf
	$(OD) -S boot.elf > boot.asm
	$(OC) -O binary boot.elf boot.bin

clean:
	rm -f *.o *.asm *.elf *.bin *.out
