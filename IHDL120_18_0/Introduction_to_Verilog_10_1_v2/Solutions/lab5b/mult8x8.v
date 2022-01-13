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
 // Module Name: mult8x8                        File Name: mult8x8.v            *
                                                                             // *
 // Module Function: This file contains the top level module for the            *
                  // 8x8 multiplier                                             *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision for QII 9.1                 *
// ******************************************************************************

// Begin module declaration for top-level "mult8x8"
module mult8x8 (
	input start, reset_a, clk,				// Declare control inputs "clk", "start" and "reset_a"
	input [7:0] dataa, datab,				// Declare data inputs "dataa" and "datab"
	output seg_a, seg_b, seg_c, seg_d, 		// Declare seven segment display outputs
	output seg_e, seg_f, seg_g, done_flag,
	output [15:0] 	product8x8_out			// Declare multiplier output "product8x8_out"
);

	// Declare internal wires to connect blocks
	wire [3:0] aout, bout;
	wire [7:0] product;
	wire [15:0] shift_out, sum;
	wire [1:0] count, shift;
	wire [2:0] state_out;
	wire clk_ena, sclr_n;
	wire [1:0] 	sel;

	// Connect blocks per schematic
	mux4 u1 (.mux_in_a(dataa[3:0]), .mux_in_b(dataa[7:4]), .mux_sel(sel[1]), .mux_out(aout));

	mux4 u2 (.mux_in_a(datab[3:0]), .mux_in_b(datab[7:4]), .mux_sel(sel[0]), .mux_out(bout));

	mult4x4 u3 (.dataa(aout), .datab(bout), .product(product));

	shifter u4 (.inp(product), .shift_cntrl(shift), .shift_out(shift_out));

	counter u5 (.clk(clk), .aclr_n(!start), .count_out(count));

	mult_control u6 (.clk(clk), .reset_a(reset_a), .start(start), .count(count), .input_sel(sel), 
		.shift_sel(shift), .state_out(state_out), .done(done_flag), .clk_ena(clk_ena), .sclr_n(sclr_n));

	reg16 u7 (.clk(clk), .sclr_n(sclr_n), .clk_ena(clk_ena), .datain(sum), .reg_out(product8x8_out));

	adder u8 (.dataa(shift_out), .datab(product8x8_out), .sum(sum));

	seven_segment_cntrl u9 (.inp(state_out), .seg_a(seg_a), .seg_b(seg_b), .seg_c(seg_c), .
		seg_d(seg_d), .seg_e(seg_e), .seg_f(seg_f), .seg_g(seg_g));

endmodule // End module
 

