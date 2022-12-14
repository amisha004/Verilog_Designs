`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:51:54 11/14/2022
// Design Name:   debounce_Amisha
// Module Name:   H:/Amisha/Chapter_6/debounce_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debounce_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debounce_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg sw_amisha;
	// Outputs
	wire db_level_amisha;
	wire db_tick_amisha;
	// Instantiate the Unit Under Test (UUT)
	debounce_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.sw_amisha(sw_amisha), 
		.db_level_amisha(db_level_amisha), 
		.db_tick_amisha(db_tick_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		sw_amisha = 0;
		#100;
		reset_amisha = 0;
		sw_amisha = 0;
		#100;
		sw_amisha = 1;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

