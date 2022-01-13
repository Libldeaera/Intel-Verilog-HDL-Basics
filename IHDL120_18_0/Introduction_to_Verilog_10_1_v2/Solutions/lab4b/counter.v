// *********************************************************************************
																				// *
                  // Copyright (C) 2009 Altera Corporation                      	*
																				// *
 // ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    	*
 // are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      	*
																				// *
 // All information provided herein is provided on an "as is" basis,            	*
 // without warranty of any kind.                                               	*
																				// *
 // Module Name: counter                        File Name: counter.v				*
																				// *
 // Module Function: This file contains the counter for multiplier control logic   *
																				// *
 // REVISION HISTORY:                                                           	*
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                    *
// *********************************************************************************

// Begin  module declaration for "counter"
module counter (
	input clk, aclr_n,			// Declare control inputs "clk" and "aclr_n"
	output reg [1:0] count_out	// Declare data output "count_out"
);

	// Create sequential process sensitive to clock and asynchronous clear
	always@(posedge clk, negedge aclr_n) begin
		// Use if-else statement to test for asynchronous control signal first;
		if (aclr_n == 1'b0)
			count_out <= 2'b0;
		else  // If asynchronous clear not asserted the count on rising clock edge
			count_out <= count_out + 1'b1;
    end // End process

endmodule // End module

