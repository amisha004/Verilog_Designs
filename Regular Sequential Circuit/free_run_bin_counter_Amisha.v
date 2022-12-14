`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:59 11/01/2022 
// Design Name: 
// Module Name:    free_run_bin_counter_Amisha 
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
module free_run_bin_counter_Amisha
#(parameter N_amisha = 8)
(
    input clk_amisha,
    input reset_amisha,
    output max_tick_amisha,
    output [N_amisha-1: 0] q_amisha
    );
	 
	 reg [N_amisha-1: 0] r_reg_amisha;
	 wire [N_amisha-1: 0] r_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 r_reg_amisha <= 0;
	 else
	 r_reg_amisha <= r_next_amisha;
	 
	 assign r_next_amisha = r_reg_amisha + 1;
	 assign q_amisha = r_reg_amisha;
	 assign max_tick_amisha = (r_reg_amisha == 2**N_amisha-1) ? 1'b1 : 1'b0;
endmodule
