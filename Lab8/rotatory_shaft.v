`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:14 03/20/2024 
// Design Name: 
// Module Name:    rotatory_shaft 
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
module rotatory_shaft(clk, rot_a, rot_b, rotation_event);

	input clk, rot_a, rot_b;
	output rotation_event;
	reg rotation_event;
	
	always @ (posedge clk) begin
		if ((rot_a == 1) && (rot_b == 1)) begin
			rotation_event <= 1;
		end
		else if ((rot_a == 0) && (rot_b == 0)) begin
			rotation_event <= 0;
		end
	end

endmodule
