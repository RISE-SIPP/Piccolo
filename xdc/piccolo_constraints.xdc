#set_property MARK_DEBUG true [get_nets design_1_i/ssith_processor_0/inst/jtagtap/CLK_jtag_tclk_out]
#create_clock -period 40.000 -name tck_internal -waveform {0.000 20.000} [get_nets design_1_i/ssith_processor_0/inst/jtagtap/CLK_jtag_tclk_out]
#set_clock_uncertainty 2.00 [get_clocks *tck_internal*]

# This is currently used for all processors except bluespec_p3:
set_property USER_SLR_ASSIGNMENT SLR0 [get_cells piccolo_3_i/mkP1_Core_0]

#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]

# ----- JTAG TAP constraints ------

create_clock -period 40.000 -name tck -waveform {0.000 20.000} [get_pins piccolo_3_i/xilinx_jtag_0/tck]

set_clock_groups -asynchronous -group tck -group {clk_out1_piccolo_3_clk_wiz_0_0 pll_clk3_out mmcm_clkout1}
set_clock_groups -asynchronous -group tck_internal -group {clk_out1_piccolo_3_clk_wiz_0_0 ui_clk pll_clk3_out mmcm_clkout1 tck}

# ----- Bitstream Constraints -----

set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
