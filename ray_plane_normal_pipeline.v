`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:26:13 01/12/2019 
// Design Name: 
// Module Name:    ray_plane_normal_pipeline 
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
//LATENCY: 1
module ray_plane_normal_pipeline(
		input clk,
		input rst,
		
		input[95:0] plane_normal,
		input[95:0] hit_pos,
		
		output reg[95:0] hit_normal_unnormalized,
		
		input new_data,
		output reg output_valid
    );
	 
	 always @(posedge clk) begin
		if(rst) begin
			hit_normal_unnormalized <= 0;
			output_valid <= 0;
		end else begin
			hit_normal_unnormalized <= plane_normal;
			output_valid <= new_data;
		end
	 end

endmodule
