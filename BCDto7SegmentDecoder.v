`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:58 10/31/2023 
// Design Name: 
// Module Name:    BCDto7SegmentDecoder 
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

// Also Implemented for Displaying A ~ F (Hexadecimal format support)
// Implemented offMode Support (if offMode flag set to 1, than if the bcd = 0, no display)

module BCDto7SegmentDecoder(
    input [3:0] bcd,
    output reg [6:0] display_high,
	 output reg [6:0] display_low
    );
	 
	 always @(*) begin
		case (bcd)
			4'd0: begin
				display_high = 7'b1111110;
				display_low = 7'b1111110;
			end
			4'd1: begin
				display_high = 7'b1111110;
				display_low = 7'b0110000;
			end
			4'd2: begin
				display_high = 7'b1111110;
				display_low = 7'b1101101;
			end
			4'd3: begin
				display_high = 7'b1111110;
				display_low = 7'b1111001;
			end
			4'd4: begin
				display_high = 7'b1111110;
				display_low = 7'b0110011;
			end
			4'd5: begin
				display_high = 7'b1111110;
				display_low = 7'b1011011;
			end
			4'd6: begin
				display_high = 7'b1111110;
				display_low = 7'b1011111;
			end
			4'd7: begin
				display_high = 7'b1111110;
				display_low = 7'b1110000;
			end
			4'd8: begin
				display_high = 7'b1111110;
				display_low = 7'b1111111;
			end
			4'd9: begin
				display_high = 7'b1111110;
				display_low = 7'b1111011;
			end
			4'd10: begin
				display_high = 7'b0110000;
				display_low = 7'b1111110;
			end
			4'd11: begin
				display_high = 7'b0110000;
				display_low = 7'b0110000;
			end
			4'd12: begin
				display_high = 7'b0110000;
				display_low = 7'b1101101;
			end
			4'd13: begin
				display_high = 7'b0110000;
				display_low = 7'b1111001;
			end
			4'd14: begin
				display_high = 7'b0110000;
				display_low = 7'b0110011;
			end
			4'd15: begin
				display_high = 7'b0110000;
				display_low = 7'b1011011;
			end
			// default: display = 7'b0000000;
		endcase
	 end
endmodule