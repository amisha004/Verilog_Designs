`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:38 11/01/2022 
// Design Name: 
// Module Name:    univ_shift_reg_Amisha 
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
module univ_shift_reg_Amisha
#(parameter N_amisha =8)
(
    input clk_amisha,
    input reset_amisha,
    input [1:0] ctrl_amisha,
    input [N_amisha-1 : 0] d_amisha,
    output [N_amisha-1 : 0] q_amisha
    );
	 
	 reg [N_amisha-1 : 0] r_reg_amisha, r_next_amisha;
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 r_reg_amisha <= 0;
	 else 
	 r_reg_amisha <= r_next_amisha;
	 
	 always @*
	 case (ctrl_amisha)
	 2'b00: r_next_amisha = r_reg_amisha;
	 2'b01: r_next_amisha = {r_reg_amisha[N_amisha-2 : 0], d_amisha[0]};
	 2'b10: r_next_amisha = {d_amisha[N_amisha-1], r_reg_amisha[N_amisha-1 : 1]};
	 default: r_next_amisha = d_amisha;
	 endcase
	 
	 assign q_amisha = r_reg_amisha;
endmodule
