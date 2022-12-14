`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:00 09/09/2022 
// Design Name: 
// Module Name:    eq1_udp_Amisha 
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
module eq1_udp_Amisha(
    input i0_amisha,
    input i1_amisha,
	 output eq_amisha
);
eq1_udp_Amisha_pri udp1(eq_amisha, i0_amisha, i1_amisha);
endmodule

primitive eq1_udp_Amisha_pri(eq_amisha1, i0_amisha1, i1_amisha1);
    output eq_amisha1;
    input i0_amisha1;
    input i1_amisha1;	 
	 table
	 0 0 : 1;
	 0 1 : 0;
	 1 0 : 0;
	 1 1 : 1;
	 endtable
endprimitive
