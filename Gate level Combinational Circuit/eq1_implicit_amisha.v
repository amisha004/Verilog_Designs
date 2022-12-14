`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:22 09/08/2022 
// Design Name: 
// Module Name:    eq1_implicit_amisha 
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
module eq1_implicit_amisha(
    input i0_amisha,
    input i1_amisha,
    output eq_amisha
    );
	 
	 assign p0_amisha = ~i0_amisha & ~i1_amisha;
	 assign p1_amisha = i0_amisha & i1_amisha;
	 assign eq_amisha = p0_amisha | p1_amisha;
	 
endmodule
