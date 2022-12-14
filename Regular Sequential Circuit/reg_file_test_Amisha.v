`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:52 10/28/2022
// Design Name:   reg_file_Amisha
// Module Name:   H:/Amisha/Chapter_4/reg_file_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg wr_en_amisha;
	reg [1:0] w_addr_amisha;
	reg [1:0] r_addr_amisha;
	reg [7:0] w_data_amisha;
	// Outputs
	wire [7:0] r_data_amisha;
	// Instantiate the Unit Under Test (UUT)
	reg_file_Amisha uut (
		.clk_amisha(clk_amisha), 
		.wr_en_amisha(wr_en_amisha), 
		.w_addr_amisha(w_addr_amisha), 
		.r_addr_amisha(r_addr_amisha), 
		.w_data_amisha(w_data_amisha), 
		.r_data_amisha(r_data_amisha)
	);
	initial begin
		clk_amisha = 1;
		wr_en_amisha = 1;
		w_addr_amisha = 0;
		r_addr_amisha = 0;
		w_data_amisha = 2;
		#100;
		clk_amisha = 0;
		wr_en_amisha = 1;
		w_addr_amisha = 0;
		r_addr_amisha = 0;
		w_data_amisha = 2;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 1;
		w_addr_amisha = 1;
		r_addr_amisha = 0;
		w_data_amisha = 7;
		#100;
		clk_amisha = 0;
		wr_en_amisha = 1;
		w_addr_amisha = 0;
		r_addr_amisha = 0;
		w_data_amisha = 7;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 1;
		w_addr_amisha = 2;
		r_addr_amisha = 0;
		w_data_amisha = 11;
		#100;
		clk_amisha = 0;
		wr_en_amisha = 1;
		w_addr_amisha = 0;
		r_addr_amisha = 0;
		w_data_amisha = 2;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 1;
		w_addr_amisha = 3;
		r_addr_amisha = 0;
		w_data_amisha = 16;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 0;
		w_addr_amisha = 0;
		r_addr_amisha = 2;
		w_data_amisha = 0 ;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 0;
		w_addr_amisha = 0;
		r_addr_amisha = 1;
		w_data_amisha = 2;
		#100;
		clk_amisha = 1;
		wr_en_amisha = 0;
		w_addr_amisha = 0;
		r_addr_amisha = 3;
		w_data_amisha = 0;
		#100;
	end     
endmodule

