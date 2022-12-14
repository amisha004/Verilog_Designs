`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:23 09/10/2022 
// Design Name: 
// Module Name:    adder_carry_para_Amisha 
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
module adder_carry_para_Amisha
#(parameter N=4)
	(
    input [N-1:0] a_amisha,
    input [N-1:0] b_amisha,
    output [N-1:0] sum_amisha,
    output cout_amisha
    );
	 
	 localparam N1 = N-1;
	 wire [N:0] sum_ext_amisha;
	 
	 assign sum_ext_amisha = {1'b0, a_amisha} + {1'b0, b_amisha};
	 assign sum_amisha = sum_ext_amisha[N1 : 0];
	 assign cout_amisha = sum_ext_amisha[N];
endmodule
