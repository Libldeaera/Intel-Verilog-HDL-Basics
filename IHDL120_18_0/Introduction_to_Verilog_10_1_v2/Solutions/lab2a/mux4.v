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
 // Module Name: mux4                        File Name: mux4.v                  *
                                                                             // *
 // Module Function: This file implements a 2-input mux                         *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

// Begin module declaration for "mux4"
module mux4(
	input [3:0] mux_in_a, mux_in_b, // Declare data input "mux_in_a" and "mux_in_b"
	input mux_sel,  				//  Declare control input (select line)
	output reg [3:0] mux_out  		// Declare data output "mux_out"
);
 
	// Create process sensitive to  all inputs
	always@(mux_in_a, mux_in_b, mux_sel) begin
		if (mux_sel == 1'b0)
			mux_out = mux_in_a;
		else
			mux_out = mux_in_b;
    end


endmodule // End module
