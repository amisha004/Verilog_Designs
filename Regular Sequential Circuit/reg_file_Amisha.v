`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:55 10/28/2022 
// Design Name: 
// Module Name:    reg_file_Amisha 
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
module reg_file_Amisha
# ( 
parameter B_amisha = 8,
W_amisha = 2 
 )
(
    input clk_amisha,
    input wr_en_amisha,
    input [W_amisha-1 : 0] w_addr_amisha,
    input [W_amisha-1 : 0] r_addr_amisha,
    input [B_amisha-1 : 0] w_data_amisha,
    output [B_amisha-1 : 0] r_data_amisha
    );
reg [B_amisha-1:0] array_reg_amisha [2**W_amisha-1:0] ; 
 
always @(posedge clk_amisha) 
	if (wr_en_amisha) 
		array_reg_amisha [w_addr_amisha] <= w_data_amisha; 

assign r_data_amisha = array_reg_amisha [r_addr_amisha] ;
endmodule
