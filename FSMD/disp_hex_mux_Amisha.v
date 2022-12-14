`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:29 11/14/2022 
// Design Name: 
// Module Name:    disp_hex_mux_Amisha 
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
module disp_hex_mux_Amisha(
    input clk_amisha,
    input reset_amisha,
    input [3:0] hex3_amisha,
    input [3:0] hex2_amisha,
    input [3:0] hex1_amisha,
    input [3:0] hex0_amisha,
    input [3:0] dp_in_amisha,
    output reg [3:0] an_amisha,
    output reg [7:0] sseg_amisha
    );
	 
	 localparam N_amisha = 18;

	 reg [N_amisha-1:0] q_reg_amisha;
	 wire [N_amisha-1:0] q_next_amisha;
	 reg [3:0] hex_in_amisha;
	 reg dp_amisha;
	 
	 always @(posedge clk_amisha, posedge reset_amisha)
	 if (reset_amisha)
	 q_reg_amisha <= 0;
	 else
	 q_reg_amisha <= q_next_amisha;
	 
	 assign q_next_amisha = q_reg_amisha + 1;
	 
	 always @*
	 case (q_reg_amisha [N_amisha-1 : N_amisha-2])
	 2'b00:
	 begin
	 an_amisha = 4'b1110;
	 hex_in_amisha = hex0_amisha;
	 dp_amisha = dp_in_amisha [0];
	 end
	 
	 2'b01:
	 begin
	 an_amisha = 4'b1101;
	 hex_in_amisha = hex1_amisha;
	 dp_amisha = dp_in_amisha [1];
	 end
	 
	 2'b10:
	 begin
	 an_amisha = 4'b1011;
	 hex_in_amisha = hex2_amisha;
	 dp_amisha = dp_in_amisha [2];
	 end
	 
	 default:
	 begin
	 an_amisha = 4'b0111;
	 hex_in_amisha = hex3_amisha;
	 dp_amisha = dp_in_amisha [3];
	 end
	 endcase
	 
	 always @*
	 begin
	 case (hex_in_amisha)
	 4'h0: sseg_amisha[6:0] = 7'b0000001;
	 4'h1: sseg_amisha[6:0] = 7'b1001111;
	 4'h2: sseg_amisha[6:0] = 7'b0010010;
	 4'h3: sseg_amisha[6:0] = 7'b0000110;
	 4'h4: sseg_amisha[6:0] = 7'b1001100;
	 4'h5: sseg_amisha[6:0] = 7'b0100100;
	 4'h6: sseg_amisha[6:0] = 7'b0100000;
	 4'h7: sseg_amisha[6:0] = 7'b0001111;
	 4'h8: sseg_amisha[6:0] = 7'b0000000;
	 4'h9: sseg_amisha[6:0] = 7'b0000100;
	 4'ha: sseg_amisha[6:0] = 7'b0001000;
	 4'hb: sseg_amisha[6:0] = 7'b1100000;
	 4'hc: sseg_amisha[6:0] = 7'b0110001;
	 4'hd: sseg_amisha[6:0] = 7'b1000010;
	 4'he: sseg_amisha[6:0] = 7'b0110000;
	 default: sseg_amisha[6:0] = 7'b0111000;
	 endcase

	 sseg_amisha[7] = dp_amisha;
	 end
endmodule
