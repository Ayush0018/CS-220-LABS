`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:45:07 04/01/2024 
// Design Name: 
// Module Name:    encoder 
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
module encoder(clk,in,out);
input clk;
input [15:0] in;
output [7:0] out;
reg [7:0] out;

always@(in) begin
	case(in)
		16'b0000000000000001: out <= 8'b00000000;
		16'b0000000000000010: out <= 8'b00000001;
		16'b0000000000000100: out <= 8'b00000010;
		16'b0000000000001000: out <= 8'b00000011;
		16'b0000000000010000: out <= 8'b00000100;
		16'b0000000000100000: out <= 8'b00000101;
		16'b0000000001000000: out <= 8'b00000110;
		16'b0000000010000000: out <= 8'b00000111;
		16'b0000000100000000: out <= 8'b00001000;
		16'b0000001000000000: out <= 8'b00001001;
		16'b0000010000000000: out <= 8'b00001010;
		16'b0000100000000000: out <= 8'b00001011;
		16'b0001000000000000: out <= 8'b00001100;
		16'b0010000000000000: out <= 8'b00001101;
		16'b0100000000000000: out <= 8'b00001110;
		16'b1000000000000000: out <= 8'b00001111;
		default: out<= 8'b11111111;
	endcase
end
endmodule
