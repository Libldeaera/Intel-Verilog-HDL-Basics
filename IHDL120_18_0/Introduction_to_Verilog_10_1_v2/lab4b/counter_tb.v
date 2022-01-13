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
 // Module Name: counter_tb                    File Name: counter_tb.v          *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 4b		  		   			            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module counter_tb();

	// Wires to connect to DUT
	reg clk, aclr_n;
	wire [1:0] count_out;
	
	// Instantiate unit under test (counter)
	counter counter1 (.clk(clk), .aclr_n(aclr_n), .count_out(count_out));

	// Process to create clock signal
	initial begin
		clk = 0;
		forever clk = #20 ~clk;
	end
	
	// Assign input values to test register behavior
	initial begin
		aclr_n = 1'b0;
		#40 aclr_n = 1'b1;
	end

endmodule