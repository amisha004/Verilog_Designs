`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:27 11/10/2022 
// Design Name: 
// Module Name:    sm_add_test_Amisha 
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
module sm_add_test_Amisha(
    input clk_amisha,
    input [1:0] btn_amisha,
    input [7:0] sw_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );
	 
	 wire [3:0] sum_amisha, mout_amisha, oct_amisha;
	 wire [7:0] led3_amisha, led2_amisha, led1_amisha, led0_amisha;
	 
	 sign_mag_add_Amisha #(.N(4)) sm_adder_unit_amisha 
	 (.a_amisha(sw_amisha[3:0]), .b_amisha(sw_amisha[7:4]), .sum_amisha(sum_amisha));
	 
	 assign mout_amisha = (btn_amisha == 2'b00) ? sw_amisha [3:0] :
	 (btn_amisha == 2'b01) ? sw_amisha [7:4] : sum_amisha;
	 
	 assign oct_amisha = {1'b0, mout_amisha[2:0]};
	 hex_to_seg_Amisha sseg_unit_amisha (.hex_amisha(oct_amisha), .dp_amisha(1'b0),
	 .sseg_amisha (led0_amisha));
	 
	 assign led1_amisha = mout_amisha[3] ? 8'b11111110 : 8'b11111111;
	 assign led2_amisha = 8'b11111111;
	 assign led3_amisha = 8'b11111111;
	 
	 disp_mux_Amisha disp_unit_amisha (.clk_amisha(clk_amisha),
	 .reset_amisha(reset_amisha), .in0_amisha(led0_amisha), .in1_amisha(led1_amisha),
	 .in2_amisha(led2_amisha), .in3_amisha(led3_amisha), .an_amisha(an_amisha),
	 .sseg_amisha(sseg_amisha));
endmodule
