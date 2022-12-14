`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:53 11/13/2022 
// Design Name: 
// Module Name:    stop_watch_cascade_Amisha 
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
module stop_watch_cascade_Amisha(
    input clk_amisha,
    input go_amisha,
    input clr_amisha,
    output [3:0] d2_amisha,
    output [3:0] d1_amisha,
    output [3:0] d0_amisha
    );
	 
   localparam  DVSR_amisha = 5000000;
   reg [22:0] ms_reg_amisha;
   wire [22:0] ms_next_amisha;
   reg [3:0] d2_reg_amisha, d1_reg_amisha, d0_reg_amisha;
   wire [3:0] d2_next_amisha, d1_next_amisha, d0_next_amisha;
   wire d1_en_amisha, d2_en_amisha, d0_en_amisha;
   wire ms_tick_amisha, d0_tick_amisha, d1_tick_amisha;

   always @(posedge clk_amisha)
   begin
      ms_reg_amisha <= ms_next_amisha;
      d2_reg_amisha <= d2_next_amisha;
      d1_reg_amisha <= d1_next_amisha;
      d0_reg_amisha <= d0_next_amisha;
   end

   assign ms_next_amisha = (clr_amisha || (ms_reg_amisha==DVSR_amisha && go_amisha)) ? 4'b0 :
                    (go_amisha) ? ms_reg_amisha + 1 : ms_reg_amisha;
									
   assign ms_tick_amisha = (ms_reg_amisha==DVSR_amisha) ? 1'b1 : 1'b0;
   assign d0_en_amisha = ms_tick_amisha;
   assign d0_next_amisha = (clr_amisha || (d0_en_amisha && d0_reg_amisha==9)) ? 4'b0 :
                    (d0_en_amisha) ? d0_reg_amisha + 1 : d0_reg_amisha;
										
   assign d0_tick_amisha = (d0_reg_amisha==9) ? 1'b1 : 1'b0;
   assign d1_en_amisha = ms_tick_amisha & d0_tick_amisha;
   assign d1_next_amisha = (clr_amisha || (d1_en_amisha && d0_reg_amisha==9)) ? 4'b0 :
                    (d1_en_amisha) ? d1_reg_amisha + 1 : d1_reg_amisha;
										
   assign d1_tick_amisha = (d1_reg_amisha==9) ? 1'b1 : 1'b0;
   assign d2_en_amisha = ms_tick_amisha & d0_tick_amisha & d1_tick_amisha;
   assign d2_next_amisha = (clr_amisha || (d2_en_amisha && d2_reg_amisha==9)) ? 4'b0 :
                    (d2_en_amisha) ? d2_reg_amisha + 1 : d2_reg_amisha;
						  
   assign d0_amisha = d0_reg_amisha;
   assign d1_amisha = d1_reg_amisha;
   assign d2_amisha = d2_reg_amisha;
endmodule
