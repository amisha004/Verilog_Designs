`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:11:36 09/11/2022
// Design Name:   adder_insta_Amisha
// Module Name:   H:/Amisha/Chapter_3/adder_insta_test_amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder_insta_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_insta_test_amisha;
	// Inputs
	reg [3:0] a4_amisha;
	reg [3:0] b4_amisha;
	reg [7:0] a8_amisha;
	reg [7:0] b8_amisha;
	// Outputs
	wire [3:0] sum4_amisha;
	wire c4_amisha;
	wire [7:0] sum8_amisha;
	wire c8_amisha;
	// Instantiate the Unit Under Test (UUT)
	adder_insta_Amisha uut (
		.a4_amisha(a4_amisha), 
		.b4_amisha(b4_amisha), 
		.sum4_amisha(sum4_amisha), 
		.c4_amisha(c4_amisha), 
		.a8_amisha(a8_amisha), 
		.b8_amisha(b8_amisha), 
		.sum8_amisha(sum8_amisha), 
		.c8_amisha(c8_amisha)
	);
	initial begin
		// Initialize Inputs
		a4_amisha = 0000;
		b4_amisha = 0111;
		a8_amisha = 10110011;
		b8_amisha = 00000000;
		#200;
		a4_amisha = 0100;
		b4_amisha = 1100;
		a8_amisha = 01001100;
		b8_amisha = 10100100;
		#200;
		a4_amisha = 1101;
		b4_amisha = 0111;
		a8_amisha = 10111000;
		b8_amisha = 00101011;
		#200;
		a4_amisha = 0101;
		b4_amisha = 1001;
		a8_amisha = 11000011;
		b8_amisha = 11000011;
		#200;
		a4_amisha = 1111;
		b4_amisha = 1111;
		a8_amisha = 11110000;
		b8_amisha = 00001111;
		#100;
	end
      
endmodule

