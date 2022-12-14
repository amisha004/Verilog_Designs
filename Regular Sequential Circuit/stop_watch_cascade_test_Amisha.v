`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:49:59 11/13/2022
// Design Name:   stop_watch_cascade_Amisha
// Module Name:   H:/Amisha/Chapter_4/stop_watch_cascade_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stop_watch_cascade_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stop_watch_cascade_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg go_amisha;
	reg clr_amisha;
	// Outputs
	wire [3:0] d2_amisha;
	wire [3:0] d1_amisha;
	wire [3:0] d0_amisha;
	// Instantiate the Unit Under Test (UUT)
	stop_watch_cascade_Amisha uut (
		.clk_amisha(clk_amisha), 
		.go_amisha(go_amisha), 
		.clr_amisha(clr_amisha), 
		.d2_amisha(d2_amisha), 
		.d1_amisha(d1_amisha), 
		.d0_amisha(d0_amisha)
	);
	initial begin
		clk_amisha = 0;
		go_amisha = 0;
		clr_amisha = 0;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;  
always #100 go_amisha = ~go_amisha; 
always #150 clr_amisha = ~clr_amisha;    
endmodule

