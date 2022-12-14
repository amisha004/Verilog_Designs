`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:47:42 09/09/2022
// Design Name:   eq2_Amisha
// Module Name:   H:/Amisha/Chapter_1/eq2_test_amisha.v
// Project Name:  Chapter_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq2_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eq2_test_amisha;

	// Inputs
	reg [1:0] a_amisha;
	reg [1:0] b_amisha;

	// Outputs
	wire aeqb_amisha;

	// Instantiate the Unit Under Test (UUT)
	eq2_Amisha uut (
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.aeqb_amisha(aeqb_amisha)
	);

	initial begin
		// Initialize Inputs
		a_amisha = 0;
		b_amisha = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a_amisha = 00;
		b_amisha = 01;
		#100;
		a_amisha = 00;
		b_amisha = 10;
		#100;
		a_amisha = 01;
		b_amisha = 10;
		#100;
		a_amisha = 01;
		b_amisha = 11;
		#100;
		a_amisha = 00;
		b_amisha = 11;
		#100;
		a_amisha = 01;
		b_amisha = 00;
		#100;
		a_amisha = 01;
		b_amisha = 01;
		#100;
		a_amisha = 11;
		b_amisha = 11;
		#100;
		a_amisha = 11;
		b_amisha = 10;
		#100;		

	end
      
endmodule

