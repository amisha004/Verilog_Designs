`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:01:14 11/13/2022
// Design Name:   fifo_Amisha
// Module Name:   H:/Amisha/Chapter_4/fifo_test_Amisha.v
// Project Name:  Chapter_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo_Amisha
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifo_test_Amisha;
	// Inputs
	reg clk_amisha;
	reg reset_amisha;
	reg rd_amisha;
	reg wr_amisha;
	reg [7:0] w_data_amisha;
	// Outputs
	wire empty_amisha;
	wire full_amisha;
	wire [7:0] r_data_amisha;
	// Instantiate the Unit Under Test (UUT)
	fifo_Amisha uut (
		.clk_amisha(clk_amisha), 
		.reset_amisha(reset_amisha), 
		.rd_amisha(rd_amisha), 
		.wr_amisha(wr_amisha), 
		.w_data_amisha(w_data_amisha), 
		.empty_amisha(empty_amisha), 
		.full_amisha(full_amisha), 
		.r_data_amisha(r_data_amisha)
	);
	initial begin
		clk_amisha = 0;
		reset_amisha = 1;
		rd_amisha = 0;
		wr_amisha = 0;
		w_data_amisha = 0;
		#100;
		reset_amisha = 0;
		rd_amisha = 0;
		wr_amisha = 1;
		w_data_amisha = 8'b10111011;
		#100;
		rd_amisha = 1;
		wr_amisha = 0;
		w_data_amisha = 8'b10111011;
		#100;
		rd_amisha = 0;
		wr_amisha = 1;
		w_data_amisha = 8'b10100011;
		#100;
		rd_amisha = 1;
		wr_amisha = 0;
		w_data_amisha = 8'b10100011;
		#100;
		rd_amisha = 0;
		wr_amisha = 1;
		w_data_amisha = 8'b11111111;
		#100;
		rd_amisha = 1;
		wr_amisha = 0;
		w_data_amisha = 8'b11111111;
		#100;
		rd_amisha = 0;
		wr_amisha = 1;
		w_data_amisha = 8'b10100011;
		#100;
		rd_amisha = 0;
		wr_amisha = 1;
		w_data_amisha = 8'b11111111;
		#100;
	end
always #50 clk_amisha = ~clk_amisha;     
endmodule

