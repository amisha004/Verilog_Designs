`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:15:37 11/01/2022
// Design Name:   univ_shift_reg_Amisha
// Module Name:   H:/Amisha/Chapter_4/univ_shift_reg_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: univ_shift_reg_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module univ_shift_reg_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg [1:0] ctrl_amisha;
	reg [7:0] d_amisha;
	// Outputs
	wire [7:0] q_amisha;
	// Instantiate the Unit Under Test (UUT)
	univ_shift_reg_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.ctrl_amisha(ctrl_amisha), 
		.d_amisha(d_amisha), 
		.q_amisha(q_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		ctrl_amisha = 0;
		d_amisha = 0;
		#100; 
		reset_amisha = 0;
		#100; 
		d_amisha = 8'b11010011;
		ctrl_amisha = 2'b11;
		#100; 
		ctrl_amisha = 2'b01;
		#100;
		ctrl_amisha = 2'b01;
		#100;
		ctrl_amisha = 2'b11;
		#100;
		ctrl_amisha = 2'b10;
		#100; 
		ctrl_amisha = 2'b10;
		#100; 		
	end
always #50 clk_amisha = ~clk_amisha;
endmodule

