`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:21 09/09/2022 
// Design Name: 
// Module Name:    prio_encoder_casez_Amisha 
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
module prio_encoder_casez_Amisha(
    input [4:1] r_amisha,
    output reg [2:0] y_amisha
    );
	 
	 always @*
	 casez (r_amisha)
	 4'b1???: y_amisha = 3'b100;
	 4'b01??: y_amisha = 3'b011;
	 4'b001?: y_amisha = 3'b010;
	 4'b0001: y_amisha = 3'b001;
	 4'b0000: y_amisha = 3'b000;
	 endcase
endmodule
