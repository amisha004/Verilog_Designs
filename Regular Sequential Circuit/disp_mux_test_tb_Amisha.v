`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:39:54 11/11/2022
// Design Name:   disp_mux_test__Amisha
// Module Name:   H:/Amisha/Chapter_4/disp_mux_test_tb_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: disp_mux_test__Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disp_mux_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [3:0] btn_amisha;
	reg [7:0] sw_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	disp_mux_test__Amisha uut (
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
		btn_amisha = 10;
		sw_amisha = 25;
		#200;
		btn_amisha = 2;
		sw_amisha = 63;
		#200;
		btn_amisha = 8;
		sw_amisha = 2;
		#200;
		btn_amisha = 15;
		sw_amisha = 127;
		#200;
	end
always #100 clk_amisha = ~clk_amisha;      
endmodule

