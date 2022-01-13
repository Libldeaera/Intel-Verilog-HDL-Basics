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
# File Name: shifter_tb.do        				 						      *
#                                                                             *
# Function: Script file for Introduction to Verilog lab 2b                    *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog shifter.v shifter_tb.v
vsim -t ns work.shifter_tb
view wave
add wave -radix binary /shift_cntrl
add wave -radix hex /inp
add wave -radix hex /shift_out
run 600 ns