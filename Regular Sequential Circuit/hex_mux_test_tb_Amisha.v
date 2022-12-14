`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:18 11/13/2022
// Design Name:   hex_mux_test_Amisha
// Module Name:   H:/Amisha/Chapter_4/hex_mux_test_tb_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hex_mux_test_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hex_mux_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	hex_mux_test_Amisha uut (
		.clk_amisha(clk_amisha), 
		.sw_amisha(sw_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		sw_amisha = 0;
		#200;
		sw_amisha = 8'b10111010;
		#200;
		sw_amisha = 8'b10100010;
		#200;
		sw_amisha = 8'b10011010;
		#200;
		sw_amisha = 8'b11011011;
		#200;
	end
always #100 clk_amisha = ~clk_amisha;      
endmodule

