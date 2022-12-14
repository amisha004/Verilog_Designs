`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:10:21 11/14/2022
// Design Name:   fifo_Amisha
// Module Name:   H:/Amisha/Chapter_4/fifo_test__Amisha.v
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

module fifo_test__Amisha;

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
		// Initialize Inputs
		clk_amisha = 0;
		reset_amisha = 0;
		rd_amisha = 0;
		wr_amisha = 0;
		w_data_amisha = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

