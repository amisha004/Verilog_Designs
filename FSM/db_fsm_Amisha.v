`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:49:39 11/09/2022 
// Design Name: 
// Module Name:    db_fsm_Amisha 
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
module db_fsm_Amisha(
    input clk_amisha,
    input reset_amisha,
    input sw_amisha,
    output reg db_amisha
    );
	 
	 localparam [2:0]
	 zero_amisha = 3'b000,
	 wait1_1_amisha = 3'b001,
	 wait1_2_amisha = 3'b010,
	 wait1_3_amisha = 3'b011,
	 one_amisha = 3'b100,
	 wait0_1_amisha = 3'b101,
	 wait0_2_amisha = 3'b110,
	 wait0_3_amisha = 3'b111;
	 
	 localparam N_amisha = 19;
	 reg [N_amisha - 1: 0] q_reg_amisha;
	 wire [N_amisha - 1: 0] q_next_amisha;
	 wire m_tick_amisha;
	 reg [2:0] state_reg_amisha, state_next_amisha;
	 
	 always @(posedge clk_amisha)
	 q_reg_amisha <= q_next_amisha;
	 assign q_next_amisha = q_reg_amisha + 1;
	 assign m_tick_amisha = (q_reg_amisha == 0) ? 1'b1 : 1'b0;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 state_reg_amisha <= zero_amisha;
	 else 
	 state_reg_amisha <= state_next_amisha;
	 
	 always @*
	 begin
	 state_next_amisha = state_reg_amisha;
	 db_amisha = 1'b0;
	 case (state_reg_amisha)
	 zero_amisha :
	 if (sw_amisha)
	 state_next_amisha = wait1_1_amisha;
	 
	 wait1_1_amisha :
	 if (~sw_amisha)
	 state_next_amisha = zero_amisha;
	 else
	 if (m_tick_amisha)
	 state_next_amisha = wait1_2_amisha;
	 
	 wait1_2_amisha :
	 if (~sw_amisha)
	 state_next_amisha = zero_amisha;
	 else
	 if (m_tick_amisha)
	 state_next_amisha = wait1_3_amisha;
	 
	 wait1_3_amisha :
	 if (~sw_amisha)
	 state_next_amisha = zero_amisha;
	 else
	 if (m_tick_amisha)
	 state_next_amisha = one_amisha;
	 
	 one_amisha :
	 begin
	 db_amisha = 1'b1;
	 if (~sw_amisha)
	 state_next_amisha = wait0_1_amisha;
	 end
	 
	 wait0_1_amisha :
	 begin
	 db_amisha = 1'b1;
	 if (sw_amisha)
	 state_next_amisha = one_amisha;
	 else
	 if (m_tick_amisha)
	 state_next_amisha = wait0_2_amisha;
	 end
	 
	 wait0_2_amisha :
	 begin
	 db_amisha = 1'b1;
	 if (sw_amisha)
	 state_next_amisha = one_amisha;
	 else 
	 if (m_tick_amisha)
	 state_next_amisha = wait0_3_amisha;
	 end
	 
	 wait0_3_amisha :
	 begin
	 db_amisha = 1'b1;
	 if (sw_amisha)
	 state_next_amisha = one_amisha;
	 else
	 if (m_tick_amisha)
	 state_next_amisha = zero_amisha;
	 end
	 default : state_next_amisha = zero_amisha;
	 endcase
	 end
endmodule
