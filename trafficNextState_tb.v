`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:42:36 11/30/2023
// Design Name:   trafficNextState
// Module Name:   /csehome/jeehye/2023_2_SNU_Logic_Design_Lab9_TrafficController/trafficNextState_tb.v
// Project Name:  Lab9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: trafficNextState
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module trafficNextState_tb;

	// Inputs
	reg clock;
	reg reset;
	reg car_sync;
	reg time_country;
	reg time_yellow;

	// Outputs
	wire [1:0] traffic_state;
	wire timer_reset;

	// Instantiate the Unit Under Test (UUT)
	trafficNextState uut (
		.clock(clock), 
		.reset(reset), 
		.car_sync(car_sync), 
		.time_country(time_country), 
		.time_yellow(time_yellow), 
		.traffic_state(traffic_state), 
		.t_reset(timer_reset)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		car_sync = 0;
		time_country = 0;
		time_yellow = 0;
		
		#50;
		// 1. car comming from country road
		car_sync = 1;
		// wait 20ns
		#20;
		time_country = 1;
		
		#50; // state goes to HY
		
		time_country = 0;
		time_yellow = 0;
		// 2. wait n-sec
		#10;
		time_country = 1;
		#20;
		time_yellow = 1;
		
		#50; // state goes to SG
		time_country = 0;
		time_yellow = 0;
		
		// 3. wait m-sec
		#50;
		time_country = 1;
		
		#50; // state goes to SY
		time_country = 0;
		time_yellow = 0;
		
		// 4. wait n-sec
		#30;
		time_yellow = 1;
		
		#50; // state goes to HG
		time_yellow = 0;
		time_country = 0;
		// 5. reset test
		// car comming from country road
		car_sync = 1;
		// wait 20ns
		#20;
		time_country = 1;
		#50;
		
		time_yellow = 0;
		time_country = 0;
		reset = 1;
		
		#50;
		
		reset = 0;
		
	end
	
	always begin
		#10 clock = 1;
		#10 clock = 0;
	end
      
endmodule

