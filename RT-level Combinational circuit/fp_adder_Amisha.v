`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:03 11/10/2022 
// Design Name: 
// Module Name:    fp_adder_Amisha 
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
module fp_adder_Amisha(
    input sign1_amisha,
    input sign2_amisha,
    input [3:0] exp1_amisha,
    input [3:0] exp2_amisha,
    input [7:0] frac1_amisha,
    input [7:0] frac2_amisha,
    output reg sign_out_amisha,
    output reg [3:0] exp_out_amisha,
    output reg [7:0] frac_out_amisha
    );
	 
	 reg signb_amisha, signs_amisha;
	 reg [3:0] expb_amisha, exps_amisha, expn_amisha, exp_diff_amisha;
	 reg [7:0] fracb_amisha, fracs_amisha, fraca_amisha, fracn_amisha, sum_norm_amisha;
	 reg [8:0] sum_amisha;
	 reg [2:0] lead0_amisha;
	 
	 always @*
	 begin
	 if ({exp1_amisha, frac1_amisha} > {exp2_amisha, frac2_amisha})
	 begin
	 signb_amisha = sign1_amisha;
	 signs_amisha = sign2_amisha;
	 expb_amisha = exp1_amisha;
	 exps_amisha = exp2_amisha;
	 fracb_amisha = frac1_amisha;
	 fracs_amisha = frac2_amisha;
	 end
	 else
	 begin
	 signb_amisha = sign2_amisha;
	 signs_amisha = sign1_amisha;
	 expb_amisha = exp2_amisha;
	 exps_amisha = exp1_amisha;
	 fracb_amisha = frac2_amisha;
	 fracs_amisha = frac1_amisha;
	 end
	 
	 exp_diff_amisha = expb_amisha - exps_amisha;
	 fraca_amisha = fracs_amisha >> exp_diff_amisha;
	 
	 if (signb_amisha == signs_amisha)
	 sum_amisha = {1'b0, fracb_amisha} + {1'b0, fraca_amisha};
	 else
	 sum_amisha = {1'b0, fracb_amisha} - {1'b0, fraca_amisha};
	 
	 if (sum_amisha[7])
	 lead0_amisha = 3'o0;
	 else if (sum_amisha[6])
	 lead0_amisha = 3'o1;
	 else if (sum_amisha[5])
	 lead0_amisha = 3'o2;
	 else if (sum_amisha[4])
	 lead0_amisha = 3'o3;
	 else if (sum_amisha[3])
	 lead0_amisha = 3'o4;
	 else if (sum_amisha[2])
	 lead0_amisha = 3'o5;
	 else if (sum_amisha[1])
	 lead0_amisha = 3'o6;
	 else
	 lead0_amisha = 3'o7;
	 
	 sum_norm_amisha = sum_amisha << lead0_amisha;
	 if (sum_amisha[8])
	 begin
	 expn_amisha = expb_amisha + 1;
	 fracn_amisha = sum_amisha[8:1];
	 end
	 else if (lead0_amisha > expb_amisha)
	 begin
	 expn_amisha = 0;
	 fracn_amisha = 0;
	 end
	 else
	 begin
	 expn_amisha = expb_amisha - lead0_amisha;
	 fracn_amisha = sum_norm_amisha;
	 end
	 
	 sign_out_amisha = signb_amisha;
	 exp_out_amisha = expn_amisha;
	 frac_out_amisha = fracn_amisha;
	 end
endmodule
