`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:56 09/11/2022
// Design Name:   hex_to_seg_Amisha
// Module Name:   H:/Amisha/Chapter_3/hex_seg_test_amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hex_to_seg_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hex_seg_test_amisha;
	// Inputs
	reg [3:0] hex_amisha;
	reg dp_amisha;
	// Outputs
	wire [7:0] sseg_amisha;
	// Instantiate the Unit Under Test (UUT)
	hex_to_seg_Amisha uut (
		.hex_amisha(hex_amisha), 
		.dp_amisha(dp_amisha), 
		.sseg_amisha(sseg_amisha)
	);
	initial begin
		// Initialize Inputs
		hex_amisha = 0;
		dp_amisha = 0;
		#100;
		hex_amisha = 1;
		dp_amisha = 0;
		#100;
		hex_amisha = 3;
		dp_amisha = 0;
		#100;
		hex_amisha = 5;
		dp_amisha = 0;
		#100;
		hex_amisha = 7;
		dp_amisha = 0;
		#100;
		hex_amisha = 9;
		dp_amisha = 0;
		#100;
		hex_amisha = 11;
		dp_amisha = 0;
		#100;
		hex_amisha = 13;
		dp_amisha = 0;
		#100;
		hex_amisha = 2;
		dp_amisha = 0;
		#100;
		hex_amisha = 8;
		dp_amisha = 0;
		#100;
	end     
endmodule

