`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:27 10/27/2022 
// Design Name: 
// Module Name:    d_ff_en_1seg_Amisha 
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
module d_ff_en_1seg_Amisha(
    input clk_amisha,
    input reset_amisha,
    input en_amisha,
    input d_amisha,
    output reg q_amisha
    );
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 q_amisha <= 1'b0;
	 else if (en_amisha)
	 q_amisha <= d_amisha;
endmodule
