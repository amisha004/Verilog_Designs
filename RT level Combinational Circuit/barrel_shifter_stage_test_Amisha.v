`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:36:10 11/10/2022
// Design Name:   barrel_shifter_stage_Amisha
// Module Name:   H:/Amisha/Chapter_3/barrel_shifter_stage_test_Amisha.v
// Project Name:  Chapter_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shifter_stage_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module barrel_shifter_stage_test_Amisha;
	// Inputs
	reg [7:0] a_amisha;
	reg [2:0] amt_amisha;
	// Outputs
	wire [7:0] y_amisha;
	// Instantiate the Unit Under Test (UUT)
	barrel_shifter_stage_Amisha uut (
		.a_amisha(a_amisha), 
		.amt_amisha(amt_amisha), 
		.y_amisha(y_amisha)
	);
	initial 
	begin
		a_amisha = 8'b10111011;
		amt_amisha = 3'o1;
		#200;
		a_amisha = 8'b10111011;
		amt_amisha = 3'o5;
		#200;
		a_amisha = 8'b10111011;
		amt_amisha = 3'o2;
		#200;
		a_amisha = 8'b10111011;
		amt_amisha = 3'o3;
		#200;
		a_amisha = 8'b10111011;
		amt_amisha = 3'o4;
		#200;	
	end      
endmodule

