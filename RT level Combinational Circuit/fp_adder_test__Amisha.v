`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:30 11/10/2022 
// Design Name: 
// Module Name:    fp_adder_test__Amisha 
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
module fp_adder_test__Amisha(
    input clk_amisha,
    input [1:0] btn_amisha,
    input [7:0] sw_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );
	 
	 wire sign1_amisha, sign2_amisha, sign_out_amisha;
	 wire [3:0] exp1_amisha, exp2_amisha, exp_out_amisha;
	 wire [7:0] frac1_amisha, frac2_amisha, frac_out_amisha;
	 wire [7:0] led3_amisha, led2_amisha, led1_amisha, led0_amisha;
	 
	 assign sign1_amisha = 1'b0;
	 assign exp1_amisha = 4'b1000;
	 assign frac1_amisha = {1'b1, sw_amisha[1:0], 5'b10101};
	 assign sign2_amisha = sw_amisha[7];
	 assign exp2_amisha = btn_amisha;
	 assign frac2_amisha = {1'b1, sw_amisha[6:0]};
	 
	 fp_adder_Amisha fp_unit_Amisha (.sign1_amisha(sign1_amisha),
	 .sign2_amisha(sign2_amisha), .exp1_amisha(exp1_amisha), .exp2_amisha(exp2_amisha),
	 .exp_out_amisha (exp_out_amisha), .frac_out_amisha(frac_out_amisha));
	 
	 hex_to_seg_Amisha sseg_unit_0_amisha (.hex_amisha(exp_out_amisha),
	 .dp_amisha(1'b0), .sseg_amisha(led0_amisha));
	 hex_to_seg_Amisha sseg_unit_1_amisha (.hex_amisha(frac_out_amisha[3:0]),
	 .dp_amisha(1'b1), .sseg_amisha(led1_amisha));
	 hex_to_seg_Amisha sseg_unit_2_amisha (.hex_amisha(frac_out_amisha[7:4]), 
	 .dp_amisha(1'b0), .sseg_amisha(led2_amisha));
	 
	 assign led3_amisha = (sign_out_amisha) ? 8'b11111110 : 8'b11111111;
	 
	 disp_mux_Amisha disp_unit_amisha (.clk_amisha(clk_amisha), 
	 .reset_amisha(1'b0), .in0_amisha(led0_amisha), .in1_amisha(led1_amisha),
	 .in2_amisha(led2_amisha), .in3_amisha(led3_amisha), .an_amisha(an_amisha),
	 .sseg_amisha(sseg_amisha));
endmodule
