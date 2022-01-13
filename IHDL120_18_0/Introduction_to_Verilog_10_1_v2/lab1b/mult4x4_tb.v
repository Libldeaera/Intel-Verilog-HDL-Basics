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
 // Module Name: mult4x4_tb                    File Name: mult4x4_tb.v          *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 1b		  		   			            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module mult4x4_tb();

	// Wires to connect to DUT
	reg [3:0] dataa, datab;
	wire [7:0] product;
	
	// Instantiate unit under test (mult4x4)
	mult4x4 mult4x4_1 (.dataa(dataa), .datab(datab), .product(product));

	// Assign values to "dataa" and "datab" to test mult4x4 block
	initial begin
		dataa = 4'd0;  	// Initialize data to 0
		datab = 4'd2;	// Fix datab to 2
		forever
			#10 dataa = dataa + 3;  // Increment dataa by 3 every 10 ns
	end

endmodule