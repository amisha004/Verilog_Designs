`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:46:52 09/08/2022 
// Design Name: 
// Module Name:    eq2_sop_Amisha 
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
module eq2_sop_Amisha(
    input [1:0] a_amisha,
    input [1:0] b_amisha,
    output aeqb_amisha
    );
	 
	 wire p0_amisha, p1_amisha, p2_amisha, p3_amisha;
	 
	 assign aeqb_amisha = p0_amisha | p1_amisha | p2_amisha | p3_amisha;
	 
	 assign p0_amisha = (~a_amisha[1] & ~b_amisha[1]) & (~a_amisha[0] & ~b_amisha[0]);
	 assign p1_amisha = (~a_amisha[1] & ~b_amisha[1]) & (a_amisha[0] & b_amisha[0]);
	 assign p2_amisha = (a_amisha[1] & b_amisha[1]) & (~a_amisha[0] & b_amisha[0]);
	 assign p3_amisha = (a_amisha[1] & b_amisha[1]) & (a_amisha[0] & b_amisha[0]);
	 
endmodule
