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
    input [3:0] data_country,
    input [3:0] data_yellow,
	 input [1:0] state,
	 input car_sync,
    output reg time_country,
    output reg time_yellow,
	 output [3:0] current_time, 
	 output reg isClearing
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
	//reg time_country_reg;
	//reg time_yellow_reg;
	
	
	// assign current_*
	assign current_time = reg_counter;
	assign counter_reset = to_reset || reset;
	
	//assign time_country = time_country_reg;
	//assign time_yellow = time_yellow_reg;
	
	counter_4bit timeCounter(.clock(count), .clear(counter_reset), .out(reg_counter));
	
	// clock counter 
	always @(posedge clock) begin
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
	
	
	// reg_country, reg_yellow calculator
	always @(reg_counter) begin
		to_reset = 0;
		if (reg_counter > data_country-1) begin
			isClearing = 1;
			if (state == STATE_HG || state == STATE_SG) time_country = 1;
			else time_country = 0;
		end
		else begin
			isClearing = 0;
			time_country = 0;
		end
		if (reg_counter > data_yellow-1) begin
			isClearing = 1;
			if (state == STATE_HY || state == STATE_SY) time_yellow = 1;
			else time_yellow = 0;
		end
		else begin
			time_yellow = 0;
			isClearing = 0;
		end

		case (state)
			STATE_HG: begin
				if (car_sync && time_country) to_reset = 1;
			end
			STATE_HY: begin
				if (time_yellow) to_reset = 1;
			end
			STATE_SG: begin
				if (time_country) to_reset = 1;
			end
			STATE_SY: begin
				if (time_yellow) to_reset = 1;
			end
		endcase
	end

endmodule
