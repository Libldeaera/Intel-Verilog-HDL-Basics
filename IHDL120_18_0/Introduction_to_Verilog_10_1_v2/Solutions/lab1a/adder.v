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
 // Module Name: adder                        File Name: adder.v                *
                                                                             // *
 // Module Function: This file implements a 16-bit adder                        *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

// Begin module and  port declaration for "adder"
module adder (
	input [15:0] dataa, datab, 	// Declare data inputs "dataa" and "datab"
	output [15:0] sum  			// Declare data output "sum"
);

	//-- Set sum equal to dataa plus datab
	assign sum = dataa + datab;

endmodule // End module


