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
# File Name: counter_tb.do                                                    *
#                                                                             *
# Function: Script file for Introduction to Verilog exercise 4b               *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog counter.v counter_tb.v
vsim -t ns work.counter_tb
view wave
add wave -radix binary /clk
add wave -radix binary /aclr_n
add wave -radix binary /count_out
run 400 ns