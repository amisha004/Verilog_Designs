`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:21 11/09/2022 
// Design Name: 
// Module Name:    edge_detect_mealy_Amisha 
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
module edge_detect_mealy_Amisha(
    input clk_amisha,
    input reset_amisha,
    input level_amisha,
    output reg tick_amisha
    );
	 
	 localparam zero_amisha = 1'b0,
	 one_amisha = 1'b1;
	 reg state_reg_amisha, state_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 state_reg_amisha <= zero_amisha;
	 else
	 state_reg_amisha <= state_next_amisha;
	 
	 always @*
	 begin
	 state_next_amisha = state_reg_amisha;
	 tick_amisha = 1'b0;
	 case (state_reg_amisha)
	 zero_amisha :
	 if (level_amisha)
	 begin
	 tick_amisha = 1'b1;
	 state_next_amisha = one_amisha;
	 end
	 
	 one_amisha :
	 if (~level_amisha)
	 state_next_amisha = zero_amisha;
	 default : state_next_amisha = zero_amisha;
	 endcase
	 end
endmodule
