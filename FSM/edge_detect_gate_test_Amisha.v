`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:34 11/09/2022
// Design Name:   edge_detect_gate_Amisha
// Module Name:   H:/Amisha/Chapter_5/edge_detect_gate_test_Amisha.v
// Project Name:  Chapter_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: edge_detect_gate_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module edge_detect_gate_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg level_amisha;
	// Outputs
	wire tick_amisha;
	// Instantiate the Unit Under Test (UUT)
	edge_detect_gate_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.level_amisha(level_amisha), 
		.tick_amisha(tick_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		level_amisha = 0;
		#100;
		reset_amisha = 0;
		level_amisha = 0;
		#100;
		level_amisha = 1;
		#100;
		level_amisha = 0;
		#100;
		level_amisha = 1;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

