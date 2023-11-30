`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:55 11/30/2023 
// Design Name: 
// Module Name:    trafficlightDecoder 
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
module trafficlightDecoder(
    input state,
    output reg country_red,
    output reg country_yellow,
    output reg country_green,
	 output reg highway_red,
	 output reg highway_yellow,
	 output reg highway_green
    );

	// state definitions
	parameter STATE_HG = 2'b00;
	parameter STATE_HY = 2'b01;
	parameter STATE_SG = 2'b11;
	parameter STATE_SY = 2'b10;

	// comb logic for decoding state
	always @(state) begin
		country_red = 0;
		country_yellow = 0;
		country_green = 0;
		highway_red = 0;
		highway_yellow = 0;
		highway_green = 0;
		case (state)
			STATE_HG: begin
				country_red = 1;
				highway_green = 1;
			end
			STATE_HY: begin
				country_yellow = 1;
				highway_yellow = 1;
			end
			STATE_SG: begin
				country_green = 1;
				highway_red = 1;
			end
			STATE_SY: begin
				country_yellow = 1;
				highway_yellow = 1;
			end
		endcase
	end

endmodule
