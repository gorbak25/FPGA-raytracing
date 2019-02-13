`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:57:36 01/10/2019 
// Design Name: 
// Module Name:    traced_spheres 
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
module traced_spheres(
		input clk,
		input[2:0] obj_id,
		
		output reg[95:0] sphere_center,
		output reg[31:0] sphere_r2,
		output reg[2:0] mat_id
    );
	 
	 always @(posedge clk) begin
		case(obj_id)
			3'd0: begin
				sphere_center[31:0] <= 0;
				sphere_center[63:32] <= 0;
				sphere_center[95:64] <= 0;
				
				sphere_r2 <= 32'd16777216; //1.0
				mat_id <= 0;
			end
			
			3'd1: begin
				sphere_center[31:0] <= 32'd33554432; //2.0
				sphere_center[63:32] <= 0;
				sphere_center[95:64] <= 0;
				
				sphere_r2 <= 32'd8388608; //0.5
				mat_id <= 1;
			end
			
			3'd2: begin
				sphere_center[31:0] <= $signed(-33554432); //-2.0
				sphere_center[63:32] <= 0;
				sphere_center[95:64] <= 0;
				
				sphere_r2 <= 32'd8388608; //0.5
				mat_id <= 2;
			end
			
			default: begin
				sphere_center <= ~(0);
				sphere_r2 <= ~(0);
				mat_id <= ~(0);
			end
			
		endcase
	 end

endmodule
