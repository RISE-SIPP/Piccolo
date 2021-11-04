#--------------------Physical Constraints-----------------

#Clock + RESET
set_property BOARD_PART_PIN clk [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
set_property PACKAGE_PIN E3 [get_ports sys_clock]
set_property BOARD_PART_PIN reset [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN C2 [get_ports reset]

create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5} [get_ports sys_clock]
set_input_jitter [get_clocks -of_objects [get_ports sys_clock]] 0.100

#QUAD_SPI_0
set_property BOARD_PART_PIN qspi_db0_i [get_ports qspi_flash_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_io0_io]
set_property PACKAGE_PIN K17 [get_ports qspi_flash_io0_io]
set_property BOARD_PART_PIN qspi_db1_i [get_ports qspi_flash_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_io1_io]
set_property PACKAGE_PIN K18 [get_ports qspi_flash_io1_io]
set_property BOARD_PART_PIN qspi_db2_i [get_ports qspi_flash_io2_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_io2_io]
set_property PACKAGE_PIN L14 [get_ports qspi_flash_io2_io]
set_property BOARD_PART_PIN qspi_db3_i [get_ports qspi_flash_io3_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_io3_io]
set_property PACKAGE_PIN M14 [get_ports qspi_flash_io3_io]
set_property BOARD_PART_PIN qspi_csn_i [get_ports qspi_flash_ss_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_ss_io]
set_property PACKAGE_PIN L13 [get_ports qspi_flash_ss_io]
set_property BOARD_PART_PIN qspi_sclk_i [get_ports qspi_flash_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports qspi_flash_sck_io]
set_property PACKAGE_PIN L16 [get_ports qspi_flash_sck_io]

#GPIO_1
set_property BOARD_PART_PIN push_buttons_4bits_tri_i_0 [get_ports {push_buttons_4bits_tri_i[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[0]}]
set_property PACKAGE_PIN D9 [get_ports {push_buttons_4bits_tri_i[0]}]

set_property BOARD_PART_PIN push_buttons_4bits_tri_i_1 [get_ports {push_buttons_4bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[1]}]
set_property PACKAGE_PIN C9 [get_ports {push_buttons_4bits_tri_i[1]}]

set_property BOARD_PART_PIN push_buttons_4bits_tri_i_2 [get_ports {push_buttons_4bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[2]}]
set_property PACKAGE_PIN B9 [get_ports {push_buttons_4bits_tri_i[2]}]

set_property BOARD_PART_PIN push_buttons_4bits_tri_i_3 [get_ports {push_buttons_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {push_buttons_4bits_tri_i[3]}]
set_property PACKAGE_PIN B8 [get_ports {push_buttons_4bits_tri_i[3]}]

set_property BOARD_PART_PIN rgb_led_tri_o_0 [get_ports {rgb_led_tri_o[0]}] #LED_0_BLUE
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[0]}]
set_property PACKAGE_PIN E1 [get_ports {rgb_led_tri_o[0]}]

set_property BOARD_PART_PIN rgb_led_tri_o_1 [get_ports {rgb_led_tri_o[1]}] #LED_0_GREEN
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[1]}]
set_property PACKAGE_PIN F6 [get_ports {rgb_led_tri_o[1]}]

set_property BOARD_PART_PIN rgb_led_tri_o_2 [get_ports {rgb_led_tri_o[2]}] #LED_0_RED
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[2]}]
set_property PACKAGE_PIN G6 [get_ports {rgb_led_tri_o[2]}]

set_property BOARD_PART_PIN rgb_led_tri_o_3 [get_ports {rgb_led_tri_o[3]}] #LED_1_BLUE
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[3]}]
set_property PACKAGE_PIN G4 [get_ports {rgb_led_tri_o[3]}]

set_property BOARD_PART_PIN rgb_led_tri_o_4 [get_ports {rgb_led_tri_o[4]}] #LED_1_GREEN
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[4]}]
set_property PACKAGE_PIN J4 [get_ports {rgb_led_tri_o[4]}]

set_property BOARD_PART_PIN rgb_led_tri_o_5 [get_ports {rgb_led_tri_o[5]}] #LED_1_RED
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[5]}]
set_property PACKAGE_PIN G3 [get_ports {rgb_led_tri_o[5]}]

set_property BOARD_PART_PIN rgb_led_tri_o_6 [get_ports {rgb_led_tri_o[6]}] #LED_2_BLUE
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[6]}]
set_property PACKAGE_PIN H4 [get_ports {rgb_led_tri_o[6]}]

set_property BOARD_PART_PIN rgb_led_tri_o_7 [get_ports {rgb_led_tri_o[7]}] #LED_2_GREEN
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[7]}]
set_property PACKAGE_PIN J2 [get_ports {rgb_led_tri_o[7]}]

set_property BOARD_PART_PIN rgb_led_tri_o_8 [get_ports {rgb_led_tri_o[8]}] #LED_2_RED
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[8]}]
set_property PACKAGE_PIN J3 [get_ports {rgb_led_tri_o[8]}]

set_property BOARD_PART_PIN rgb_led_tri_o_9 [get_ports {rgb_led_tri_o[9]}] #LED_3_BLUE
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[9]}]
set_property PACKAGE_PIN K2 [get_ports {rgb_led_tri_o[9]}]

set_property BOARD_PART_PIN rgb_led_tri_o_10 [get_ports {rgb_led_tri_o[10]}] #LED_3_GREEN
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[10]}]
set_property PACKAGE_PIN H6 [get_ports {rgb_led_tri_o[10]}]

set_property BOARD_PART_PIN rgb_led_tri_o_11 [get_ports {rgb_led_tri_o[11]}] #LED_3_RED
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_led_tri_o[11]}]
set_property PACKAGE_PIN K1 [get_ports {rgb_led_tri_o[11]}]

#UART_0

set_property BOARD_PART_PIN usb_uart_txd [get_ports usb_uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
set_property PACKAGE_PIN D10 [get_ports usb_uart_txd]
set_property BOARD_PART_PIN usb_uart_rxd [get_ports usb_uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN A9 [get_ports usb_uart_rxd]

#IIC_0

set_property BOARD_PART_PIN i2c_scl_i [get_ports i2c_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_scl_io]
set_property PACKAGE_PIN L18 [get_ports i2c_scl_io]
set_property BOARD_PART_PIN i2c_sda_i [get_ports i2c_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports i2c_sda_io]
set_property PACKAGE_PIN M18 [get_ports i2c_sda_io]

#QUAD_SPI_1
set_property BOARD_PART_PIN spi_mosi_i [get_ports spi_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_io0_io]
set_property PACKAGE_PIN H1 [get_ports spi_io0_io]
set_property BOARD_PART_PIN spi_miso_i [get_ports spi_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_io1_io]
set_property PACKAGE_PIN G1 [get_ports spi_io1_io]
set_property BOARD_PART_PIN spi_ss_i [get_ports spi_ss_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_ss_io]
set_property PACKAGE_PIN V17 [get_ports spi_ss_io]
set_property BOARD_PART_PIN spi_sclk_i [get_ports spi_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports spi_sck_io]
set_property PACKAGE_PIN F1 [get_ports spi_sck_io]