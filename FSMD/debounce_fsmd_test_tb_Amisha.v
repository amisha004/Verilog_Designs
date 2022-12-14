`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:00:30 11/14/2022
// Design Name:   debounce_fsmd_test_Amisha
// Module Name:   H:/Amisha/Chapter_6/debounce_fsmd_test_tb_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debounce_fsmd_test_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debounce_fsmd_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg [1:0] btn_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	debounce_fsmd_test_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.btn_amisha(btn_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		btn_amisha = 0;
		#200;
		reset_amisha = 0;
		btn_amisha = 2'b00;
		#200;
		btn_amisha = 2'b01;
		#200;
		btn_amisha = 2'b10;
		#200;
		btn_amisha = 2'b11;
		#200;
	end
always #100 clk_amisha = ~clk_amisha;      
endmodule

