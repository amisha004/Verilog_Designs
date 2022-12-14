`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:23 09/09/2022 
// Design Name: 
// Module Name:    decoder_2_3_case_Amisha 
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
module decoder_2_4_case_Amisha(
    input [1:0] a_amisha,
    input en_amisha,
    output reg [3:0] y_amisha
    );
	 
	 always @*
	 case ({en_amisha, a_amisha})
	 3'b000, 3'b001, 3'b010, 3'b011: y_amisha = 4'b0000;
	 3'b100: y_amisha = 4'b0001;
	 3'b101: y_amisha = 4'b0010;
	 3'b110: y_amisha = 4'b0100;
	 3'b111: y_amisha = 4'b1000;
	 endcase
endmodule
