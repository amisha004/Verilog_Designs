`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:46:22 11/13/2022 
// Design Name: 
// Module Name:    fifo_Amisha 
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
module fifo_Amisha
   #(
    parameter B_amisha = 8,
              W_amisha = 4 
	)				  
	(
    input clk_amisha,
    input reset_amisha,
	 input rd_amisha, 
	 input wr_amisha,
    input [B_amisha-1: 0] w_data_amisha,
    output empty_amisha,
    output full_amisha,
    output [B_amisha-1: 0] r_data_amisha
    );

   reg [B_amisha-1:0] array_reg_amisha [2**W_amisha-1:0]; 
   reg [W_amisha-1:0] w_ptr_reg_amisha, w_ptr_next_amisha, w_ptr_succ_amisha;
   reg [W_amisha-1:0] r_ptr_reg_amisha, r_ptr_next_amisha, r_ptr_succ_amisha;
   reg full_reg_amisha, empty_reg_amisha, full_next_amisha, empty_next_amisha;
   wire wr_en_amisha;

   always @(posedge clk_amisha)
      if (wr_en_amisha)
         array_reg_amisha[w_ptr_reg_amisha] <= w_data_amisha;

   assign r_data_amisha = array_reg_amisha[r_ptr_reg_amisha];

   assign wr_en_amisha = wr_amisha & ~full_reg_amisha;

   always @(posedge clk_amisha, posedge reset_amisha)
      if (reset_amisha)
         begin
            w_ptr_reg_amisha <= 0;
            r_ptr_reg_amisha <= 0;
            full_reg_amisha <= 1'b0;
            empty_reg_amisha <= 1'b1;
         end
      else
         begin
            w_ptr_reg_amisha <= w_ptr_next_amisha;
            r_ptr_reg_amisha <= r_ptr_next_amisha;
            full_reg_amisha <= full_next_amisha;
            empty_reg_amisha <= empty_next_amisha;
         end

   always @*
   begin
      w_ptr_succ_amisha = w_ptr_reg_amisha + 1;
      r_ptr_succ_amisha = r_ptr_reg_amisha + 1;
      w_ptr_next_amisha = w_ptr_reg_amisha;
      r_ptr_next_amisha = r_ptr_reg_amisha;
      full_next_amisha = full_reg_amisha;
      empty_next_amisha = empty_reg_amisha;
		
      case ({wr_amisha, rd_amisha})
         2'b01: 
            if (~empty_reg_amisha) 
               begin
                  r_ptr_next_amisha = r_ptr_succ_amisha;
                  full_next_amisha = 1'b0;
                  if (r_ptr_succ_amisha == w_ptr_reg_amisha)
                     empty_next_amisha = 1'b1;
               end
					
         2'b10: 
            if (~full_reg_amisha) 
               begin
                  w_ptr_next_amisha = w_ptr_succ_amisha;
                  empty_next_amisha = 1'b0;
                  if (w_ptr_succ_amisha == r_ptr_reg_amisha)
                     full_next_amisha = 1'b1;
               end
					
         2'b11: 
            begin
               w_ptr_next_amisha = w_ptr_succ_amisha;
               r_ptr_next_amisha = r_ptr_succ_amisha;
            end
      endcase
   end

   assign full_amisha = full_reg_amisha;
   assign empty_amisha = empty_reg_amisha;
endmodule
