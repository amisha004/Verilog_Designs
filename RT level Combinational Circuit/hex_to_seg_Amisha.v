`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:04 09/11/2022 
// Design Name: 
// Module Name:    hex_to_seg_Amisha 
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
module hex_to_seg_Amisha(
    input [3:0] hex_amisha,
    input dp_amisha,
    output reg [7:0] sseg_amisha
    );
	 
	 always @*
	 begin
	 case (hex_amisha)
	 4'h0: sseg_amisha[6:0] = 7'b0000001;
	 4'h1: sseg_amisha[6:0] = 7'b1001111;
	 4'h2: sseg_amisha[6:0] = 7'b0010010;
	 4'h3: sseg_amisha[6:0] = 7'b0000110;
	 4'h4: sseg_amisha[6:0] = 7'b1001100;
	 4'h5: sseg_amisha[6:0] = 7'b0100100;
	 4'h6: sseg_amisha[6:0] = 7'b0100000;
	 4'h7: sseg_amisha[6:0] = 7'b0001111;
	 4'h8: sseg_amisha[6:0] = 7'b0000000;
	 4'h9: sseg_amisha[6:0] = 7'b0000100;
	 4'ha: sseg_amisha[6:0] = 7'b0001000;
	 4'hb: sseg_amisha[6:0] = 7'b1100000;
	 4'hc: sseg_amisha[6:0] = 7'b0110001;
	 4'hd: sseg_amisha[6:0] = 7'b1000010;
	 4'he: sseg_amisha[6:0] = 7'b0110000;
	 default: sseg_amisha[6:0] = 7'b0111000;
	 endcase
	 
	 sseg_amisha[7] = dp_amisha;
	 end
endmodule
