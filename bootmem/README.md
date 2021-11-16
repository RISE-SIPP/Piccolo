bootmem copied from [BESSPIN-GFE repository](https://github.com/GaloisInc/BESSPIN-GFE).

Given that this Piccolo project is to be implemented in the Arty A7 100T board, the following modification were made to the original file:

1. Makefile:
Include the RISC-V-Generic_main_blinky.elf as the image.
2. `linker.ld`:
`Update the ROM_BASE address based on the Arty A7 Flash Memory size. 

Note that the RISC-V-Generic_main_blinky.elf is a 32-bit FreeRTOS demo generated using the cheribuild. For more information, click [here](https://github.com/CTSRD-CHERI/FreeRTOS-Demos-CHERI-RISC-V). 

You can renegerate the .elf file with the following command:
`./cheribuild.py freertos-baremetal-riscv32 --freertos/prog main_blinky --freertos/platform gfe -d`

Also, the oficial repository is developed to use the VCU118 board. In order for the demo work on the Arty A7 100T board some modifications are necessary in the wscript (~/cheri/freertos/FreeRTOS/Demo/RISC-V-Generic). The modified script is available in this folder.
