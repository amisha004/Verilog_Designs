`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:44 11/09/2022 
// Design Name: 
// Module Name:    debounce_Amisha 
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
module debounce_Amisha(
    input clk_amisha,
    input reset_amisha,
    input sw_amisha,
    output reg db_level_amisha,
    output reg db_tick_amisha
    );
	 localparam [1:0]
	 zero_amisha = 2'b00,
	 wait0_amisha = 2'b01,
	 one_amisha = 2'b10,
	 wait1_amisha = 2'b11;
	 localparam N_amisha = 21;
	 
	 reg [N_amisha - 1 : 0] q_reg_amisha, q_next_amisha;
	 reg [1:0] state_reg_amisha, state_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 begin
	 state_reg_amisha <= zero_amisha;
	 q_reg_amisha <=0;
	 end
	 else
	 begin
	 state_reg_amisha <= state_next_amisha;
	 q_reg_amisha <= q_next_amisha;
	 end
	 
	 always @*
	 begin
	 state_next_amisha = state_reg_amisha;
	 q_next_amisha = q_reg_amisha;
	 db_tick_amisha = 1'b0;
	 case (state_reg_amisha)
	 zero_amisha :
	 begin
	 db_level_amisha = 1'b0;
	 if (sw_amisha)
	 begin
	 state_next_amisha = wait1_amisha;
	 q_next_amisha = {N_amisha{1'b1}};
	 end
	 end
	 
	 wait1_amisha :
	 begin
	 db_level_amisha = 1'b0;
	 if (sw_amisha)
	 begin
	 q_next_amisha = q_reg_amisha - 1;
	 if (q_next_amisha == 0)
	 begin
	 state_next_amisha = one_amisha;
	 db_tick_amisha = 1'b1;
	 end
	 end
	 else
	 state_next_amisha = zero_amisha;
	 end
	 
	 one_amisha :
	 begin
	 db_level_amisha = 1'b1;
	 if (~sw_amisha)
	 begin
	 state_next_amisha = wait0_amisha;
	 q_next_amisha = {N_amisha{1'b1}};
	 end
	 end
	 
	 wait0_amisha :
	 begin
	 db_level_amisha = 1'b1;
	 if (~sw_amisha)
	 begin
	 q_next_amisha = q_reg_amisha - 1;
	 if (q_next_amisha == 0)
	 state_next_amisha = zero_amisha;
	 end
	 else
	 state_next_amisha = one_amisha;
	 end
	 default : state_next_amisha = zero_amisha;
	 endcase
	 end
endmodule
