`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:40 11/10/2022 
// Design Name: 
// Module Name:    barrel_shifter_case_Amisha 
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
module barrel_shifter_case_Amisha(
    input [7:0] a_amisha,
    input [2:0] amt_amisha,
    output reg [7:0] y_amisha
    );
	 always @*
	 case (amt_amisha)
	 3'o0: y_amisha = a_amisha;
	 3'o1: y_amisha = {a_amisha[0], a_amisha[7:1]};
	 3'o2: y_amisha = {a_amisha[1:0], a_amisha[7:2]};
	 3'o3: y_amisha = {a_amisha[2:0], a_amisha[7:3]};
	 3'o4: y_amisha = {a_amisha[3:0], a_amisha[7:4]};
	 3'o5: y_amisha = {a_amisha[4:0], a_amisha[7:5]};
	 3'o6: y_amisha = {a_amisha[5:0], a_amisha[7:6]};
	 default: y_amisha = {a_amisha[6:0], a_amisha[7]};
	 endcase
endmodule
