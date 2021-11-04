#!/bin/sh -xe

DESIGN=cheri_p1_arty_c000

BITFILE=bitstream/${DESIGN}.bit
#BITFILE=$DESIGN/$DESIGN.runs/impl_1/${DESIGN}_wrapper.bit
MEMFILE=bootmem/bootmem.bin

export BITFILE MEMFILE

echo $BITFILE $MEMFILE

vivado -nojournal -notrace -nolog -source ./prog_arty_flash.tcl -mode batch

rm *.jou *.log
