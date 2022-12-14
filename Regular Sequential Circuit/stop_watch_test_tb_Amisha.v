`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:30 11/13/2022
// Design Name:   stop_watch_test_Amisha
// Module Name:   H:/Amisha/Chapter_4/stop_watch_test_tb_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stop_watch_test_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stop_watch_test_tb_Amisha;
	// Inputs
	reg clk_amisha;
	reg [1:0] btn_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	stop_watch_test_Amisha uut (
		.clk_amisha(clk_amisha), 
		.btn_amisha(btn_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
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

