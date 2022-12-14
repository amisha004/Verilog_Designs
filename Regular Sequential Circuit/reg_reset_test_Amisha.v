`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:31:33 10/28/2022
// Design Name:   reg_reset_Amisha
// Module Name:   H:/Amisha/Chapter_4/reg_reset_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_reset_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_reset_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg [7:0] d_amisha;
	// Outputs
	wire [7:0] q_amisha;
	// Instantiate the Unit Under Test (UUT)
	reg_reset_Amisha uut (
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
		clk_amisha = 0;
		reset_amisha = 0;
		d_amisha = 5;
		#100;
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 5;
		#100;	
		clk_amisha = 1;
		reset_amisha = 1;
		d_amisha = 25;
		#100;	
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 30;
		#100;	
		clk_amisha = 0;
		reset_amisha = 0;
		d_amisha = 44;
		#100;
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 58;
		#100;	
		clk_amisha = 0;
		reset_amisha = 1;
		d_amisha = 61;
		#100;	
		clk_amisha = 1;
		reset_amisha = 1;
		d_amisha = 76;
		#100;	
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 82;
		#100;	
		clk_amisha = 0;
		reset_amisha = 0;
		d_amisha = 95;
		#100;	
		clk_amisha = 1;
		reset_amisha = 0;
		d_amisha = 128;
		#100;			
	end      
endmodule

