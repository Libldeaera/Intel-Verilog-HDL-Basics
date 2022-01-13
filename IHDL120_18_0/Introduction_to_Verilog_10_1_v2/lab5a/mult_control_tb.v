// ******************************************************************************
                                                                             // *
                  // Copyright (C) 2009 Altera Corporation                      *
                                                                             // *
 // ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    *
 // are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      *
                                                                             // *
 // All information provided herein is provided on an "as is" basis,            *
 // without warranty of any kind.                                               *
                                                                             // *
 // Module Name: mult_control_tb            File Name: mult_control_tb.v        *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 5a		  		   			            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module mult_control_tb();

	// Wires to connect to DUT
	reg clk, reset_a, start;
	reg [1:0] count;
	wire [2:0] state_out;
	wire [1:0] input_sel, shift_sel;
	wire done, clk_ena, sclr_n;
	integer i;
	
	// Instantiate unit under test (mult_control)
	mult_control mult_control1 (.clk(clk), .reset_a(reset_a), .count(count),
		.input_sel(input_sel), .shift_sel(shift_sel), .state_out(state_out),
		.done(done), .clk_ena(clk_ena), .sclr_n(sclr_n), .start(start));

	// Process to create clock signal
	initial begin
		clk = 0;
		forever clk = #25 ~clk;
	end

	// Set the reset control
	initial begin
		reset_a = 1'b1;
		#50 reset_a = 1'b0;
	end
	
	// Process to control counter
	initial begin
		count = 2'd0;
		#125 ;
		for (i=0; i<4; i=i+1) begin
			count = count + 1;
			#50 ;
		end
	end
	
	// Start signal control
	initial begin
		start = 1'b0;
		#50 start = 1'b1;
		#50 start = 1'b0;
	end

endmodule
