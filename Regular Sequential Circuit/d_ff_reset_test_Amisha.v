`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:15:36 10/27/2022
// Design Name:   d_ff_reset_Amisha
// Module Name:   H:/Amisha/Chapter_4/d_ff_reset_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: d_ff_reset_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_ff_reset_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg d_amisha;
	// Outputs
	wire q_amisha;
	// Instantiate the Unit Under Test (UUT)
	d_ff_reset_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.d_amisha(d_amisha), 
		.q_amisha(q_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		d_amisha = 0;
		#100;
		clk_amisha = 1;
		reset_amisha = 1;
		d_amisha = 0;
		#100;
		clk_amisha = 1;
		reset_amisha = 1;
		d_amisha = 1;
		#100;
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 0;
		#100;
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 1;
		#100;
		clk_amisha = 0;
		reset_amisha = 0;
		d_amisha = 1;
		#100;
		clk_amisha = 0;
		reset_amisha = 0;
		d_amisha = 0;
		#100;
	end      
endmodule

