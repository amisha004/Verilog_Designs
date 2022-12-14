`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:13 09/09/2022 
// Design Name: 
// Module Name:    prio_encoder_if_Amisha 
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
module prio_encoder_if_Amisha(
    input wire [4:1] r_amisha,
    output reg [2:0] y_amisha
    );
	 
	 always @*
	 if (r_amisha[4]==1'b1)
	 y_amisha = 3'b100;
	 else if (r_amisha[3]==1'b1)
	 y_amisha = 3'b011;
	 else if (r_amisha[2]==1'b1)
	 y_amisha = 3'b010;
	 else if (r_amisha[1]==1'b1)
	 y_amisha = 3'b001;
	 else
	 y_amisha = 3'b000;
endmodule
