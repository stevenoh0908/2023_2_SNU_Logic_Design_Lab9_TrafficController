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
	 input [1:0] state,
	 input car_sync,
    output reg time_country,
    output reg time_yellow,
	 output [3:0] current_time
    );

	parameter onesec_clockcount = 50000000;
	// parameter onesec_clockcount = 10; // for DEBUGGING
	
	// state definitions
	parameter STATE_HG = 2'b00;
	parameter STATE_HY = 2'b01;
	parameter STATE_SG = 2'b11;
	parameter STATE_SY = 2'b10;

	reg count = 0;
	wire [3:0] reg_counter;
	wire counter_reset;
	reg to_reset;
	reg [3:0] reg_country;
	reg [3:0] reg_yellow;
	reg [31:0] clockcount;
	
	// assign current_*
	assign current_time = reg_counter;
	
	counter_4bit timeCounter(.clock(count), .clear(counter_reset), .enable(1), .out(reg_counter));
	
	assign counter_reset = to_reset | reset;
	
	// clock counter 
	always @(posedge clock or posedge counter_reset) begin
		if (reset) clockcount <= 0;
		else begin
			clockcount <= clockcount + 1;
			// clock updater (if reset is given, make posedge to clock, the system clock is 50MHz)
			if (clockcount == onesec_clockcount) begin
				clockcount <= 0;
				count <= 1;
			end
			else begin 
				count <= 0;
			end
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
		#20;
		// timer reset?
		case (state)
			STATE_HG: begin
				if (car_sync | time_country) to_reset = 1;
			end
			STATE_HY: begin
				if (time_yellow) to_reset = 1;
			end
			STATE_SG: begin
				if (time_country) to_reset = 1;
			end
			STATE_SY: begin
				if (time_country) to_reset = 1;
			end
		endcase
		#20;
		to_reset = 0;
	end	

endmodule
