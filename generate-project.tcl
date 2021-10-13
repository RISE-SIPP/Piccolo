#

# this is where to create the project. change to other folder if needed
set PROJ piccolo_3

set FPGA cheri_piccolo_32bit
#[file dirname [file normalize [info script]]]

create_project $PROJ $FPGA/$PROJ -part xc7a100tcsg324-1
set_property board_part digilentinc.com:arty-a7-100:part0:1.0 [current_project]

add_files -fileset constrs_1 -norecurse $FPGA/../xdc/arty100_constraints.xdc
add_files -fileset constrs_1 -norecurse $FPGA/../xdc/piccolo_constraints.xdc

add_files -norecurse [glob -directory "$FPGA/../ip/Piccolo/src_SSITH_P1/xilinx_ip/hdl" *.v]
add_files -norecurse [glob -directory "$FPGA/../ip/Piccolo/src_SSITH_P1/Verilog_RTL" *.v]
add_files -norecurse $FPGA/../ip/jtag/xilinx_jtag.v

source $FPGA/../tcl/soc_bd.tcl

make_wrapper -files [get_files $FPGA/$PROJ/$PROJ.srcs/sources_1/bd/$PROJ/$PROJ.bd] -top
add_files -norecurse $FPGA/$PROJ/$PROJ.srcs/sources_1/bd/$PROJ/hdl/${PROJ}_wrapper.v
update_compile_order -fileset sources_1
set_property top ${PROJ}_wrapper [current_fileset]

update_compile_order -fileset sources_1

set_property top ${PROJ}_wrapper [get_filesets sim_1] 
set_property top_lib xil_defaultlib [get_filesets sim_1]

generate_target all [get_files $FPGA/$PROJ/$PROJ.srcs/sources_1/bd/$PROJ/$PROJ.bd]
