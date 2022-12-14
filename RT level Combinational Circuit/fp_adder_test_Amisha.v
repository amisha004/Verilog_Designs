`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:06:16 11/10/2022
// Design Name:   fp_adder_Amisha
// Module Name:   H:/Amisha/Chapter_3/fp_adder_test_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp_adder_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fp_adder_test_Amisha;
	// Inputs
	reg sign1_amisha;
	reg sign2_amisha;
	reg [3:0] exp1_amisha;
	reg [3:0] exp2_amisha;
	reg [7:0] frac1_amisha;
	reg [7:0] frac2_amisha;
	// Outputs
	wire sign_out_amisha;
	wire [3:0] exp_out_amisha;
	wire [7:0] frac_out_amisha;
	// Instantiate the Unit Under Test (UUT)
	fp_adder_Amisha uut (
		.sign1_amisha(sign1_amisha), 
		.sign2_amisha(sign2_amisha), 
		.exp1_amisha(exp1_amisha), 
		.exp2_amisha(exp2_amisha), 
		.frac1_amisha(frac1_amisha), 
		.frac2_amisha(frac2_amisha), 
		.sign_out_amisha(sign_out_amisha), 
		.exp_out_amisha(exp_out_amisha), 
		.frac_out_amisha(frac_out_amisha)
	);
	initial begin
		sign1_amisha = 0;
		sign2_amisha = 0;
		exp1_amisha = 0;
		exp2_amisha = 0;
		frac1_amisha = 0;
		frac2_amisha = 0;
		#200;
		sign1_amisha = 0;
		sign2_amisha = 1;
		exp1_amisha = 12;
		exp2_amisha = 8;
		frac1_amisha = 52;
		frac2_amisha = 25;
		#200;
		sign1_amisha = 1;
		sign2_amisha = 0;
		exp1_amisha = 12;
		exp2_amisha = 8;
		frac1_amisha = 52;
		frac2_amisha = 25;
		#200;
		sign1_amisha = 0;
		sign2_amisha = 0;
		exp1_amisha = 5;
		exp2_amisha = 3;
		frac1_amisha = 12;
		frac2_amisha = 32;
		#200;
		sign1_amisha = 1;
		sign2_amisha = 0;
		exp1_amisha = 5;
		exp2_amisha = 3;
		frac1_amisha = 12;
		frac2_amisha = 32;
		#200;
	end      
endmodule

