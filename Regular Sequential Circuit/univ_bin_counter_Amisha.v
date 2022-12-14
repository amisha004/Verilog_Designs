`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:30 11/01/2022 
// Design Name: 
// Module Name:    univ_bin_counter_Amisha 
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
module univ_bin_counter_Amisha
#( parameter N_amisha = 8)
(
    input clk_amisha,
    input reset_amisha,
    input syn_clr_amisha,
    input load_amisha,
    input en_amisha,
    input up_amisha,
    input [N_amisha-1: 0] d_amisha,
    output max_tick_amisha,
    output min_tick_amisha,
    output [N_amisha-1: 0] q_amisha
    );
	 
	 reg [N_amisha-1: 0] r_reg_amisha, r_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 r_reg_amisha <= 0;
	 else
	 r_reg_amisha <= r_next_amisha;
	 
	 always @*
	 if (syn_clr_amisha)
	 r_next_amisha = 0;
	 else if (load_amisha)
	 r_next_amisha = d_amisha;
	 else if (en_amisha & up_amisha)
	 r_next_amisha = r_reg_amisha + 1;
	 else if (en_amisha & ~up_amisha)
	 r_next_amisha = r_reg_amisha - 1;
	 else
	 r_next_amisha = r_reg_amisha;
	 
	 assign q_amisha = r_reg_amisha;
	 assign max_tick_amisha = (r_reg_amisha == 2**N_amisha-1) ? 1'b1 : 1'b0;
	 assign min_tick_amisha = (r_reg_amisha == 0) ? 1'b1 : 1'b0;
endmodule
