`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:50:54 11/09/2022
// Design Name:   db_fsm_Amisha
// Module Name:   H:/Amisha/Chapter_5/db_fsm_test_Amisha.v
// Project Name:  Chapter_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: db_fsm_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module db_fsm_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg sw_amisha;
	// Outputs
	wire db_amisha;
	// Instantiate the Unit Under Test (UUT)
	db_fsm_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.sw_amisha(sw_amisha), 
		.db_amisha(db_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		sw_amisha = 0;
		#100;
		reset_amisha = 0;
		sw_amisha = 1;
		#100;
		sw_amisha = 0;
		#100;
		sw_amisha = 1;
		#100;
		sw_amisha = 0;
		#100;
		sw_amisha = 1;
		#100;
		sw_amisha = 0;
		#100;
		sw_amisha = 1;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;    
endmodule

