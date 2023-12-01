`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:44 11/30/2023 
// Design Name: 
// Module Name:    counter_4bit 
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
module counter_4bit(
    input clock,
    input clear,
    output [3:0] out
    );

	reg [3:0] cnt;

	always @(posedge clock or posedge clear) begin // async clear
		if (clear) cnt <= 4'b0000;
		else begin
			if (cnt == 4'b1111) cnt <= 4'b0000;
			else cnt <= cnt + 1;
		end
	end
	
	assign out = cnt;

endmodule
