Each bitstream has the following IPs: Boot ROM, JTAG BSCAN (from BESSPIN-GFE), P1 Core, IIC 0, QUAD SPI0, QUAD SPI 1, UART 0, GPIO 0 (reset/0x6FFF0000), GPIO 1 (push button + RGB leds), DDR3.

Note that two bitstream are available: `*_c000` uses cached DDR3, while `*_c000` uses unchanced DDR3. 
