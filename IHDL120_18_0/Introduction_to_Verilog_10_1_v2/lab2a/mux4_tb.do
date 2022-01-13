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
# File Name: mux4_tb.do        										          *
#                                                                             *
# Function: Script file for Introduction to Verilog lab 2a                    *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog mux4.v mux4_tb.v
vsim -t ns work.mux4_tb
view wave
add wave -radix binary /mux_sel
add wave -radix unsigned /mux_in_a
add wave -radix unsigned /mux_in_b
add wave -radix unsigned /mux_out
run 850 ns