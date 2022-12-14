`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:51 10/28/2022 
// Design Name: 
// Module Name:    d_ff_en_2seg_Amisha 
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
module d_ff_en_2seg_Amisha(
    input clk_amisha,
    input reset_amisha,
    input en_amisha,
    input d_amisha,
    output reg q_amisha
    );
	 
	 reg r_reg_amisha, r_next_amisha;
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 r_reg_amisha <= 1'b0;
	 else 
	 r_reg_amisha <= r_next_amisha;
	 
	 always @*
	 if (en_amisha)
	 r_next_amisha = d_amisha;
	 else
	 r_next_amisha = r_reg_amisha;
	 
	 always @*
	 q_amisha = r_reg_amisha;
endmodule
