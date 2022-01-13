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
 // Module Name: shifter                        File Name: shifter.v            *
                                                                             // *
 // Module Function: This file implenments a 4- or 8-bit left shift function    *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

// Begin module declaration for "shifter"
module shifter(
	input [7:0] inp,			// Declare data input "inp"
	input [1:0] shift_cntrl,	// Declare control input "shift_cntrl"
	output reg [15:0] shift_out	// Declare data output "shift_out"
);
 
	// Create process sensitive to  all inputs
	always@(inp, shift_cntrl) begin
		// If-else statement to define shifting behavior on shift_out based on shift_cntrl
		if (shift_cntrl == 2'b01)
			shift_out = (inp << 4);
		else if (shift_cntrl == 2'b10)
			shift_out = (inp << 8);
		else
			shift_out = inp;
	end

endmodule // End module 
