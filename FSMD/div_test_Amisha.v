`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:47:59 11/09/2022
// Design Name:   div_Amisha
// Module Name:   H:/Amisha/Chapter_6/div_test_Amisha.v
// Project Name:  Chapter_6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module div_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg start_amisha;
	reg [7:0] dvsr_amisha;
	reg [7:0] dvnd_amisha;
	// Outputs
	wire ready_amisha;
	wire done_tick_amisha;
	wire [7:0] quo_amisha;
	wire [7:0] rmd_amisha;
	// Instantiate the Unit Under Test (UUT)
	div_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.start_amisha(start_amisha), 
		.dvsr_amisha(dvsr_amisha), 
		.dvnd_amisha(dvnd_amisha), 
		.ready_amisha(ready_amisha), 
		.done_tick_amisha(done_tick_amisha), 
		.quo_amisha(quo_amisha), 
		.rmd_amisha(rmd_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		start_amisha = 0;
		dvsr_amisha = 0;
		dvnd_amisha = 0;
		#100;
		reset_amisha = 0;
		start_amisha = 1;
		dvsr_amisha = 7;
		dvnd_amisha = 35;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;      
endmodule

