`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:15 11/11/2022
// Design Name:   disp_hex_mux_Amisha
// Module Name:   H:/Amisha/Chapter_4/disp_hex_mux_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: disp_hex_mux_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module disp_hex_mux_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg [3:0] hex3_amisha;
	reg [3:0] hex2_amisha;
	reg [3:0] hex1_amisha;
	reg [3:0] hex0_amisha;
	reg [3:0] dp_in_amisha;
	// Outputs
	wire [3:0] an_amisha;
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	disp_hex_mux_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.hex3_amisha(hex3_amisha), 
		.hex2_amisha(hex2_amisha), 
		.hex1_amisha(hex1_amisha), 
		.hex0_amisha(hex0_amisha), 
		.dp_in_amisha(dp_in_amisha), 
		.an_amisha(an_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		hex3_amisha = 0;
		hex2_amisha = 0;
		hex1_amisha = 0;
		hex0_amisha = 0;
		dp_in_amisha = 0;
		#200;
		reset_amisha = 0;
		hex3_amisha = 12;
		hex2_amisha = 2;
		hex1_amisha = 8;
		hex0_amisha = 3;
		dp_in_amisha = 2;
		#200;
		hex3_amisha = 5;
		hex2_amisha = 10;
		hex1_amisha = 1;
		hex0_amisha = 0;
		dp_in_amisha = 1;
		#200;
		hex3_amisha = 9;
		hex2_amisha = 2;
		hex1_amisha = 15;
		hex0_amisha = 12;
		dp_in_amisha = 5;
		#200;
		hex3_amisha = 2;
		hex2_amisha = 0;
		hex1_amisha = 1;
		hex0_amisha = 2;
		dp_in_amisha = 0;
		#100;
	end
always #100 clk_amisha = ~clk_amisha;      
endmodule

