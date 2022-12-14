`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:37 09/11/2022 
// Design Name: 
// Module Name:    adder_insta_Amisha 
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
module adder_insta_Amisha(
    input [3:0] a4_amisha,
    input [3:0] b4_amisha,
    output [3:0] sum4_amisha,
    output c4_amisha,
    input [7:0] a8_amisha,
    input [7:0] b8_amisha,
    output [7:0] sum8_amisha,
    output c8_amisha
    );
	 
	 //instantiate 8-bit adder
	 adder_carry_para_Amisha #(.N(8)) unit1
	 (.a_amisha(a8_amisha), .b_amisha(b8_amisha), .sum_amisha(sum8_amisha), .cout_amisha(c8_amisha));
	 
	 //instantiate 4-bit adder
	 adder_carry_para_Amisha unit2
	 (.a_amisha(a4_amisha), .b_amisha(b4_amisha), .sum_amisha(sum4_amisha), .cout_amisha(c4_amisha));
endmodule
