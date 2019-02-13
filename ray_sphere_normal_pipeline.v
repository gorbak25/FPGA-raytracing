`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:30:49 01/12/2019 
// Design Name: 
// Module Name:    ray_sphere_normal_pipeline 
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
//LATENCY: 2
module ray_sphere_normal_pipeline(
		input clk,
		input rst,
		
		input[95:0] sphere_center,
		input[95:0] hit_pos,
		
		output reg[95:0] hit_normal_unnormalized,
		
		input new_data,
		output reg output_valid
    );
	 
	 reg[95:0] stage1_in_sphere_center;
	 reg[95:0] stage1_in_hit_pos;
	 reg stage1_valid;
	 
	 always @(posedge clk) begin
		if(rst) begin
			stage1_in_sphere_center <= 0;
			stage1_in_hit_pos <= 0;
			stage1_valid <= 0;
		end else begin
			stage1_in_sphere_center <= sphere_center;
			stage1_in_hit_pos <= hit_pos;
			stage1_valid <= new_data;
		end
	 end
	 
	 wire[95:0] stage1_from_center_to_hit;
	 vector_sub_comb sub_sphere_norm_calc(.v1(stage1_in_hit_pos), .v2(stage1_in_sphere_center), .r(stage1_from_center_to_hit));

	 always @(posedge clk) begin
		if(rst) begin
			hit_normal_unnormalized <= 0;
			output_valid <= 0;
		end else begin
			hit_normal_unnormalized <= stage1_from_center_to_hit;
			output_valid <= stage1_valid;
		end
	 end

endmodule
