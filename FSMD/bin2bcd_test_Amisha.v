`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:32:29 11/14/2022
// Design Name:   bin2bcd_Amisha
// Module Name:   H:/Amisha/Chapter_6/bin2bcd_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bin2bcd_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bin2bcd_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg start_amisha;
	reg [12:0] bin_amisha;
	// Outputs
	wire ready_amisha;
	wire done_tick_amisha;
	wire [3:0] bcd3_amisha;
	wire [3:0] bcd2_amisha;
	wire [3:0] bcd1_amisha;
	wire [3:0] bcd0_amisha;
	// Instantiate the Unit Under Test (UUT)
	bin2bcd_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.start_amisha(start_amisha), 
		.bin_amisha(bin_amisha), 
		.ready_amisha(ready_amisha), 
		.done_tick_amisha(done_tick_amisha), 
		.bcd3_amisha(bcd3_amisha), 
		.bcd2_amisha(bcd2_amisha), 
		.bcd1_amisha(bcd1_amisha), 
		.bcd0_amisha(bcd0_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		start_amisha = 0;
		bin_amisha = 0;
		#100;
		reset_amisha = 0;
		start_amisha = 1;
		bin_amisha = 13'b0110101110111;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

