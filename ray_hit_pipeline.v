`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:52:56 01/12/2019 
// Design Name: 
// Module Name:    ray_hit_pipeline 
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
//LATENCY: 158
module ray_hit_pipeline(
		input clk,
		input rst,
		
		input[2:0] obj_id,
		input[95:0] ray_origin,
		input[95:0] ray_direction,
		
		output reg was_hit,
		output reg[31:0] hit_dist,
		output reg[95:0] hit_pos,
		output reg[95:0] hit_normal,
		output reg[2:0] hit_mat_id,
		
		input new_data,
		output reg output_valid
    );
	 
	 parameter TYPE_SPHERE = 0;
	 parameter TYPE_PLANE = 1;
	 
	 //stage1 - fetch and get object data from cache
	 reg[2:0] stage1_obj_id;
	 reg[95:0] stage1_ray_origin;
	 reg[95:0] stage1_ray_direction;
	 reg stage1_valid;
	 
	 always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
			stage1_obj_id <= 0;
			stage1_ray_origin <= 0;
			stage1_ray_direction <= 0;
		end else begin
			stage1_valid <= new_data;
			stage1_obj_id <= obj_id;
			stage1_ray_origin <= ray_origin;
			stage1_ray_direction <= ray_direction;
		end
	 end
	 
	 //stage2 - prepare request to sub type
	 wire[2:0] stage2_sub_id;
	 wire stage2_type_id;
	 traced_objects traced_objects_cache (
    .clk(clk), 
    .obj_id(stage1_obj_id), 
    .sub_id(stage2_sub_id), 
    .type_id(stage2_type_id)
    );
	 
	 reg[95:0] stage2_ray_origin;
	 reg[95:0] stage2_ray_direction;
	 reg stage2_valid;
	 always @(posedge clk) begin
		if(rst) begin
			stage2_ray_origin <= 0;
			stage2_ray_direction <= 0;
			stage2_valid <= 0;
		end else begin
			stage2_ray_origin <= stage1_ray_origin;
			stage2_ray_direction <= stage1_ray_direction;
			stage2_valid <= stage1_valid;
		end
	 end
	 
	 wire[2:0] stage2_sphere_obj_id;
	 assign stage2_sphere_obj_id = stage2_type_id == TYPE_SPHERE ? stage2_sub_id : 0;
	 
	 wire[2:0] stage2_plane_obj_id;
	 assign stage2_plane_obj_id = stage2_type_id == TYPE_PLANE ? stage2_sub_id : 0;
	 
	 //stage3 - get data about subtype
	 wire[95:0] stage3_sphere_center;
	 wire[31:0] stage3_sphere_r2;
	 wire[2:0] stage3_sphere_mat_id;
	 
	 traced_spheres traced_spheres_cache (
    .clk(clk), 
    .obj_id(stage2_sphere_obj_id), 
    .sphere_center(stage3_sphere_center), 
    .sphere_r2(stage3_sphere_r2), 
    .mat_id(stage3_sphere_mat_id)
    );
	 
	 wire[95:0] stage3_plane_origin;
	 wire[95:0] stage3_plane_normal;
	 wire[2:0] stage3_plane_mat_id;
	 
	 traced_planes traced_planes_cache (
    .clk(clk), 
    .obj_id(stage2_plane_obj_id), 
    .plane_origin(stage3_plane_origin), 
    .plane_normal(stage3_plane_normal), 
    .mat_id(stage3_plane_mat_id)
    );
	 
	 reg[95:0] stage3_ray_origin;
	 reg[95:0] stage3_ray_direction;
	 reg stage3_valid;
	 reg stage3_type_id;
	 always @(posedge clk) begin
		if(rst) begin
			stage3_ray_origin <= 0;
			stage3_ray_direction <= 0;
			stage3_valid <= 0;
			stage3_type_id <= 0;
		end else begin
			stage3_ray_origin <= stage2_ray_origin;
			stage3_ray_direction <= stage2_ray_direction;
			stage3_valid <= stage2_valid;
			stage3_type_id <= stage2_type_id;
		end
	 end
	 
	 wire[2:0] stage3_mat_id;
	 assign stage3_mat_id = stage3_type_id == TYPE_SPHERE ? stage3_sphere_mat_id : stage3_plane_mat_id;
	 
	 //stage4 -> all data is prepared -> we can pass it to the unified intersection pipeline
	 wire stage4a_was_hit;
	 wire[31:0] stage4a_hit_dist;
	 wire stage4a_valid;
	 wire stage4a_type_id;
	 ray_unified_intersection_pipeline ray_unified_intersection_pipeline_instance (
    .clk(clk), 
	 .rst(rst),
    .input_obj_type(stage3_type_id), 
    .ray_origin(stage3_ray_origin), 
    .ray_direction(stage3_ray_direction), 
    .plane_origin(stage3_plane_origin), 
    .plane_normal(stage3_plane_normal), 
    .sphere_center(stage3_sphere_center), 
    .sphere_r2(stage3_sphere_r2), 
    .was_hit(stage4a_was_hit), 
    .hit_dist(stage4a_hit_dist), 
    .new_data(stage3_valid), 
    .output_valid(stage4a_valid), 
    .output_obj_type(stage4a_type_id)
    );
	 
	 wire[95:0] stage4b_ray_origin;
	 wire[95:0] stage4a_ray_direction;
	 signal_pipe #(.L(84+7-1), .W(96)) ray_origin_pipe (.clk(clk), .in(stage3_ray_origin), .out(stage4b_ray_origin));
	 signal_pipe #(.L(84-1), .W(96)) ray_direction_pipe (.clk(clk), .in(stage3_ray_direction), .out(stage4a_ray_direction));
	 
	 wire[2:0]  stage4_mat_id;
	 //wire[95:0] stage4_ray_origin;
	 wire[95:0] stage4_ray_direction;
	 wire[95:0] stage4_sphere_center;
	 wire[95:0] stage4_plane_normal;
	 wire       stage4_was_hit;
	 wire[31:0] stage4_hit_dist;
	 wire       stage4_valid;
	 wire       stage4_type_id;
	 
	 signal_pipe #(.L(84+7+2-1), .W(3)) mat_id_pipe (.clk(clk), .in(stage3_mat_id), .out(stage4_mat_id));
	 //signal_pipe #(.L(2-1), .W(96)) ray_origin_pipe2 (.clk(clk), .in(stage4b_ray_origin), .out(stage4_ray_origin));
	 signal_pipe #(.L(9-1), .W(96)) ray_direction_pipe2 (.clk(clk), .in(stage4a_ray_direction), .out(stage4_ray_direction));
	 signal_pipe #(.L(84+7+2-1), .W(96)) sphere_center_pipe (.clk(clk), .in(stage3_sphere_center), .out(stage4_sphere_center));
	 signal_pipe #(.L(84+7+2-1), .W(96)) plane_normal_pipe (.clk(clk), .in(stage3_plane_normal), .out(stage4_plane_normal));
	 signal_pipe #(.L(9-1), .W(1)) pipe_stage4_was_hit (.clk(clk), .in(stage4a_was_hit), .out(stage4_was_hit));
	 signal_pipe #(.L(9-1), .W(32)) pipe_stage4_hit_dist (.clk(clk), .in(stage4a_hit_dist), .out(stage4_hit_dist));
	 signal_pipe #(.L(9-1), .W(1)) pipe_stage4_type_id (.clk(clk), .in(stage4a_type_id), .out(stage4_type_id));
	 
	 //calculate hit pos in stage4
	 wire[95:0] stage4b_tmp;
	 wire       stage4b_valid;
	 wire[95:0] stage4_hit_pos;
	 vector_mul vec_hit_point_mul(.clk(clk), .rst(rst), .new_data(stage4a_valid), .output_valid(stage4b_valid), .v(stage4a_ray_direction), .a(stage4a_hit_dist), .r(stage4b_tmp));
	 vector_add vec_hit_point_add(.clk(clk), .rst(rst), .new_data(stage4b_valid), .output_valid(stage4_valid), .v1(stage4b_tmp), .v2(stage4b_ray_origin), .r(stage4_hit_pos));
	 
	 //stage5 - pass the data to the unified normal calculation pipeline
	 wire[95:0] stage5_hit_normal_unnormalized;
	 wire stage5_valid;
	 ray_unified_normal_pipeline ray_unified_normal_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .input_obj_type(stage4_type_id), 
    .plane_normal(stage4_plane_normal), 
    .sphere_center(stage4_sphere_center), 
    .hit_pos(stage4_hit_pos), 
    .hit_normal_unnormalized(stage5_hit_normal_unnormalized), 
    .new_data(stage4_valid), 
    .output_valid(stage5_valid)
    );
	 
	 wire[2:0]  stage5_mat_id;
	 wire[95:0] stage5_ray_direction;
	 wire       stage5_was_hit;
	 wire[31:0] stage5_hit_dist;
	 wire[95:0] stage5_hit_pos;
	 
	 signal_pipe #(.L(2), .W(3)) stage5_mat_id_pipe (.clk(clk), .in(stage4_mat_id), .out(stage5_mat_id));
	 signal_pipe #(.L(2), .W(96)) stage5_ray_direction_pipe (.clk(clk), .in(stage4_ray_direction), .out(stage5_ray_direction));
	 signal_pipe #(.L(2), .W(1)) stage5_was_hit_pipe (.clk(clk), .in(stage4_was_hit), .out(stage5_was_hit));
	 signal_pipe #(.L(2), .W(32)) stage5_hit_dist_pipe (.clk(clk), .in(stage4_hit_dist), .out(stage5_hit_dist));
	 signal_pipe #(.L(2), .W(96)) stage5_hit_pos_pipe (.clk(clk), .in(stage4_hit_pos), .out(stage5_hit_pos));
	 
	 //stage6 - normalize the unnormalized normal
	 wire[95:0] stage6a_hit_normal_unoriented;
	 wire[95:0] stage6a_ray_direction;
	 wire stage6a_valid;
	 vector_normalizer_pipeline vector_surface_normalizer (
    .clk(clk), 
	 .rst(rst),
    .v(stage5_hit_normal_unnormalized), 
    .new_data(stage5_valid), 
    .r(stage6a_hit_normal_unoriented), 
    .output_valid(stage6a_valid)
    );
	 signal_pipe #(.L(50-1), .W(96)) stage6a_ray_direction_pipe (.clk(clk), .in(stage5_ray_direction), .out(stage6a_ray_direction));
	 
	 wire[2:0]  stage6_mat_id;
	 //wire[95:0] stage6_ray_direction;
	 wire[95:0] stage6_hit_normal_unoriented;
	 wire       stage6_was_hit;
	 wire[31:0] stage6_hit_dist;
	 wire[95:0] stage6_hit_pos;
	 wire       stage6_valid;
	 
	 signal_pipe #(.L(50+8-1), .W(3)) stage6_mat_id_pipe (.clk(clk), .in(stage5_mat_id), .out(stage6_mat_id));
	 //signal_pipe #(.L(8-1),    .W(96)) stage6_ray_direction_pipe (.clk(clk), .in(stage6a_ray_direction),         .out(stage6_ray_direction));
	 signal_pipe #(.L(8-1),    .W(96)) stage6_hit_normal_unoriented_pipe (.clk(clk), .in(stage6a_hit_normal_unoriented), .out(stage6_hit_normal_unoriented));
	 signal_pipe #(.L(50+8-1), .W(1)) stage6_was_hit_pipe (.clk(clk), .in(stage5_was_hit), .out(stage6_was_hit));
	 signal_pipe #(.L(50+8-1), .W(32)) stage6_hit_dist_pipe (.clk(clk), .in(stage5_hit_dist), .out(stage6_hit_dist));
	 signal_pipe #(.L(50+8-1), .W(96)) stage6_hit_pos_pipe (.clk(clk), .in(stage5_hit_pos), .out(stage6_hit_pos));
	 
	 //orient the surface normal such that the normal faces us
	 wire[31:0] stage_6_dot;
	 vector_dot normal_orienter_dot (.clk(clk), .rst(rst), .new_data(stage6a_valid), .output_valid(stage6_valid), .v1(stage6a_hit_normal_unoriented), .v2(stage6a_ray_direction), .r(stage_6_dot));
	 
	 wire[95:0] stage6_hit_normal_unoriented_neg;
	 vector_neg vector_neg_instance (
    .v(stage6_hit_normal_unoriented), 
    .r(stage6_hit_normal_unoriented_neg)
    );
	 
	 wire[95:0] stage6_hit_normal;
	 assign stage6_hit_normal = $signed(stage_6_dot) < 0 ? stage6_hit_normal_unoriented : stage6_hit_normal_unoriented_neg;
	 
	 //stage6 -> OUTSIDE
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
			was_hit <= 0;
			hit_dist <= 0;
			hit_pos <= 0;
			hit_normal <= 0;
			hit_mat_id <= 0;
		end else begin
			output_valid <= stage6_valid;
			was_hit <= stage6_was_hit;
			hit_dist <= stage6_hit_dist;
			hit_pos <= stage6_hit_pos;
			hit_normal <= stage6_hit_normal;
			hit_mat_id <= stage6_mat_id;
		end
	 end

endmodule
