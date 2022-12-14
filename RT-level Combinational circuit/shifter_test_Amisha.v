`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:56 11/10/2022 
// Design Name: 
// Module Name:    shifter_test_Amisha 
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
module shifter_test_Amisha(
    input [2:0] btn_amisha,
    input [7:0] sw_amisha,
    output [7:0] led_amisha
    );
	 
	 barrel_shifter_stage_Amisha shift_unit_amisha (.a_amisha(sw_amisha),
	 .amt_amisha(btn_amisha), .y_amisha(led_amisha));
endmodule
