`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:27:36 11/13/2022 
// Design Name: 
// Module Name:    stop_watch_test_Amisha 
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
module stop_watch_test_Amisha(
    input clk_amisha,
    input [1:0] btn_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );

   wire [3:0]  d2_amisha, d1_amisha, d0_amisha;

   disp_hex_mux_Amisha disp_unit_amisha
      (.clk_amisha(clk_amisha), .reset_amisha(1'b0),
       .hex3_amisha(4'b0), .hex2_amisha(d2_amisha), .hex1_amisha(d1_amisha), .hex0_amisha(d0_amisha),
       .dp_in_amisha(4'b1101), .an_amisha(an_amisha), .sseg_amisha(sseg_amisha));
		 
   stop_watch_if_Amisha counter_unit_amisha
      (.clk_amisha(clk_amisha), .go_amisha(btn_amisha[1]), .clr_amisha(btn_amisha[0]),
       .d2_amisha(d2_amisha), .d1_amisha(d1_amisha), .d0_amisha(d0_amisha) );
endmodule
