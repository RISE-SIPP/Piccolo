#!/bin/sh -xe

DESIGN=cheri_p1_arty_c000

BITFILE=bitstream/${DESIGN}.bit
#BITFILE=$DESIGN/$DESIGN.runs/impl_1/${DESIGN}_wrapper.bit

export BITFILE

echo $BITFILE

vivado -nojournal -notrace -nolog -source ./prog_arty.tcl -mode batch

rm *.jou *.log
