`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:59 11/15/2022 
// Design Name: 
// Module Name:    low_freq_counter_Amisha 
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
module low_freq_counter_Amisha
   (
    input clk_amisha, 
	 input reset_amisha,
    input start_amisha, 
	 input si_amisha,
    output [3:0] bcd3_amisha, 
	 output [3:0] bcd2_amisha, 
	 output [3:0] bcd1_amisha, 
	 output [3:0] bcd0_amisha
   );

   localparam  [1:0]
               idle_amisha  = 2'b00,
               count_amisha = 2'b01,
               frq_amisha   = 2'b10,
               b2b_amisha   = 2'b11;

   reg [1:0] state_reg_amisha, state_next_amisha;
   wire [9:0] prd_amisha;
   wire [19:0] dvsr_amisha, dvnd_amisha, quo_amisha;
   reg prd_start_amisha, div_start_amisha, b2b_start_amisha;
   wire prd_done_tick_amisha, div_done_tick_amisha, b2b_done_tick_amisha;

   period_counter_Amisha prd_count_unit_amisha
      (.clk_amisha(clk_amisha), .reset_amisha(reset_amisha), .start_amisha(prd_start_amisha), 
		.si_amisha(si_amisha),.ready_amisha(), .done_tick_amisha(prd_done_tick_amisha), .prd_amisha(prd_amisha));

   div_Amisha #(.W_amisha(20), .CBIT_amisha(5)) div_unit_amisha
      (.clk_amisha(clk_amisha), .reset_amisha(reset_amisha), .start_amisha(div_start_amisha),
       .dvsr_amisha(dvsr_amisha), .dvnd_amisha(dvnd_amisha), .quo_amisha(quo_amisha), .rmd_amisha(),
       .ready_amisha(), .done_tick_amisha(div_done_tick_amisha));

   bin2bcd_Amisha b2b_unit_amisha
      (.clk_amisha(clk_amisha), .reset_amisha(reset_amisha), .start_amisha(b2b_start_amisha),
       .bin_amisha(quo_amisha[12:0]), .ready_amisha(), .done_tick_amisha(b2b_done_tick_amisha),
       .bcd3_amisha(bcd3_amisha), .bcd2_amisha(bcd2_amisha), .bcd1_amisha(bcd1_amisha), .bcd0_amisha(bcd0_amisha));

   assign dvnd_amisha = 20'd1000000;
   assign dvsr_amisha = {10'b0, prd_amisha};

   always @(posedge clk_amisha, posedge reset_amisha)
     if (reset_amisha)
        state_reg_amisha <= idle_amisha;
     else
        state_reg_amisha <= state_next_amisha;

   always @*
   begin
      state_next_amisha = state_reg_amisha;
      prd_start_amisha = 1'b0;
      div_start_amisha = 1'b0;
      b2b_start_amisha = 1'b0;
      case (state_reg_amisha)
         idle_amisha:
            if (start_amisha)
               begin
                  prd_start_amisha = 1'b1;
                  state_next_amisha = count_amisha;
               end
					
         count_amisha:
            if (prd_done_tick_amisha)
               begin
                  div_start_amisha = 1'b1;
                  state_next_amisha = frq_amisha;
               end
					
         frq_amisha:
            if (div_done_tick_amisha)
               begin
                  b2b_start_amisha = 1'b1;
                  state_next_amisha = b2b_amisha;
               end
					
         b2b_amisha:
            if (b2b_done_tick_amisha)
               state_next_amisha = idle_amisha;
       endcase
   end
endmodule
