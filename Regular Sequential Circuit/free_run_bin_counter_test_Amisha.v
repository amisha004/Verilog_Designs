`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:07:29 11/01/2022
// Design Name:   free_run_bin_counter_Amisha
// Module Name:   H:/Amisha/Chapter_4/free_run_bin_counter_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: free_run_bin_counter_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module free_run_bin_counter_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	// Outputs
	wire max_tick_amisha;
	wire [7:0] q_amisha;
	// Instantiate the Unit Under Test (UUT)
	free_run_bin_counter_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.max_tick_amisha(max_tick_amisha), 
		.q_amisha(q_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		#100;
		reset_amisha = 0;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;	
endmodule

