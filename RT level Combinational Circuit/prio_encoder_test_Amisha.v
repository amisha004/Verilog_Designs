`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:04 09/09/2022
// Design Name:   prio_encoder_if_Amisha
// Module Name:   H:/Amisha/Chapter_3/prio_encoder_test_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prio_encoder_if_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module prio_encoder_test_Amisha;
	// Inputs
	reg [4:1] r_amisha;
	// Outputs
	wire [2:0] y_amisha;
	// Instantiate the Unit Under Test (UUT)
	prio_encoder_if_Amisha uut (
		.r_amisha(r_amisha), 
		.y_amisha(y_amisha)
	);
	initial begin
		// Initialize Inputs
		r_amisha = 0;
		#100;
		r_amisha = 1;
		#100;
		r_amisha = 2;
		#100;
		r_amisha = 3;
		#100;
		r_amisha = 4;
		#100;
		r_amisha = 5;
		#100;
		r_amisha = 7;
		#100;
		r_amisha = 8;
		#100;
		r_amisha = 9;
		#100;
		r_amisha = 15;
		#100;
	end      
endmodule

