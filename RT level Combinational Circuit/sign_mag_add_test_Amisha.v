`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:32:36 10/26/2022
// Design Name:   sign_mag_add_Amisha
// Module Name:   H:/Amisha/Chapter_3/sign_mag_add_test_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_mag_add_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_mag_add_test_Amisha;
	// Inputs
	reg [3:0] a_amisha;
	reg [3:0] b_amisha;
	// Outputs
	wire [3:0] sum_amisha;
	// Instantiate the Unit Under Test (UUT)
	sign_mag_add_Amisha uut (
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.sum_amisha(sum_amisha)
	);
	initial begin
		a_amisha = 000;
		b_amisha = 000;
		#200;

		a_amisha = 001;
		b_amisha = 000;
		#200;		
		a_amisha = 010;
		b_amisha = 001;
		#200;
		a_amisha = 011;
		b_amisha = 011;
		#200;
		a_amisha = 101;
		b_amisha = 100;
		#200;
	end      
endmodule

