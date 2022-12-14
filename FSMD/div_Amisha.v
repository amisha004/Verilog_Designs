`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:30 11/09/2022 
// Design Name: 
// Module Name:    div_Amisha 
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
module div_Amisha
#( parameter W_amisha = 8,
CBIT_amisha = 4
)
(
    input clk_amisha,
    input reset_amisha,
    input start_amisha,
    input [W_amisha-1 : 0] dvsr_amisha,
    input [W_amisha-1 : 0] dvnd_amisha,
    output reg ready_amisha,
    output reg done_tick_amisha,
    output [W_amisha-1 : 0] quo_amisha,
    output [W_amisha-1 : 0] rmd_amisha
    );
	 
	 localparam [1:0]
	 idle_amisha = 2'b00,
	 op_amisha = 2'b01,
	 last_amisha = 2'b10,
	 done_amisha = 2'b11;
	 
	 reg [1:0] state_reg_amisha, state_next_amisha;
	 reg [W_amisha-1 : 0] rh_reg_amisha, rh_next_amisha; 
	 reg [W_amisha-1 : 0] rl_reg_amisha, rl_next_amisha, rh_tmp_amisha;
	 reg [W_amisha-1 : 0] d_reg_amisha, d_next_amisha;
	 reg [CBIT_amisha-1 : 0] n_reg_amisha, n_next_amisha;
	 reg q_bit_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 begin
	 state_reg_amisha <= idle_amisha;
	 rh_reg_amisha <= 0;
	 rl_reg_amisha <= 0;
	 d_reg_amisha <= 0;
	 n_reg_amisha <= 0;
	 end
	 else
	 begin
	 state_reg_amisha <= state_next_amisha;
	 rh_reg_amisha <= rh_next_amisha;
	 rl_reg_amisha <= rl_next_amisha;
	 d_reg_amisha <= d_next_amisha;
	 n_reg_amisha <= n_next_amisha;
	 end
	 
	 always @*
	 begin
	 state_next_amisha = state_reg_amisha;
	 ready_amisha = 1'b0;
	 done_tick_amisha = 1'b0;
	 rh_next_amisha = rh_reg_amisha;
	 rl_next_amisha = rl_reg_amisha;
	 d_next_amisha = d_reg_amisha;
	 n_next_amisha = n_reg_amisha;
	 case (state_reg_amisha)
	 idle_amisha :
	 begin
	 ready_amisha = 1'b1;
	 if (start_amisha)
	 begin
	 rh_next_amisha = 0;
	 rl_next_amisha = dvnd_amisha;
	 d_next_amisha = dvsr_amisha;
	 n_next_amisha = CBIT_amisha;
	 state_next_amisha = op_amisha;
	 end
	 end
	 
	 op_amisha :
	 begin
	 rl_next_amisha = {rl_reg_amisha [W_amisha-2 : 0], q_bit_amisha};
	 rh_next_amisha = {rh_tmp_amisha [W_amisha-2 : 0], rl_reg_amisha [W_amisha-1]};
	 n_next_amisha = n_reg_amisha - 1;
	 if (n_next_amisha == 1)
	 state_next_amisha = last_amisha;
	 end
	 
	 last_amisha :
	 begin
	 rl_next_amisha = {rl_reg_amisha [W_amisha-2 : 0], q_bit_amisha};
	 rh_next_amisha = rh_tmp_amisha;
	 state_next_amisha = done_amisha;
	 end
	 
	 done_amisha :
	 begin
	 done_tick_amisha = 1'b1;
	 state_next_amisha = idle_amisha;
	 end
	 default : state_next_amisha = idle_amisha;
	 endcase
	 end
	 
	 always @*
	 if (rh_reg_amisha >= d_reg_amisha)
	 begin
	 rh_tmp_amisha = rh_reg_amisha - d_reg_amisha;
	 q_bit_amisha = 1'b1;
	 end
	 else
	 begin
	 rh_tmp_amisha = rh_reg_amisha;
	 q_bit_amisha = 1'b0;
	 end
	 
	 assign quo_amisha = rl_reg_amisha;
	 assign rmd_amisha = rh_reg_amisha;
endmodule
