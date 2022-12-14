`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:52:44 11/10/2022
// Design Name:   shifter_test_Amisha
// Module Name:   H:/Amisha/Chapter_3/shifter_test_tb_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shifter_test_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifter_test_tb_Amisha;
	// Inputs
	reg [2:0] btn_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [7:0] led_amisha;
	// Instantiate the Unit Under Test (UUT)
	shifter_test_Amisha uut (
		.btn_amisha(btn_amisha), 
		.sw_amisha(sw_amisha), 
		.led_amisha(led_amisha)
	);
	initial begin
		btn_amisha = 3;
		sw_amisha = 5;
		#200;
		btn_amisha = 2;
		sw_amisha = 26;
		#200;
		btn_amisha = 0;
		sw_amisha = 37;
		#200;
		btn_amisha = 1;
		sw_amisha = 12;
		#200;
	end     
endmodule

