`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:54:34 11/30/2023
// Design Name:   counter_4bit
// Module Name:   /csehome/jeehye/2023_2_SNU_Logic_Design_Lab9_TrafficController/counter_4bit_tb.v
// Project Name:  Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_4bit_tb;

	// Inputs
	reg enable;
	reg clock;
	reg clear;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	counter_4bit uut (
		.enable(enable), 
		.clock(clock), 
		.clear(clear), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		enable = 0;
		clock = 0;
		clear = 1;
		#20 clear = 0;
		enable = 1;		
	end
	
	always begin
		#20 clock = 1;
		#20 clock = 0;
	end
      
endmodule

