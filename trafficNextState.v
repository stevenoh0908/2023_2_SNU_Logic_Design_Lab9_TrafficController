`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:32:02 11/30/2023 
// Design Name: 
// Module Name:    trafficNextState 
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
module trafficNextState(
    input clock,
	 input reset,
    input car_sync,
    input time_country,
    input time_yellow,
    output [1:0] traffic_state,
	 output t_reset
    );

	// state definitions
	parameter STATE_HG = 2'b00;
	parameter STATE_HY = 2'b01;
	parameter STATE_SG = 2'b11;
	parameter STATE_SY = 2'b10;
	
	// registers
	reg [1:0] state = STATE_HG;
	reg timer_reset = 0;
	
	// assigning
	assign traffic_state = state;
	assign t_reset = timer_reset;
	
	// next state logics (async reset)
	always @(posedge reset or posedge clock) begin
		if (reset) state <= 2'b00;
		else begin
			case (state)
				STATE_HG: begin
					if (time_country & car_sync) begin
						state <= STATE_HY;
						timer_reset = 1;
						#40 timer_reset = 0;
					end
					else state <= STATE_HG;
				end
				STATE_HY: begin
					if (time_yellow) begin
						state <= STATE_SG;
						timer_reset = 1;
						#40 timer_reset = 0;
					end
					else state <= STATE_HY;
				end
				STATE_SG: begin
					if (time_country) begin
						state <= STATE_SY;
						timer_reset = 1;
						#40 timer_reset = 0;
					end
					else state <= STATE_SG;
				end
				STATE_SY: begin
					if (time_yellow) begin
						state <= STATE_HG;
						timer_reset = 1;
						#40 timer_reset = 0;
					end
					else state <= STATE_SY;
				end
			endcase
		end
	end

endmodule
