`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:54 09/09/2022
// Design Name:   decoder_2_4_case_Amisha
// Module Name:   H:/Amisha/Chapter_3/decoder_2_4_case_test_amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder_2_4_case_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_2_4_case_test_amisha;
	// Inputs
	reg [1:0] a_amisha;
	reg en_amisha;
	// Outputs
	wire [3:0] y_amisha;
	// Instantiate the Unit Under Test (UUT)
	decoder_2_4_case_Amisha uut (
		.a_amisha(a_amisha), 
		.en_amisha(en_amisha), 
		.y_amisha(y_amisha)
	);
	initial begin
		a_amisha = 0;
		en_amisha = 0;
		#100;	
		a_amisha = 00;
		en_amisha = 1;
		#100;
		a_amisha = 01;
		en_amisha = 1;
		#100;	
		a_amisha = 10;
		en_amisha = 1;
		#100;
		a_amisha = 11;
		en_amisha = 1;
		#100;
		a_amisha = 11;
		en_amisha = 0;
		#100;			
	end      
endmodule

