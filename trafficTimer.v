`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:50 11/30/2023 
// Design Name: 
// Module Name:    trafficTimer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module trafficTimer(
	 input clock,
    input reset,
    input load,
    input [3:0] data_country,
    input [3:0] data_yellow,
    output reg time_country,
    output reg time_yellow
    );

	parameter onesec_clockcount = 50000000;
	// parameter onesec_clockcount = 10; // for DEBUGGING

	reg count = 0;
	wire [3:0] reg_counter;
	reg [3:0] reg_country;
	reg [3:0] reg_yellow;
	reg [31:0] clockcount;
	
	counter_4bit timeCounter(.clock(count), .clear(reset), .enable(1), .out(reg_counter));
	
	// clock counter 
	always @(posedge clock) begin
		if (reset) clockcount <= 0;
		else clockcount <= clockcount + 1;
		// clock updater (if reset is given, make posedge to clock, the system clock is 50MHz)
		if (clockcount == onesec_clockcount) begin
			clockcount <= 0;
			count <= 1;
		end
		else begin 
			count <= 0;
		end
	end
	
	// loader (asynchronous load)
	always @(posedge load) begin
		reg_country <= data_country;
		reg_yellow <= data_yellow;
	end
	
	// reg_country, reg_yellow calculator
	always @(reg_counter) begin
		if (reg_counter >= reg_country) time_country <= 1;
		else time_country <= 0;
		if (reg_counter >= reg_yellow) time_yellow <= 1;
		else time_yellow <= 0;
	end	

endmodule
