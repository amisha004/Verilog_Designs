`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:15 09/09/2022 
// Design Name: 
// Module Name:    eq1_always_Amisha 
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
module eq1_always_Amisha(
    input wire i0_amisha,
    input wire i1_amisha,
    output reg eq_amisha
    );
	 
	 reg p0_amisha, p1_amisha;
	 
	 always @(i0_amisha, i1_amisha)
	 begin
	 p0_amisha = ~i0_amisha & ~i1_amisha;
	 p1_amisha = i0_amisha & i1_amisha;
	 eq_amisha = p0_amisha | p1_amisha;
	 end
endmodule
