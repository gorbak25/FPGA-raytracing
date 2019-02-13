`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:34:40 01/12/2019 
// Design Name: 
// Module Name:    ray_unified_normal_pipeline 
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
//LATENCY: 3
module ray_unified_normal_pipeline(
		input clk,
		input rst,
		
		input input_obj_type,
		
		//plane
		input[95:0] plane_normal,
		
		//sphere
		input[95:0] sphere_center,
		
		//common
		input[95:0] hit_pos,
		
		output reg[95:0] hit_normal_unnormalized,
		
		input new_data,
		output reg output_valid
    );
	 
	 parameter TYPE_SPHERE = 0;
	 parameter TYPE_PLANE = 1;
	 
	 wire[95:0] sphere_hit_normal_unnormalized;
	 wire sphere_output_valid;
	 wire sphere_new_data;
	 ray_sphere_normal_pipeline ray_sphere_normal_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .sphere_center(sphere_center), 
    .hit_pos(hit_pos), 
    .hit_normal_unnormalized(sphere_hit_normal_unnormalized), 
    .new_data(sphere_new_data), 
    .output_valid(sphere_output_valid)
    );
	 
	 wire[95:0] plane_hit_normal_unnormalized_undelayed;
	 wire plane_output_valid_undelayed;
	 wire plane_new_data;
	 ray_plane_normal_pipeline ray_plane_normal_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .plane_normal(plane_normal), 
    .hit_pos(hit_pos), 
    .hit_normal_unnormalized(plane_hit_normal_unnormalized_undelayed), 
    .new_data(plane_new_data), 
    .output_valid(plane_output_valid_undelayed)
    );
	 
	 wire[95:0] plane_hit_normal_unnormalized;
	 wire plane_output_valid;
	 
	 signal_pipe #(.L(0), .W(96)) plane_hit_normal_unnormalized_pipe (
    .clk(clk), 
    .in(plane_hit_normal_unnormalized_undelayed), 
    .out(plane_hit_normal_unnormalized)
    );
	 
	 signal_pipe #(.L(0), .W(1)) plane_was_hit_pipe (
    .clk(clk), 
    .in(plane_output_valid_undelayed), 
    .out(plane_output_valid)
    );
	 
	 //input comb driver
	 assign sphere_new_data = new_data && input_obj_type == TYPE_SPHERE;
	 assign plane_new_data = new_data && input_obj_type == TYPE_PLANE;
	 
	 //output driver
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
			hit_normal_unnormalized <= {96{1'bx}};
		end else begin
			output_valid <= 0;
			hit_normal_unnormalized <= {96{1'bx}};
			if(sphere_output_valid) begin
				output_valid <= 1;
				hit_normal_unnormalized <= sphere_hit_normal_unnormalized;
			end else if(plane_output_valid) begin
				output_valid <= 1;
				hit_normal_unnormalized <= plane_hit_normal_unnormalized;
			end
		end
	 end
endmodule
