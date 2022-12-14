`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:32 11/01/2022
// Design Name:   univ_bin_counter_Amisha
// Module Name:   H:/Amisha/Chapter_4/univ_bin_counter_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: univ_bin_counter_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module univ_bin_counter_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg syn_clr_amisha;
	reg load_amisha;
	reg en_amisha;
	reg up_amisha;
	reg [7:0] d_amisha;
	// Outputs
	wire max_tick_amisha;
	wire min_tick_amisha;
	wire [7:0] q_amisha;
	// Instantiate the Unit Under Test (UUT)
	univ_bin_counter_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.syn_clr_amisha(syn_clr_amisha), 
		.load_amisha(load_amisha), 
		.en_amisha(en_amisha), 
		.up_amisha(up_amisha), 
		.d_amisha(d_amisha), 
		.max_tick_amisha(max_tick_amisha), 
		.min_tick_amisha(min_tick_amisha), 
		.q_amisha(q_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		syn_clr_amisha = 0;
		load_amisha = 0;
		en_amisha = 0;
		up_amisha = 0;
		d_amisha = 0;
		#100;
		reset_amisha = 0;
		syn_clr_amisha = 1;
		load_amisha = 0;
		en_amisha = 0;
		up_amisha = 0;
		d_amisha = 8'b000011000;
		#100;
		syn_clr_amisha = 0;
		load_amisha = 1;
		en_amisha = 0;
		up_amisha = 0;
		d_amisha = 8'b10011001;
		#100;
		d_amisha = 8'b00000000;
		#100;
		syn_clr_amisha = 0;
		load_amisha = 0;
		en_amisha = 1;
		up_amisha = 1;
		d_amisha = 8'b00000000;
		#100;
		en_amisha = 1;
		up_amisha = 1;
		#100
		en_amisha = 1;
		up_amisha = 1;
		#100
		syn_clr_amisha = 0;
		load_amisha = 1;
		en_amisha = 0;
		up_amisha = 0;
		d_amisha = 8'b11111111;
		#100;
		syn_clr_amisha = 0;
		load_amisha = 0;
		en_amisha = 1;
		up_amisha = 0;
		d_amisha = 8'b11111111;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

