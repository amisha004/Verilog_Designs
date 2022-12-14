`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:15:14 11/14/2022 
// Design Name: 
// Module Name:    bin2bcd_Amisha 
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

module bin2bcd_Amisha
   (
    input clk_amisha, 
	 input reset_amisha,
    input start_amisha,
    input [12:0] bin_amisha,
    output reg ready_amisha, 
	 output reg done_tick_amisha,
    output [3:0] bcd3_amisha, 
	 output [3:0] bcd2_amisha, 
	 output [3:0] bcd1_amisha, 
	 output [3:0] bcd0_amisha
   );

   localparam [1:0]
      idle_amisha = 2'b00,
      op_amisha   = 2'b01,
      done_amisha = 2'b10;

   reg [1:0] state_reg_amisha, state_next_amisha;
   reg [12:0] p2s_reg_amisha, p2s_next_amisha;
   reg [3:0] n_reg_amisha, n_next_amisha;
   reg [3:0] bcd3_reg_amisha, bcd2_reg_amisha, bcd1_reg_amisha, bcd0_reg_amisha;
   reg [3:0] bcd3_next_amisha, bcd2_next_amisha, bcd1_next_amisha, bcd0_next_amisha;
   wire [3:0] bcd3_tmp_amisha, bcd2_tmp_amisha, bcd1_tmp_amisha, bcd0_tmp_amisha;

   always @(posedge clk_amisha, posedge reset_amisha)
      if (reset_amisha)
         begin
            state_reg_amisha <= idle_amisha;
            p2s_reg_amisha <= 0;
            n_reg_amisha <= 0;
            bcd3_reg_amisha <= 0;
            bcd2_reg_amisha <= 0;
            bcd1_reg_amisha <= 0;
            bcd0_reg_amisha <= 0;
         end
      else
         begin
            state_reg_amisha <= state_next_amisha;
            p2s_reg_amisha <= p2s_next_amisha;
            n_reg_amisha <= n_next_amisha;
            bcd3_reg_amisha <= bcd3_next_amisha;
            bcd2_reg_amisha <= bcd2_next_amisha;
            bcd1_reg_amisha <= bcd1_next_amisha;
            bcd0_reg_amisha <= bcd0_next_amisha;
         end

   always @*
   begin
      state_next_amisha = state_reg_amisha;
      ready_amisha = 1'b0;
      done_tick_amisha = 1'b0;
      p2s_next_amisha = p2s_reg_amisha;
      bcd0_next_amisha = bcd0_reg_amisha;
      bcd1_next_amisha = bcd1_reg_amisha;
      bcd2_next_amisha = bcd2_reg_amisha;
      bcd3_next_amisha = bcd3_reg_amisha;
      n_next_amisha = n_reg_amisha;
      case (state_reg_amisha)
         idle_amisha:
            begin
               ready_amisha = 1'b1;
               if (start_amisha)
                  begin
                     state_next_amisha = op_amisha;
                     bcd3_next_amisha = 0;
                     bcd2_next_amisha = 0;
                     bcd1_next_amisha = 0;
                     bcd0_next_amisha = 0;
                     n_next_amisha = 4'b1101; 
                     p2s_next_amisha = bin_amisha; 
                     state_next_amisha = op_amisha;
                  end
            end
				
         op_amisha:
            begin
               p2s_next_amisha = p2s_reg_amisha << 1;
               bcd0_next_amisha = {bcd0_tmp_amisha[2:0], p2s_reg_amisha[12]};
               bcd1_next_amisha = {bcd1_tmp_amisha[2:0], bcd0_tmp_amisha[3]};
               bcd2_next_amisha = {bcd2_tmp_amisha[2:0], bcd1_tmp_amisha[3]};
               bcd3_next_amisha = {bcd3_tmp_amisha[2:0], bcd2_tmp_amisha[3]};
               n_next_amisha = n_reg_amisha - 1;
               if (n_next_amisha==0)
                   state_next_amisha = done_amisha;
            end
				
         done_amisha:
            begin
               done_tick_amisha = 1'b1;
               state_next_amisha = idle_amisha;
            end
         default: state_next_amisha = idle_amisha;
      endcase
   end

   assign bcd0_tmp_amisha = (bcd0_reg_amisha > 4) ? bcd0_reg_amisha +3 : bcd0_reg_amisha;
   assign bcd1_tmp_amisha = (bcd1_reg_amisha > 4) ? bcd1_reg_amisha +3 : bcd1_reg_amisha;
   assign bcd2_tmp_amisha = (bcd2_reg_amisha > 4) ? bcd2_reg_amisha +3 : bcd2_reg_amisha;
   assign bcd3_tmp_amisha = (bcd3_reg_amisha > 4) ? bcd3_reg_amisha +3 : bcd3_reg_amisha;

   assign bcd0_amisha = bcd0_reg_amisha;
   assign bcd1_amisha = bcd1_reg_amisha;
   assign bcd2_amisha = bcd2_reg_amisha;
   assign bcd3_amisha = bcd3_reg_amisha;

endmodule
