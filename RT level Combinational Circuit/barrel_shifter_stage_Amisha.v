`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:37 11/10/2022 
// Design Name: 
// Module Name:    barrel_shifter_stage_Amisha 
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
module barrel_shifter_stage_Amisha(
		input [7:0] a_amisha,
		input [2:0] amt_amisha,
		output [7:0] y_amisha
    );
	 
	 wire [7:0] s0_amisha, s1_amisha;
	 
	 assign s0_amisha = amt_amisha[0] ? {a_amisha[0], a_amisha [7:1]} : a_amisha;
	 assign s1_amisha = amt_amisha[1] ? {s0_amisha[1:0], s0_amisha[7:2]} : s0_amisha;
	 assign y_amisha = amt_amisha[2] ? {s1_amisha [3:0], s1_amisha [7:4]} : s1_amisha;
endmodule
