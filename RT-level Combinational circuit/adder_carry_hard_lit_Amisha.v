`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:54:42 09/09/2022 
// Design Name: 
// Module Name:    adder_carry_hard_lit_Amisha 
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
module adder_carry_hard_lit_Amisha(
    input [3:0] a_amisha,
    input [3:0] b_amisha,
    output [3:0] sum_amisha,
    output cout_amisha
    );
	 
	 wire [4:0] sum_ext_amisha;
	 assign sum_ext_amisha = {1'b0, a_amisha} + {1'b0, b_amisha};
	 assign sum_amisha = sum_ext_amisha [3:0];
	 assign cout_amisha = sum_ext_amisha[4];
endmodule
