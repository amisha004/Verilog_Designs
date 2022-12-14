`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:02 11/13/2022 
// Design Name: 
// Module Name:    hex_mux_test_Amisha 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hex_mux_test_Amisha(
    input clk_amisha,
    input [7:0] sw_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );
	 
	 wire [3:0] a_amisha, b_amisha;
	 wire [7:0] sum_amisha;
	 
	 disp_hex_mux_Amisha disp_unit_amisha (.clk_amisha(clk_amisha), 
	 .reset_amisha(1'b0), .hex3_amisha(sum_amisha[7:4]), .hex2_amisha(sum_amisha[3:0]), 
	 .hex1_amisha(b_amisha), .hex0_amisha(a_amisha), .dp_in_amisha(4'b1011),
	 .an_amisha(an_amisha), .sseg_amisha(sseg_amisha));
	 
	 assign a_amisha = sw_amisha[3:0];
	 assign b_amisha = sw_amisha[7:4];
	 assign sum_amisha = {4'b0, a_amisha} + {4'b0, b_amisha};
endmodule
