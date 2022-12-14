`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:26 11/10/2022
// Design Name:   fp_adder_test__Amisha
// Module Name:   H:/Amisha/Chapter_3/fp_adder_test_tb_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fp_adder_test__Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fp_adder_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [1:0] btn_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	fp_adder_test__Amisha uut (
		.clk_amisha(clk_amisha), 
		.btn_amisha(btn_amisha), 
		.sw_amisha(sw_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		btn_amisha = 0;
		sw_amisha = 0;
		#200;
		btn_amisha = 1;
		sw_amisha = 10;
		#200;
		btn_amisha = 2;
		sw_amisha = 25;
		#200;
		btn_amisha = 3;
		sw_amisha = 1;
		#200;
	end
always #100 clk_amisha = ~clk_amisha;     
endmodule

