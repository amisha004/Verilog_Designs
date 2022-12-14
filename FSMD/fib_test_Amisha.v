`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:11 11/09/2022
// Design Name:   fib_Amisha
// Module Name:   H:/Amisha/Chapter_6/fib_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fib_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fib_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg start_amisha;
	reg [4:0] i_amisha;
	// Outputs
	wire ready_amisha;
	wire done_tick_amisha;
	wire [19:0] f_amisha;
	// Instantiate the Unit Under Test (UUT)
	fib_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.start_amisha(start_amisha), 
		.i_amisha(i_amisha), 
		.ready_amisha(ready_amisha), 
		.done_tick_amisha(done_tick_amisha), 
		.f_amisha(f_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		start_amisha = 0;
		i_amisha = 0;
		#100;
		reset_amisha = 0;
		start_amisha = 1;
		i_amisha = 8;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;
endmodule

