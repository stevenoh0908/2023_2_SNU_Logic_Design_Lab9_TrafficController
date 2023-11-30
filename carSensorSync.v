`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:22 11/30/2023 
// Design Name: 
// Module Name:    carSensorSync 
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
module carSensorSync(
    input car_async,
    input clock,
    input reset,
    output reg car_sync
    );
	 
	 always @(posedge reset or posedge clock) begin
		if (reset) car_sync <= 0;
		else car_sync <= car_async;
	end

endmodule
