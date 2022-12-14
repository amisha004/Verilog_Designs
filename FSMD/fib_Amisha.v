`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:56 11/09/2022 
// Design Name: 
// Module Name:    fib_Amisha 
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
module fib_Amisha(
    input clk_amisha,
    input reset_amisha,
	 input start_amisha,
    input [4:0] i_amisha,
    output reg ready_amisha,
    output reg done_tick_amisha,
    output [19:0] f_amisha
    );
	 
	 localparam [1:0]
	 idle_amisha = 2'b00,
	 op_amisha = 2'b01,
	 done_amisha = 2'b10;
	 reg [1:0] state_reg_amisha, state_next_amisha;
	 reg [19:0] t0_reg_amisha, t0_next_amisha, t1_reg_amisha, t1_next_amisha;
	 reg [4:0] n_reg_amisha, n_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 begin
	 state_reg_amisha <= idle_amisha;
	 t0_reg_amisha <= 0;
	 t1_reg_amisha <= 0;
	 n_reg_amisha <= 0;
	 end
	 else
	 begin
	 state_reg_amisha <= state_next_amisha;
	 t0_reg_amisha <= t0_next_amisha;
	 t1_reg_amisha <= t1_next_amisha;
	 n_reg_amisha <= n_next_amisha;
	 end
	 
	 always @*
	 begin
	 state_next_amisha = state_reg_amisha;
	 ready_amisha = 1'b0;
	 done_tick_amisha = 1'b0;
	 t0_next_amisha = t0_reg_amisha;
	 t1_next_amisha = t1_reg_amisha;
	 n_next_amisha = n_reg_amisha;
	 case (state_reg_amisha)
	 idle_amisha :
	 begin
	 ready_amisha = 1'b1;
	 if (start_amisha)
	 begin
	 t0_next_amisha = 0;
	 t1_next_amisha = 20'd1;
	 n_next_amisha = i_amisha;
	 state_next_amisha = op_amisha;
	 end
	 end
	 
	 op_amisha :
	 if (n_reg_amisha == 0)
	 begin
	 t1_next_amisha = 0;
	 state_next_amisha = done_amisha;
	 end
	 else if (n_reg_amisha == 1)
	 state_next_amisha = done_amisha;
	 else
	 begin
	 t1_next_amisha = t1_reg_amisha + t0_reg_amisha;
	 t0_next_amisha = t1_reg_amisha;
	 n_next_amisha = n_reg_amisha - 1;
	 end
	 
	 done_amisha :
	 begin
	 done_tick_amisha = 1'b1;
	 state_next_amisha = idle_amisha;
	 end
	 default : state_next_amisha = idle_amisha;
	 endcase
	 end
	 assign f_amisha = t1_reg_amisha;
endmodule
