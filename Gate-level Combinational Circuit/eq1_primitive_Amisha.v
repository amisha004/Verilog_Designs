`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:41 09/09/2022 
// Design Name: 
// Module Name:    eq1_primitive_Amisha 
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
module eq1_primitive_Amisha(
    input i0_amisha,
    input i1_amisha,
    output eq_amisha
    );
	 
	 wire i0_n_amisha, i1_n_amisha, p0_amisha, p1_amisha;
	 
	 not unit1_amisha (i0_n_amisha, i0_amisha);
	 not unit2_amisha (i1_n_amisha, i1_amisha);
	 and unit3_amisha (p0_amisha, i0_n_amisha, i1_n_amisha);
	 and unit4_amisha (p1_amisha, i0_amisha, i1_amisha);
	 or unit5_amisha (eq_amisha, p0_amisha, p1_amisha);

endmodule
