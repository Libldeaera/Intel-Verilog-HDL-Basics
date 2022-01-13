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
 // Module Name: mult4x4                        File Name: mult4x4.v            *
                                                                             // *
 // Module Function: This file implements a 4x4 multiplier                      *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

// Begin module and  port declaration for "mult4x4"
module mult4x4 (
	input [3:0] dataa, datab,  	// Declare data inputs "dataa" and "datab"
	output [7:0] product 		// Declare data output "product"
);

	// Set product equal to dataa times datab
	assign product = dataa * datab;

endmodule // End module

