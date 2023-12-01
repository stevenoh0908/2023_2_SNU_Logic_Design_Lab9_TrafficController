`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:41 11/30/2023 
// Design Name: 
// Module Name:    trafficController 
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
module trafficController(
    input clock,
    input car_async,
	 input reset,
	 input [3:0] time_country,
	 input [3:0] time_yellow,
    output country_red,
    output country_yellow,
    output country_green,
    output highway_red,
    output highway_yellow,
    output highway_green,
	 output [6:0] timer_seg_high,
	 output [6:0] timer_seg_low,
	 // DEBUGGING
	 //output tm_reset,
	 //output tm_country, output tm_yellow,
	 //output tm_carsync, 
	 output isClearing, 
	 output check
    );

	// init wires
	wire car_sync;
	wire al_country, al_yellow;
	wire [1:0] traffic_state;
	wire [3:0] timer_BCD;
	
	// DEBUGGING
	assign tm_carsync = car_sync;
	assign tm_country = al_country;
	assign tm_yellow = al_yellow;
	assign tm_reset = reset;

	// init each modules
	carSensorSync carsync(.car_async(car_async), .clock(clock), .reset(reset), .car_sync(car_sync));
	trafficTimer timer(.clock(clock), .reset(reset), .state(traffic_state), .car_sync(car_sync), .data_country(time_country), .data_yellow(time_yellow), .time_country(al_country), .time_yellow(al_yellow), .current_time(timer_BCD), .isClearing(isClearing));
	trafficNextState nextstate(.clock(clock), .reset(reset), .car_sync(car_sync), .time_country(al_country), .time_yellow(al_yellow), .traffic_state(traffic_state), .check(check));
	trafficlightDecoder decoder(.state(traffic_state),
		.country_red(country_red),
		.country_yellow(country_yellow),
		.country_green(country_green),
		.highway_red(highway_red),
		.highway_yellow(highway_yellow),
		.highway_green(highway_green));
	BCDto7SegmentDecoder decoder_country(.bcd(timer_BCD), .display_high(timer_seg_high), .display_low(timer_seg_low));

endmodule
