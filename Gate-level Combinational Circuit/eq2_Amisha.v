`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:35:10 09/09/2022 
// Design Name: 
// Module Name:    eq2_Amisha 
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
module eq2_Amisha(
    input [1:0] a_amisha,
    input [1:0] b_amisha,
    output aeqb_amisha
    );
	 
	 wire e0_amisha, e1_amisha;
	 
	 eq1_Amisha eq_bit0_unit_amisha (.i0_amisha(a_amisha[0]), .i1_amisha(b_amisha[0]), .eq_amisha(e0_amisha));
	 eq1_Amisha eq_bit1_unit_amisha (.eq_amisha(e1_amisha), .i0_amisha(a_amisha[1]), .i1_amisha(b_amisha[1]));
	 
	 assign aeqb_amisha = e0_amisha & e1_amisha;

endmodule
