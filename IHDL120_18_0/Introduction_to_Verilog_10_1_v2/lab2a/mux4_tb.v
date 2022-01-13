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
 // Module Name: mux4_tb                    File Name: mux4_tb.v                *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 2a		  		   			            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module mux4_tb();

	// Wires to connect to DUT
	reg [3:0] mux_in_a, mux_in_b;
	reg mux_sel;
	wire [3:0] mux_out;
	
	// Instantiate unit under test (mux4)
	mux4 mux4_1 (.mux_in_a(mux_in_a), .mux_in_b(mux_in_b), .mux_sel(mux_sel),
		.mux_out(mux_out));

	// Initialize data inputs to mux4 block
	initial begin
		mux_in_a = 4'd9;  	// Initialize data to 0
		mux_in_b = 4'd7;	// Fix datab to 2
	end
	
	// Flip mux_sel between '0' and '1' every 50 ns
	initial begin
		mux_sel = 1'b1;
		forever
			#50 mux_sel = (mux_sel ? 1'b0 : 1'b1);
	end

endmodule