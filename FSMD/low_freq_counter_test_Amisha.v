`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:10:14 11/15/2022
// Design Name:   low_freq_counter_Amisha
// Module Name:   H:/Amisha/Chapter_6/low_freq_counter_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: low_freq_counter_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module low_freq_counter_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg start_amisha;
	reg si_amisha;
	// Outputs
	wire [3:0] bcd3_amisha;
	wire [3:0] bcd2_amisha;
	wire [3:0] bcd1_amisha;
	wire [3:0] bcd0_amisha;
	// Instantiate the Unit Under Test (UUT)
	low_freq_counter_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.start_amisha(start_amisha), 
		.si_amisha(si_amisha), 
		.bcd3_amisha(bcd3_amisha), 
		.bcd2_amisha(bcd2_amisha), 
		.bcd1_amisha(bcd1_amisha), 
		.bcd0_amisha(bcd0_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		start_amisha = 0;
		si_amisha = 0;
		#50;
		reset_amisha = 0;
		start_amisha = 1;
		si_amisha = 0;
		#50;
		start_amisha = 1;
		si_amisha = 1;
		#50;
		start_amisha = 1;
		si_amisha = 0;
		#50;
		start_amisha = 1;
		si_amisha = 1;
		#50;
	end
always #25 clk_amisha = ~clk_amisha;           
endmodule

