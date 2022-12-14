`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:44 11/09/2022 
// Design Name: 
// Module Name:    debounce_fsmd_test_Amisha 
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
module debounce_fsmd_test_Amisha(
    input clk_amisha,
    input reset_amisha,
    input [1:0] btn_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );
	 
	 reg [7:0] b_reg_amisha, d_reg_amisha;
	 wire [7:0] b_next_amisha, d_next_amisha;
	 reg btn_reg_amisha;
	 wire db_tick_amisha, btn_tick_amisha, clr_amisha;
	 
	 disp_hex_mux_Amisha disp_unit_Amisha (.clk_amisha(clk_amisha), 
	 .reset_amisha(reset_amisha), .hex3_amisha(b_reg_amisha[7:4]), 
	 .hex2_amisha(b_reg_amisha[3:0]), .hex1_amisha(d_reg_amisha[7:4]),
	 .hex0_amisha(d_reg_amisha[3:0]), .dp_in_amisha (4'b1011), 
	 .an_amisha(an_amisha), .sseg_amisha(sseg_amisha));
	 
	 debounce_Amisha db_unit_amisha (.clk_amisha(clk_amisha), 
	 .reset_amisha(reset_amisha), .sw_amisha(btn_amisha), 
	 .db_level_amisha(), .db_tick_amisha(db_tick_amisha));
	 
	 always @(posedge clk_amisha)
	 btn_reg_amisha <= btn_amisha[1];
	 assign btn_tick_amisha = ~btn_reg_amisha & btn_amisha[1];
	 assign clr_amisha = btn_amisha [0];
	 
	 always @(posedge clk_amisha)
	 begin
	 d_reg_amisha <= d_next_amisha;
	 b_reg_amisha <= b_next_amisha;
	 end
	 assign b_next_amisha = (clr_amisha) ? 0 :
	 (btn_tick_amisha) ? b_reg_amisha + 1 : b_reg_amisha;
	 assign d_next_amisha = (clr_amisha) ? 0 :
	 (db_tick_amisha) ? d_reg_amisha + 1 : d_reg_amisha;
endmodule
