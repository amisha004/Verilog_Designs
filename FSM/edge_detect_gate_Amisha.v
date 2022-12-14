`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:46:35 11/09/2022 
// Design Name: 
// Module Name:    edge_detect_gate_Amisha 
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
module edge_detect_gate_Amisha(
    input clk_amisha,
    input reset_amisha,
    input level_amisha,
    output tick_amisha
    );
	 
	 reg delay_reg_amisha;
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 delay_reg_amisha <= 1'b0;
	 else
	 delay_reg_amisha <= level_amisha;
	 
	 assign tick_amisha = ~delay_reg_amisha & level_amisha;
endmodule
