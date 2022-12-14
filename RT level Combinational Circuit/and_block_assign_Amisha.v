`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:30 09/09/2022 
// Design Name: 
// Module Name:    and_block_assign_Amisha 
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
module and_block_assign_Amisha(
    input wire a_amisha,
    input wire b_amisha,
    input wire c_amisha,
    output reg y_amisha
    );
	 
	 always @*
	 begin
	 y_amisha = a_amisha;
	 y_amisha = y_amisha & b_amisha;
	 y_amisha = y_amisha & c_amisha;
	 end
endmodule
