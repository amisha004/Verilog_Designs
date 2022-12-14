`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:42 09/09/2022
// Design Name:   eq1_primitive_Amisha
// Module Name:   H:/Amisha/Chapter_1/eq1_primitive_test_amisha.v
// Project Name:  Chapter_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eq1_primitive_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eq1_primitive_test_amisha;
	// Inputs
	reg i0_amisha;
	reg i1_amisha;
	// Outputs
	wire eq_amisha;
	// Instantiate the Unit Under Test (UUT)
	eq1_primitive_Amisha uut (
		.i0_amisha(i0_amisha), 
		.i1_amisha(i1_amisha), 
		.eq_amisha(eq_amisha)
	);
	initial begin
		// Initialize Inputs
		i0_amisha = 0;
		i1_amisha = 0;
		// Wait 100 ns for global reset to finish
		#100;
		i0_amisha = 1;
		i1_amisha = 0;
		#100;
		i0_amisha = 0;
		i1_amisha = 1;
		#100;
		i0_amisha = 1;
		i1_amisha = 1;
		#100;       
	end      
endmodule

