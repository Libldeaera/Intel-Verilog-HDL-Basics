// *********************************************************************************************
																							// *
                  // Copyright (C) 2009 Altera Corporation                     				*
																							// *
 // ALTERA, ARRIA, CYCLONE, HARDCOPY, MAX, MEGACORE, NIOS, QUARTUS & STRATIX    				*
 // are Reg. U.S. Pat. & Tm. Off. and Altera marks in and outside the U.S.      				*
																							// *
 // All information provided herein is provided on an "as is" basis,           				*
 // without warranty of any kind.                                               				*
																							// *
 // Module Name: reg16                        File Name: reg16.v		         				*
																							// *
 // Module Function: This file implements a 16-bit register with synchronous clear and enable  *
																							// *
 // REVISION HISTORY:                                                           				*
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                           		*
// *********************************************************************************************

// Begin module declaration for "reg16"
module reg16 (
	input [15:0] datain,		// Declare data input "datain"
	input clk, sclr_n, clk_ena,	// Declare control inputs "clk", "clkena" and "sclr_n"
	output reg [15:0] reg_out	// Declare data output "reg_out"
);

	// Create sequential process sensitive to clock
	always@(posedge clk) begin
		// Use nested if-else statements to add synchronous clock enable and clear controls
		if (clk_ena)
			if(!sclr_n)
				reg_out <= 16'b0 ;
			else
				reg_out <= datain;
	end // End process

endmodule // End module
