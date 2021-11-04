##Original constraints at Piccolo/src_SSITH_P1/xilinx_ip/src/p1.xdc
#set_property MARK_DEBUG true [get_nets jtagtap/CLK_jtag_tclk_out]
#create_clock -period 40.000 -name tck_internal -waveform {0.000 20.000} [get_nets jtagtap/CLK_jtag_tclk_out]
#set_clock_uncertainty 2.00 [get_clocks *tck_internal*]

##Original constraints at BESSPIN-GFE/xdc/vcu118-bluespec-p1.xdc
#set_clock_groups -asynchronous -group tck_internal -group {default_250mhz_clk1_clk_p mmcm_clkout0 mmcm_clkout1 tck}

# This is currently used for all processors except bluespec_p3:
set_property USER_SLR_ASSIGNMENT SLR0 [get_cells cheri_p1_i/mkP1_Core_0]

# ----- JTAG TAP constraints ------

create_clock -period 40.000 -name tck -waveform {0.000 20.000} [get_pins cheri_p1_i/xilinx_jtag_0/tck]

#set_clock_groups -asynchronous -group tck -group {clk_out1_cheri_p1_clk_wiz_0_0 pll_clk3_out}
#set_clock_groups -asynchronous -group tck_internal -group {clk_out1_cheri_p1_clk_wiz_0_0 pll_clk3_out tck}

# ----- Bitstream Constraints -----

set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
