# Piccolo

Piccolo processor implementation on the Arty A7 100T FPGA Board. 

# Folder Description

bitstream: bitstream ready to be upload on the Arty A7 100T FPGA (outdated - I recommend updating it for the use of external debugger to be able to use UART and JTAG simultaneously).

bootrom: `bootrom.coe` file generated for the vivado memory block IP. This was copied from the [BESSPIN-GFE repository](https://github.com/GaloisInc/BESSPIN-GFE). File generated for `NO_PCI=1 / CPU_SPEED=25000000 / #define BOOT_START 0x40400000`.

bootmem: allows generating a .bin file to upload the program/OS in the flash memory. It includes the `main_blinky` demo from the [CHERI FreeRTOS repository](https://github.com/CTSRD-CHERI/FreeRTOS-Demos-CHERI-RISC-V). However, the OS is too big to fit the Arty A7 100T flash memory. Despite that, GDB can be used to upload the .elf to the RAM memory.

ip: Jtag and CHERI Piccolo (P1) IP cores. 

tcl: script to regenerate the block design in vivado and generate the bitstream.

xdc: arty a7 100t board and piccolo constraints.

# Tutorial

Currently, the project can be replicated by opening Vivado 2019.1 IDE and typing: `source /path/to/project/generate-project.tcl`. This will rebuild the block design and generate the bitstream.



