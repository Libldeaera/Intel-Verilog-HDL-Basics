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
# File Name: mult_control_tb.do                                               *
#                                                                             *
# Function: Script file for Introduction to Verilog exercise 5a               *
#                                                                             *
# REVISION HISTORY:                                                           *
#  Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
#******************************************************************************

vlib work
vlog mult_control.v mult_control_tb.v
vsim -t ns work.mult_control_tb
view wave
add wave -radix binary /clk
add wave -radix binary /reset_a
add wave -radix binary /count
add wave -radix binary /start
add wave -radix binary /input_sel
add wave -radix binary /shift_sel
add wave -radix unsigned /state_out
add wave -radix binary /done
add wave -radix binary /clk_ena
add wave -radix binary /sclr_n
add wave /mult_control_tb/mult_control1/current_state
run 400 ns