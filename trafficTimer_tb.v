`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:04:41 11/30/2023
// Design Name:   trafficTimer
// Module Name:   /csehome/jeehye/2023_2_SNU_Logic_Design_Lab9_TrafficController/trafficTimer_tb.v
// Project Name:  Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: trafficTimer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module trafficTimer_tb;

	// Inputs
	reg clock;
	reg reset;
	reg load;
	reg [3:0] data_country;
	reg [3:0] data_yellow;

	// Outputs
	wire time_country;
	wire time_yellow;

	// Instantiate the Unit Under Test (UUT)
	trafficTimer uut (
		.clock(clock), 
		.reset(reset), 
		.load(load), 
		.data_country(data_country), 
		.data_yellow(data_yellow), 
		.time_country(time_country), 
		.time_yellow(time_yellow),
	);

	initial begin
		clock = 0;
		reset = 1;
		load = 1;
		data_country = 2;
		data_yellow = 1;
		#100;
		load = 0;
		reset = 0;
		
		repeat (20) #20;
		load = 0; reset = 1;
		#20 reset = 0;
	end
	
	always begin
		#20 clock = 1;
		#20 clock = 0;
	end
      
endmodule

