`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:28:54 11/11/2022 
// Design Name: 
// Module Name:    disp_mux_test__Amisha 
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
module disp_mux_test__Amisha(
    input clk_amisha,
    input [3:0] btn_amisha,
    input [7:0] sw_amisha,
    output [3:0] an_amisha,
    output [7:0] sseg_amisha
    );
	 reg [7:0] d3_reg_amisha, d2_reg_amisha, d1_reg_amisha, d0_reg_amisha;
	 
	 disp_mux_Amisha disp_unit_Amisha (.clk_amisha(clk_amisha), .reset_amisha(1'b0),
	 .in0_amisha(d0_reg_amisha), .in1_amisha(d1_reg_amisha), .in2_amisha(d2_reg_amisha),
	 .in3_amisha(d3_reg_amisha), .an_amisha(an_amisha), .sseg_amisha(sseg_amisha));
	 
	 always @(posedge clk_amisha)
	 begin
	 if (btn_amisha[3])
	 d3_reg_amisha <= sw_amisha;
	 if (btn_amisha[2])
	 d2_reg_amisha <= sw_amisha;
	 if (btn_amisha[1])
	 d1_reg_amisha <= sw_amisha;
	 if (btn_amisha[0])
	 d0_reg_amisha <= sw_amisha;
	 end
endmodule
