`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:42 10/28/2022 
// Design Name: 
// Module Name:    reg_reset_Amisha 
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
module reg_reset_Amisha(
    input clk_amisha,
    input reset_amisha,
    input [7:0] d_amisha,
    output reg [7:0] q_amisha
    );
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 q_amisha <= 0;
	 else
	 q_amisha <= d_amisha;
endmodule
