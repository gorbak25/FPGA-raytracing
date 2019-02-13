`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:39:23 01/12/2019 
// Design Name: 
// Module Name:    ray_unified_intersection_pipeline 
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
//LATENCY: 84
module ray_unified_intersection_pipeline(
		input clk,
		input rst,
		
		input input_obj_type,
		
		input[95:0] ray_origin,
		input[95:0] ray_direction,
		
		//plane
		input[95:0] plane_origin,
		input[95:0] plane_normal,
		
		//sphere
		input[95:0] sphere_center,
		input[31:0] sphere_r2,
		
		output reg was_hit,
		output reg[31:0] hit_dist,
		
		input new_data,
		output reg output_valid,
		output reg output_obj_type
    );
	 
	 parameter TYPE_SPHERE = 0;
	 parameter TYPE_PLANE = 1;
	 
	 wire[31:0] sphere_hit_dist;
	 wire sphere_was_hit;
	 wire sphere_hit_data_valid;
	 wire sphere_new_data;
	 
	 ray_sphere_intersection_pipeline ray_sphere_intersection_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .sphere_center(sphere_center), 
    .sphere_r2(sphere_r2), 
    .ray_origin(ray_origin), 
    .ray_direction(ray_direction), 
    .was_hit(sphere_was_hit), 
    .hit_dist(sphere_hit_dist), 
    .new_data(sphere_new_data), 
    .output_valid(sphere_hit_data_valid)
    );
	 
	 wire[31:0] plane_hit_dist_undelayed;
	 wire plane_was_hit_undelayed;
	 wire plane_hit_data_valid_undelayed;
	 wire plane_new_data;
	 
	 ray_plane_intersection_pipeline ray_plane_intersection_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .plane_origin(plane_origin), 
    .plane_normal(plane_normal), 
    .ray_origin(ray_origin), 
    .ray_direction(ray_direction), 
    .was_hit(plane_was_hit_undelayed), 
    .hit_dist(plane_hit_dist_undelayed), 
    .new_data(plane_new_data), 
    .output_valid(plane_hit_data_valid_undelayed)
    );
	 
	 wire[31:0] plane_hit_dist;
	 wire plane_was_hit;
	 wire plane_hit_data_valid;
	 
	 signal_pipe #(.L(83 - 43 - 1), .W(32)) plane_hit_dist_pipe (
    .clk(clk), 
    .in(plane_hit_dist_undelayed), 
    .out(plane_hit_dist)
    );
	 
	 signal_pipe #(.L(83 - 43 - 1), .W(1)) plane_was_hit_pipe (
    .clk(clk), 
    .in(plane_was_hit_undelayed), 
    .out(plane_was_hit)
    );
	 
	 signal_pipe #(.L(83 - 43 - 1), .W(1)) plane_hit_data_valid_pipe (
    .clk(clk), 
    .in(plane_hit_data_valid_undelayed), 
    .out(plane_hit_data_valid)
    );
	 
	 //input comb driver
	 assign sphere_new_data = new_data && input_obj_type == TYPE_SPHERE;
	 assign plane_new_data = new_data && input_obj_type == TYPE_PLANE;
	 
	 //output driver
	 always @(posedge clk) begin
	   if(rst) begin
			output_valid <= 0; 
			output_obj_type <= 0;
			was_hit <= 0;
			hit_dist <= 0;
		end else begin
			output_valid <= 0; 
			output_obj_type <= 1'bx;
			was_hit <= 1'bx;
			hit_dist <= {32{1'bx}};
			if(sphere_hit_data_valid) begin
				output_valid <= 1;
				output_obj_type <= TYPE_SPHERE;
				was_hit <= sphere_was_hit;
				hit_dist <= sphere_hit_dist;
			end else if(plane_hit_data_valid) begin
				output_valid <= 1;
				output_obj_type <= TYPE_PLANE;
				was_hit <= plane_was_hit;
				hit_dist <= plane_hit_dist;
			end
		end
	 end

endmodule
