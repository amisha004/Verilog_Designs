`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:59 10/28/2022 
// Design Name: 
// Module Name:    free_run_shift_reg_Amisha 
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
module free_run_shift_reg_Amisha
#( parameter N_amisha = 8)
(
    input clk_amisha,
    input reset_amisha,
    input s_in_amisha,
    output s_out_amisha
    );
	 
	 reg [N_amisha-1:0] r_reg_amisha;
	 wire [N_amisha-1:0] r_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 r_reg_amisha <= 0;
	 else
	 r_reg_amisha <= r_next_amisha;
	 
	 assign r_next_amisha = {s_in_amisha, r_reg_amisha [N_amisha-1:1]};
	 assign s_out_amisha = r_reg_amisha[0];
endmodule
