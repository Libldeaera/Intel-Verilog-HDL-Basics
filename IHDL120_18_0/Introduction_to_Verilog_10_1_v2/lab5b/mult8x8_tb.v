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
 // Module Name: mult8x8_tb            File Name: mult8x8_tb.v       	        *
                                                                             // *
 // Module Function: This file contains the testbench for the Introduction      *
 // 					to Verilog lab 5b		  		   			            *
                                                                             // *
 // REVISION HISTORY:                                                           *
  // Revision 1.0    12/15/2009 - Initial Revision  for QII 9.1                 *
// ******************************************************************************

`timescale 1 ns/1 ns

module mult8x8_tb();

	// Wires to connect to DUT
	reg clk, reset_a, start;
	reg [7:0] dataa, datab;
	wire [15:0] product8x8_out;
	wire seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
	
	// Instantiate unit under test (mult_control)
	mult8x8 mult8x8_1 (.clk(clk), .reset_a(reset_a), .dataa(dataa), .datab(datab),
		.product8x8_out(product8x8_out), .done_flag(done_flag), .start(start), 
		.seg_a(seg_a), .seg_b(seg_b), .seg_c(seg_c), .seg_d(seg_d), 
		.seg_e(seg_e), .seg_f(seg_f), .seg_g(seg_g));
		
	// Process to create clock signal
	initial begin
		clk = 0;
		forever clk = #25 ~clk;
	end

	// Set the reset control
	initial begin
		reset_a = 1'b1;
		#50 reset_a = 1'b0;
	end

	// Set input values to control start signal
	initial begin
		start = 1'b1;
		#50 ;
		forever begin
			start = 1'b1;
			#50 start = 1'b0;
			@(negedge done_flag) ;
			#25 ;
		end
	end
	
	// Process to control data inputs
	initial begin
		dataa = 8'hFF;
		datab = 8'hFF;
		#50 ;
		forever begin
			@(negedge done_flag)
			#25 dataa = dataa + 24;
			datab = datab + 51;
		end
	end
	
endmodule
