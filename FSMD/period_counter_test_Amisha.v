`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:55:59 11/14/2022
// Design Name:   period_counter_Amisha
// Module Name:   H:/Amisha/Chapter_6/period_counter_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: period_counter_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module period_counter_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg start_amisha;
	reg si_amisha;
	// Outputs
	wire ready_amisha;
	wire done_tick_amisha;
	wire [9:0] prd_amisha;
	// Instantiate the Unit Under Test (UUT)
	period_counter_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.start_amisha(start_amisha), 
		.si_amisha(si_amisha), 
		.ready_amisha(ready_amisha), 
		.done_tick_amisha(done_tick_amisha), 
		.prd_amisha(prd_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		start_amisha = 0;
		si_amisha = 0;
		#100;
		reset_amisha = 0;
		start_amisha = 1;
		si_amisha = 0;
		#100;
		start_amisha = 1;
		si_amisha = 1;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;      
endmodule

