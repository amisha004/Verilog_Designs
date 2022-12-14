`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:49:25 11/10/2022 
// Design Name: 
// Module Name:    disp_mux_Amisha 
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
module disp_mux_Amisha(
    input clk_amisha,
    input reset_amisha,
    input [7:0] in3_amisha,
    input [7:0] in2_amisha,
    input [7:0] in1_amisha,
    input [7:0] in0_amisha,
    output reg [3:0] an_amisha,
    output reg [7:0] sseg_amisha
    );
	 
	 localparam N_amisha = 18;
	 reg [N_amisha-1 : 0] q_reg_amisha;
	 wire [N_amisha-1 : 0] q_next_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 q_reg_amisha <= 0;
	 else 
	 q_reg_amisha <= q_next_amisha;
	 
	 assign q_next_amisha = q_reg_amisha + 1;
	 
	 always @*
	 case (q_reg_amisha [N_amisha-1 : N_amisha-2])
	 2'b00 :
	 begin
	 an_amisha = 4'b1110;
	 sseg_amisha = in0_amisha;
	 end
	 2'b01 :
	 begin
	 an_amisha = 4'b1101;
	 sseg_amisha = in1_amisha;
	 end
	 2'b10 :
	 begin
	 an_amisha = 4'b1011;
	 sseg_amisha = in2_amisha;
	 end
	 default :
	 begin
	 an_amisha = 4'b0111;
	 sseg_amisha = in3_amisha;
	 end
	 endcase
endmodule
