`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:31 10/27/2022 
// Design Name: 
// Module Name:    d_ff_Amisha 
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
module d_ff_Amisha(
    input clk_amisha,
    input d_amisha,
    output reg q_amisha
    );
	 
	 always @(posedge clk_amisha)
	 q_amisha <= d_amisha;
endmodule
