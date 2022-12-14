`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:56:44 11/10/2022
// Design Name:   sm_add_test_Amisha
// Module Name:   H:/Amisha/Chapter_3/sm_add_test_tb_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sm_add_test_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sm_add_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [1:0] btn_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	sm_add_test_Amisha uut (
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
		#100;
		btn_amisha = 0;
		sw_amisha = 8;
		#300;
		btn_amisha = 1;
		sw_amisha = 5;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;      
endmodule

