`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:33 11/10/2022 
// Design Name: 
// Module Name:    hex_to_sseg_test__Amisha 
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
module hex_to_sseg_test__Amisha(
    input clk_amisha,
	 input [7:0] sw_amisha,
	 output [3:0] an_amisha,
	 output [7:0] sseg_amisha
);

wire [7:0] inc_amisha;
wire [7:0] led1_amisha, led2_amisha, led3_amisha;

assign inc_amisha = sw_amisha + 1;
hex_to_seg_Amisha sseg_unit_0
(.hex_amisha(sw_amisha[3:0]), .dp_amisha(1'b0), .sseg_amisha(led0_amisha));
hex_to_seg_Amisha sseg_unit_1
(.hex_amisha(sw_amisha[7:4]), .dp_amisha(1'b0), .sseg_amisha(led1_amisha));
hex_to_seg_Amisha sseg_unit_2
(.hex_amisha(inc_amisha[3:0]), .dp_amisha(1'b1), .sseg_amisha(led2_amisha));
hex_to_seg_Amisha sseg_unit_3
(.hex_amisha(inc_amisha[7:4]), .dp_amisha(1'b1), .sseg_amisha(led3_amisha));

disp_mux_Amisha disp_unit_amisha
(.clk_amisha(clk_amisha), .reset_amisha(1'b0), .in0_amisha(led0_amisha), .in1_amisha(led1_amisha),
.in2_amisha(led2_amisha), .in3_amisha(led3_amisha), .an_amisha(an_amisha), .sseg_amisha(sseg_amisha));
endmodule

