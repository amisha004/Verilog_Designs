`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:30:13 11/01/2022
// Design Name:   disp_mux_Amisha
// Module Name:   H:/Amisha/Chapter_4/disp_mux_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: disp_mux_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disp_mux_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg [7:0] in3_amisha;
	reg [7:0] in2_amisha;
	reg [7:0] in1_amisha;
	reg [7:0] in0_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	disp_mux_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.in3_amisha(in3_amisha), 
		.in2_amisha(in2_amisha), 
		.in1_amisha(in1_amisha), 
		.in0_amisha(in0_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		in3_amisha = 0;
		in2_amisha = 0;
		in1_amisha = 0;
		in0_amisha = 0;
		#50;
		reset_amisha = 0;
		in3_amisha = 8'b10110010;
		in2_amisha = 0;
		in1_amisha = 0;
		in0_amisha = 8'b10110010;
		#50;
		reset_amisha = 1;
		in3_amisha = 8'b10110011;
		in2_amisha = 0;
		in1_amisha = 0;
		in0_amisha = 8'b10110011;
		#50;
		reset_amisha = 0;
		in3_amisha = 0;
		in2_amisha = 0;
		in1_amisha = 1;
		in0_amisha = 0;
		#50;
	end
always #25clk_amisha = ~clk_amisha;      
endmodule

