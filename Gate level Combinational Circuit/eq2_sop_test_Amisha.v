`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:01:10 09/09/2022
// Design Name:   eq2_sop_Amisha
// Module Name:   H:/Amisha/Chapter_1/eq2_sop_test_Amisha.v
// Project Name:  Chapter_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq2_sop_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eq2_sop_test_Amisha;

	// Inputs
	reg [1:0] a_amisha;
	reg [1:0] b_amisha;

	// Outputs
	wire aeqb_amisha;

	// Instantiate the Unit Under Test (UUT)
	eq2_sop_Amisha uut (
		.a_amisha(a_amisha), 
		.b_amisha(b_amisha), 
		.aeqb_amisha(aeqb_amisha)
	);

	initial begin
		// Initialize Inputs
		a_amisha = 00;
		b_amisha = 00;

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

