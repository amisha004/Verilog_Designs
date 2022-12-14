`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:44 09/11/2022 
// Design Name: 
// Module Name:    sign_mag_add_Amisha 
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
module sign_mag_add_Amisha
	#(
	 parameter N=4
	 )
	(
    input wire [N-1:0] a_amisha,
    input wire [N-1:0] b_amisha,
    output reg [N-1:0] sum_amisha
    );
	 
	 reg [N-2:0] mag_a_amisha, mag_b_amisha, mag_sum_amisha, max_amisha, min_amisha;
	 reg sign_a_amisha, sign_b_amisha, sign_sum_amisha;
	 
	 always @*
	 begin
	 mag_a_amisha = a_amisha[N-2:0];
	 mag_b_amisha = b_amisha[N-2:0];
	 sign_a_amisha = a_amisha[N-1];
	 sign_b_amisha = b_amisha[N-1];
	 
	 if (mag_a_amisha > mag_b_amisha)
	 begin
	 max_amisha = mag_a_amisha;
	 min_amisha = mag_b_amisha;
	 sign_sum_amisha = sign_a_amisha;
	 end
	 else
	 begin
	 max_amisha = mag_b_amisha;
	 min_amisha = mag_a_amisha;
	 sign_sum_amisha = sign_b_amisha;
	 end
	 
	 if (sign_a_amisha == sign_b_amisha)
	 mag_sum_amisha = max_amisha + min_amisha;
	 else
	 mag_sum_amisha = max_amisha - min_amisha;
	 
	 sum_amisha = {sign_sum_amisha, mag_sum_amisha};
	 end
endmodule
