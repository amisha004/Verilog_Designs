`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:04 10/28/2022
// Design Name:   free_run_shift_reg_Amisha
// Module Name:   H:/Amisha/Chapter_4/free_run_shift_reg_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: free_run_shift_reg_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module free_run_shift_reg_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg s_in_amisha;
	// Outputs
	wire s_out_amisha;
	// Instantiate the Unit Under Test (UUT)
	free_run_shift_reg_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.s_in_amisha(s_in_amisha), 
		.s_out_amisha(s_out_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		s_in_amisha = 1;
		#50;
		clk_amisha = 1;
		reset_amisha = 0;
		s_in_amisha = 1;
		#50;
		s_in_amisha = 0;
		#50;
		s_in_amisha = 1;
		#50;
		s_in_amisha = 1;
		#50;
		s_in_amisha = 0;
		#50;
		s_in_amisha = 1;
		#50;
		s_in_amisha = 0;
		#50;
		s_in_amisha = 0;
		#50;
	end
always #25 clk_amisha = ~clk_amisha;   
endmodule

