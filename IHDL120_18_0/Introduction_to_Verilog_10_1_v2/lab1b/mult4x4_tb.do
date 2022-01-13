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
# File Name: mult4x4_tb.do                                                    *
#                                                                             *
# Function: Script file for Introduction to Verilog lab 1b  	              *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog mult4x4.v mult4x4_tb.v
vsim -t ns work.mult4x4_tb
view wave
add wave -radix unsigned /dataa
add wave -radix unsigned /datab
add wave -radix unsigned /product
run 80 ns