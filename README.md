# Piccolo

Piccolo processor implementation on the Arty A7 100T FPGA Board. 

# Folder Description

bitstream: bitstream ready to be upload on the Arty A7 100T FPGA.

bootrom: `bootrom.coe` file generated for the vivado memory block IP. This was copied from the [BESSPIN-GFE repository](https://github.com/GaloisInc/BESSPIN-GFE). File generated for `NO_PCI=1 / CPU_SPEED=25000000 / #define BOOT_START 0x40400000`.

ip: Jtag and CHERI Piccolo (P1) IP cores. 

tcl: script to regenerate the block design in vivado.

xdc: arty a7 100t board and piccolo constraints.

# Tutorial

Currently, the project can be replicated by opening Vivado 2019.1 IDE and typing: `source /path/to/project/generate-project.tcl`. This will rebuild the block design. You can use vivado to regenerate the bitstream if required.



