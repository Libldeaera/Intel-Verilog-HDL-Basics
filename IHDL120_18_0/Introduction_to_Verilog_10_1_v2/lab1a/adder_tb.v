// ************'******************************************************************
                                                                             // *
                  // Copyright (C) 2009 Altera Corporation                      *
                                                                             // *
 // ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    *
 // are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      *
                                                                             // *
 // All information provided herein is provided on an "as is" basis,            *
 // without warranty of any kind.                                               *
                                                                             // *
 // Module Name: adder_tb                      File Name: adder_tb.v            *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 1a  		  					            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module adder_tb();

	// Wires and variables to connect to DUT
	reg [15:0] dataa, datab;
	wire [15:0] sum;
	
	// Instantiate unit under test (adder)
	adder adder1 (.dataa(dataa), .datab(datab), .sum(sum));

	// Assign values to "dataa" and "datab" to test adder block
	initial begin
		dataa = 16'd8;
		datab = 16'd5;
		#20 dataa = 16'd0;
		datab = 16'd1;
		#10 dataa = 16'd10;
		datab = 16'd5;
	end

endmodule
