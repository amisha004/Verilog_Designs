`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:19 09/09/2022
// Design Name:   and_block_assign_Amisha
// Module Name:   H:/Amisha/Chapter_3/and_block_test_amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_block_assign_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_block_test_amisha;
	// Inputs
	reg a_amisha;
	reg b_amisha;
	reg c_amisha;
	// Outputs
	wire y_amisha;
	// Instantiate the Unit Under Test (UUT)
	and_block_assign_Amisha uut (
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.c_amisha(c_amisha), 
		.y_amisha(y_amisha)
	);
	initial begin
		a_amisha = 0;
		b_amisha = 0;
		c_amisha = 0;
		#100;
		a_amisha = 1;
		b_amisha = 0;
		c_amisha = 1;
		#100;
		a_amisha = 1;
		b_amisha = 1;
		c_amisha = 1;
		#100;
		a_amisha = 0;
		b_amisha = 0;
		c_amisha = 1;
		#100;
		a_amisha = 0;
		b_amisha = 1;
		c_amisha = 1;
		#100;
		a_amisha = 0;
		b_amisha = 1;
		c_amisha = 0;
		#100;
		a_amisha = 1;
		b_amisha = 0;
		c_amisha = 0;
		#100;
		a_amisha = 1;
		b_amisha = 1;
		c_amisha = 0;
		#100;
	end      
endmodule

