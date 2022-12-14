`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:17:21 11/07/2022
// Design Name:   fsm_eg_mult_seg_Amisha
// Module Name:   H:/Amisha/Chapter_5/fsm_eg_mult_seg_test_Amisha.v
// Project Name:  Chapter_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm_eg_mult_seg_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_eg_mult_seg_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg a_amisha;
	reg b_amisha;
	// Outputs
	wire y0_amisha;
	wire y1_amisha;
	// Instantiate the Unit Under Test (UUT)
	fsm_eg_mult_seg_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.y0_amisha(y0_amisha), 
		.y1_amisha(y1_amisha)
	);
	initial begin
		clk_amisha = 1;
		reset_amisha = 1;
		a_amisha = 0;
		b_amisha = 0;
		#100;
		reset_amisha = 0;
		a_amisha = 0;
		b_amisha = 0;
		#100;
		a_amisha = 1;
		b_amisha = 0;
		#100;
		a_amisha = 1;
		b_amisha = 1;
		#100;
		a_amisha = 0;
		b_amisha = 1;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

