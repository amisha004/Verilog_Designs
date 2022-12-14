`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:02 09/09/2022 
// Design Name: 
// Module Name:    decoder_2_4_if_Amisha 
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
module decoder_2_4_if_Amisha(
    input [1:0] a_amisha,
    input en_amisha,
    output reg [3:0] y_amisha
    );
	 
	 always @* 
	 if (en_amisha == 1'b0)
	 y_amisha = 4'b0000;
	 else if (a_amisha == 2'b00)
	 y_amisha = 4'b0001;
	 else if (a_amisha == 2'b01)
	 y_amisha = 4'b0010;
	 else if (a_amisha == 2'b10)
	 y_amisha = 4'b0100;
	 else
	 y_amisha = 4'b1000;
endmodule
