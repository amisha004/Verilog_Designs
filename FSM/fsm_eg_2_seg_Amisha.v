`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:46:16 11/07/2022 
// Design Name: 
// Module Name:    fsm_eg_2_seg_Amisha 
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
module fsm_eg_2_seg_Amisha(
    input clk_amisha,
    input reset_amisha,
    input a_amisha,
    input b_amisha,
    output reg y0_amisha,
    output reg y1_amisha
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
	 begin
	 state_next_amisha = state_reg_amisha;
	 y1_amisha = 1'b0;
	 y0_amisha = 1'b0;
	 case (state_reg_amisha)
	 s0_amisha : 
	 begin
		y1_amisha = 1'b1;
		if (a_amisha)
		if (b_amisha)
		begin
		state_next_amisha = s2_amisha;
		y0_amisha = 1'b1;
		end 
		else
		state_next_amisha = s1_amisha;
		end
		
	s1_amisha : begin
	y1_amisha = 1'b1;
	if (a_amisha)
	state_next_amisha = s0_amisha;
	end
	
	s2_amisha : state_next_amisha = s0_amisha;
	default : state_next_amisha = s0_amisha;
	endcase
	end
endmodule
