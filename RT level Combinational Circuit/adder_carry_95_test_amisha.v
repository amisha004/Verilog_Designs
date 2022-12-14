`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:17:18 09/11/2022
// Design Name:   adder_carry_95_Amisha
// Module Name:   H:/Amisha/Chapter_3/adder_carry_95_test_amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_carry_95_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_carry_95_test_amisha;
	// Inputs
	reg [3:0] a_amisha;
	reg [3:0] b_amisha;
	// Outputs
	wire [3:0] sum_amisha;
	wire cout_amisha;
	// Instantiate the Unit Under Test (UUT)
	adder_carry_95_Amisha uut (
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.sum_amisha(sum_amisha), 
		.cout_amisha(cout_amisha)
	);
	initial begin
		a_amisha = 0000;
		b_amisha = 1111;
		#200;
		a_amisha = 0100;
		b_amisha = 1100;
		#200;
		a_amisha = 1101;
		b_amisha = 0111;
		#200;
		a_amisha = 0101;
		b_amisha = 1001;
		#200;
		a_amisha = 1111;
		b_amisha = 1111;
		#200;
	end     
endmodule

