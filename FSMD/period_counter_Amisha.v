`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:30 11/14/2022 
// Design Name: 
// Module Name:    period_counter_Amisha 
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

module period_counter_Amisha
   (
    input clk_amisha, 
	 input reset_amisha,
    input start_amisha, 
	 input si_amisha,
    output reg ready_amisha, 
	 output reg done_tick_amisha,
    output [9:0] prd_amisha
   );

   localparam [1:0]
      idle_amisha  = 2'b00,
      waite_amisha = 2'b01,
      count_amisha = 2'b10,
      done_amisha  = 2'b11;

   localparam CLK_MS_COUNT_amisha = 50000; 

   reg [1:0] state_reg_amisha, state_next_amisha;
   reg [15:0] t_reg_amisha, t_next_amisha; 
   reg [9:0] p_reg_amisha, p_next_amisha;   
   reg delay_reg_amisha;
   wire edg_amisha;

   always @(posedge clk_amisha, posedge reset_amisha)
      if (reset_amisha)
         begin
            state_reg_amisha <= idle_amisha;
            t_reg_amisha <= 0;
            p_reg_amisha <= 0;
            delay_reg_amisha <= 0;
         end
      else
         begin
            state_reg_amisha <= state_next_amisha;
            t_reg_amisha <= t_next_amisha;
            p_reg_amisha <= p_next_amisha;
            delay_reg_amisha <= si_amisha;
         end

   assign edg_amisha = ~delay_reg_amisha & si_amisha;
	
   always @*
   begin
      state_next_amisha = state_reg_amisha;
      ready_amisha = 1'b0;
      done_tick_amisha = 1'b0;
      p_next_amisha = p_reg_amisha;
      t_next_amisha = t_reg_amisha;
      case (state_reg_amisha)
         idle_amisha:
             begin
                ready_amisha = 1'b1;
                if (start_amisha)
                   state_next_amisha = waite_amisha;
             end
				 
         waite_amisha: 
            if (edg_amisha)
               begin
                  state_next_amisha = count_amisha;
                  t_next_amisha = 0;
                  p_next_amisha = 0;
               end
					
         count_amisha:
            if (edg_amisha)  
               state_next_amisha = done_amisha;
            else      
               if (t_reg_amisha == CLK_MS_COUNT_amisha - 1) 
                  begin
                     t_next_amisha = 0;
                     p_next_amisha = p_reg_amisha + 1;
                  end
               else
                  t_next_amisha = t_reg_amisha + 1;
						
         done_amisha:
            begin
               done_tick_amisha = 1'b1;
               state_next_amisha = idle_amisha;
            end
         default: state_next_amisha = idle_amisha;
      endcase
   end

   assign prd_amisha = p_reg_amisha;
endmodule
