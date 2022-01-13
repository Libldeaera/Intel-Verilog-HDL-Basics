#******************************************************************************
#                                                                             *
#                  Copyright (C) 2009 Altera Corporation                      *
#                                                                             *
# ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    *
# are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      *
#                                                                             *
# All information provided herein is provided on an "as is" basis,            *
# without warranty of any kind.                                               *
#                                                                             *
# File Name: reg16_tb.do                                                      *
#                                                                             *
# Function: Script file for Introduction to Verilog exercise 4a               *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog reg16.v reg16_tb.v
vsim -t ns work.reg16_tb
view wave
add wave -radix binary /clk
add wave -radix binary /sclr_n
add wave -radix binary /clk_ena
add wave -radix hex /datain
add wave -radix hex /reg_out
run 250 ns