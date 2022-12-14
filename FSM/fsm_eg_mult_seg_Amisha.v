`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:29 11/07/2022 
// Design Name: 
// Module Name:    fsm_eg_mult_seg_Amisha 
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
module fsm_eg_mult_seg_Amisha(
    input clk_amisha,
    input reset_amisha,
    input a_amisha,
    input b_amisha,
    output y0_amisha,
    output y1_amisha
    );
	 
	 localparam [1:0] s0_amisha = 2'b00,
	 s1_amisha = 2'b01,
	 s2_amisha = 2'b10;
	 reg [1:0] state_reg_amisha, state_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 state_reg_amisha <= s0_amisha;
	 else
	 state_reg_amisha <= state_next_amisha;
	 
	 always @*
	 case (state_reg_amisha)
	 s0_amisha: if (a_amisha)
	 if (b_amisha)
	 state_next_amisha = s2_amisha;
	 else 
	 state_next_amisha = s1_amisha;
	 else
	 state_next_amisha = s0_amisha;
	 
	 s1_amisha: if (a_amisha)
	 state_next_amisha = s0_amisha;
	 else
	 state_next_amisha = s1_amisha;
	 
	 s2_amisha: state_next_amisha = s0_amisha;
	 default: state_next_amisha = s0_amisha;
	 endcase
	 
	 assign y1_amisha = (state_reg_amisha == s0_amisha) || (state_reg_amisha == s1_amisha);
	 assign y0_amisha = (state_reg_amisha == s0_amisha) & a_amisha & b_amisha;	
endmodule
