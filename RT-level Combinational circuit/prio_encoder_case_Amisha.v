`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:21 09/09/2022 
// Design Name: 
// Module Name:    prio_encoder_case_Amisha 
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
module prio_encoder_case_Amisha(
    input [4:1] r_amisha,
    output reg [2:0] y_amisha
    );
	 
	 always @*
	 case (r_amisha)
	 4'b1000, 4'b1001, 4'b1010, 4'b1011,
	 4'b1100, 4'b1101, 4'b1110, 4'b1111:
	 y_amisha = 3'b100;
	 4'b0100, 4'b0101, 4'b0110, 4'b0111:
	 y_amisha = 3'b011;
	 4'b0010, 4'b0011:
	 y_amisha = 3'b010;
	 4'b0001:
	 y_amisha = 3'b001;
	 4'b0000:
	 y_amisha = 3'b000;
	 endcase
endmodule
