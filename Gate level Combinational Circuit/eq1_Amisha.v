`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:28 09/08/2022 
// Design Name: 
// Module Name:    eq1_Amisha 
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
module eq1_Amisha(
    input wire i0_amisha,
    input wire i1_amisha,
    output wire eq_amisha
    );
	 
	 wire p0_amisha, p1_amisha;
	 
	 assign eq_amisha = p0_amisha | p1_amisha;
	 
	 assign p0_amisha = ~i0_amisha & ~i1_amisha;
	 assign p1_amisha = i0_amisha & i1_amisha;

endmodule
