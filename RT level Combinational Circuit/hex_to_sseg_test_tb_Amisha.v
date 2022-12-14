`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:28 11/10/2022
// Design Name:   hex_to_sseg_test__Amisha
// Module Name:   H:/Amisha/Chapter_3/hex_to_sseg_test_tb_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hex_to_sseg_test__Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hex_to_sseg_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	hex_to_sseg_test__Amisha uut (
		.clk_amisha(clk_amisha), 
		.sw_amisha(sw_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		sw_amisha = 5;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;      
endmodule

