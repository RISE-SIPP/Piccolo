
CROSS_COMPILE?=riscv64-unknown-elf-

CP=cp
MKDIR=mkdir

CC=$(CROSS_COMPILE)gcc
OBJCOPY=$(CROSS_COMPILE)objcopy

PROG ?= RISC-V-Generic_main_blinky.elf

export CROSS_COMPILE

default: bootmem.bin

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@

bootmem.elf: bootmem.S linker.ld RISC-V-Generic_main_blinky.bin
	$(CC) -g -march=rv32ima -mabi=ilp32 -Tlinker.ld $< -nostdlib -static -Wl,--no-gc-sections -o $@

clean:
	@rm -f bootmem bootmem.bin bootmem.elf RISC-V-Generic_main_blinky.bin
	@rm -rf build-bbl
	
.PHONY: default
