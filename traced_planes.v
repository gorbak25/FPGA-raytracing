`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:29:27 01/11/2019 
// Design Name: 
// Module Name:    traced_planes 
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
module traced_planes(
		input clk,
		input[2:0] obj_id,
		
		output reg[95:0] plane_origin,
		output reg[95:0] plane_normal,
		output reg[2:0] mat_id
    );
	 
	 always @(posedge clk) begin
		case(obj_id)
			3'd0: begin
				plane_origin[31:0] <= 0;
				plane_origin[63:32] <= $signed(-33554432); //-2.0
				plane_origin[95:64] <= 0;
				plane_normal[31:0] <= 0;
				plane_normal[63:32] <= 32'd16777216; //1.0
				plane_normal[95:64] <= 0;
				mat_id <= 0;
			end
			
			default: begin
				plane_origin <= ~(0);
				plane_normal <= ~(0);
				mat_id <= ~(0);
			end
			
		endcase
	 end


endmodule
