`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:42:56 01/12/2019 
// Design Name: 
// Module Name:    ray_core 
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
module ray_core(
		input clk,
		input rst,
		
		//input from uart_subsytem
		input          l2_write_enable,
		input[2:0]     l2_write_id,
		input[289-1:0] l2_write_material,
		input          l2_flush_to_l1,
		
		input[2:0]    NUM_OF_OBJECTS,
		input[2:0]    NUM_OF_LIGHTS,
		input[95:0]   ambient_light_color,
		
		//input from ray caster
		input[10:0] image_x,
		input[10:0] image_y,
		input[95:0] casted_ray_origin,
		input[95:0] casted_ray_direction,
		
		//data for image write back
		output reg[10:0] store_image_x,
		output reg[10:0] store_image_y,
	   output reg[96*5-1:0] store_diffuse_light_acc,
	   output reg[96*4-1:0] store_reflection_coeffs,
	
		//controll signals
		input new_data,
		output reg output_valid,
		//combinatorial signal for stalling the data source
		output stall_source
    );
	 
	 integer i;
	 
	 parameter RECURSION_LIMIT = 5;
	 
	 parameter MODE_PRIMARY_RAY = 0;
	 parameter MODE_SHADOW_RAY = 1;
	 
	 //FEEDBACK:
	 //metadata
	 reg [10:0]     feedback_image_x;
	 reg [10:0]     feedback_image_y;
	 reg [2:0]      feedback_obj_id;
	 reg [2:0]      feedback_light_id;
	 reg [2:0]      feedback_recursion_level;
	 reg            feedback_tracing_mode; //0 - if this is a primary ray, 1 - if this is a shadow ray
	 //current traced ray
	 reg [95:0]     feedback_casted_ray_origin;
	 reg [95:0]     feedback_casted_ray_direction;
	 reg            feedback_casted_ray_is_normalized;
	 //lighting + reflections
	 reg [95:0]     feedback_cur_light_color;
	 reg [95:0]     feedback_primary_ray_hit_normal;
	 reg [95:0]     feedback_primary_ray_dir;
	 reg [95:0]     feedback_primary_ray_hit_dif;
	 reg [31:0]     feedback_distance_to_cur_light2;
	 //closest intersection loop
	 reg            feedback_is_hit;
	 reg [31:0]     feedback_closest_hit_dist;
	 reg [95:0]     feedback_closest_hit_pos;
	 reg [95:0]     feedback_closest_hit_normal;
	 reg [2:0]      feedback_closest_hit_mat_id;
	 //light_accumulator
	 reg [95:0]     feedback_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 reg [95:0]     feedback_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //ctl
	 reg            feedback_valid;
	 
	 //FEEDBACK1: - latch for improving timing 
	 //metadata
	 reg [10:0]     feedback1_image_x;
	 reg [10:0]     feedback1_image_y;
	 reg [2:0]      feedback1_obj_id;
	 reg [2:0]      feedback1_light_id;
	 reg [2:0]      feedback1_recursion_level;
	 reg            feedback1_tracing_mode; //0 - if this is a primary ray, 1 - if this is a shadow ray
	 //current traced ray
	 reg [95:0]     feedback1_casted_ray_origin;
	 reg [95:0]     feedback1_casted_ray_direction;
	 reg            feedback1_casted_ray_is_normalized;
	 //lighting + reflections
	 reg [95:0]     feedback1_cur_light_color;
	 reg [95:0]     feedback1_primary_ray_hit_normal;
	 reg [95:0]     feedback1_primary_ray_dir;
	 reg [95:0]     feedback1_primary_ray_hit_dif;
	 reg [31:0]     feedback1_distance_to_cur_light2;
	 //closest intersection loop
	 reg            feedback1_is_hit;
	 reg [31:0]     feedback1_closest_hit_dist;
	 reg [95:0]     feedback1_closest_hit_pos;
	 reg [95:0]     feedback1_closest_hit_normal;
	 reg [2:0]      feedback1_closest_hit_mat_id;
	 //light_accumulator
	 reg [95:0]     feedback1_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 reg [95:0]     feedback1_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //ctl
	 reg            feedback1_valid;
	 
	 initial feedback1_valid = 0;
	 always @(posedge clk) begin
		if(rst) begin
			feedback1_valid <= 0;
		end else begin
			feedback1_image_x 						<= feedback_image_x;
			feedback1_image_y 						<=	feedback_image_y;
			feedback1_obj_id  						<=	feedback_obj_id;
			feedback1_light_id						<=	feedback_light_id;
			feedback1_recursion_level				<= feedback_recursion_level;
			feedback1_tracing_mode					<= feedback_tracing_mode;
			feedback1_casted_ray_origin			<= feedback_casted_ray_origin;
			feedback1_casted_ray_direction		<= feedback_casted_ray_direction;
			feedback1_casted_ray_is_normalized	<= feedback_casted_ray_is_normalized;
			feedback1_cur_light_color				<= feedback_cur_light_color;
			feedback1_primary_ray_hit_normal		<= feedback_primary_ray_hit_normal;
			feedback1_primary_ray_dir				<= feedback_primary_ray_dir;
			feedback1_primary_ray_hit_dif			<= feedback_primary_ray_hit_dif;
			feedback1_distance_to_cur_light2		<= feedback_distance_to_cur_light2;
			feedback1_is_hit							<= feedback_is_hit;
			feedback1_closest_hit_dist				<= feedback_closest_hit_dist;
			feedback1_closest_hit_pos				<= feedback_closest_hit_pos;
			feedback1_closest_hit_normal			<= feedback_closest_hit_normal;
			feedback1_closest_hit_mat_id			<= feedback_closest_hit_mat_id;
			for(i = 0; i<RECURSION_LIMIT; i = i+1) begin
				feedback1_diffuse_light_acc[i]  	<= feedback_diffuse_light_acc[i];
				if(i != RECURSION_LIMIT-1) begin
					feedback1_reflection_coeffs[i]	<= feedback_reflection_coeffs[i];
				end
			end
			feedback1_valid							<= feedback_valid;
		end
	 end
	 
	 //STAGE1 - insert feedback data or fetch new data:
	 //metadata
	 reg [10:0]     stage1_image_x;
	 reg [10:0]     stage1_image_y;
	 reg [2:0]      stage1_obj_id;
	 reg [2:0]      stage1_light_id;
	 reg [2:0]      stage1_recursion_level;
	 reg            stage1_tracing_mode; //0 - if this is a primary ray, 1 - if this is a shadow ray
	 //current traced ray
	 reg [95:0]     stage1_casted_ray_origin;
	 reg [95:0]     stage1_casted_ray_direction;
	 reg            stage1_casted_ray_is_normalized;
	 //lighting + reflections
	 reg [95:0]     stage1_cur_light_color;
	 reg [95:0]     stage1_primary_ray_hit_normal;
	 reg [95:0]     stage1_primary_ray_dir;
	 reg [95:0]     stage1_primary_ray_hit_dif;
	 reg [31:0]     stage1_distance_to_cur_light2;
	 //closest intersection loop
	 reg            stage1_is_hit;
	 reg [31:0]     stage1_closest_hit_dist;
	 reg [95:0]     stage1_closest_hit_pos;
	 reg [95:0]     stage1_closest_hit_normal;
	 reg [2:0]      stage1_closest_hit_mat_id;
	 //light_accumulator
	 reg [95:0]     stage1_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 reg [95:0]     stage1_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //ctl
	 reg            stage1_valid;
	 //--------------------------------------
	 
	 assign stall_source = new_data && feedback1_valid;
	 always @(posedge clk) begin
		stage1_valid <= 0;
		if(feedback1_valid) begin
			//recursion
			stage1_image_x                  <= feedback1_image_x;
			stage1_image_y                  <= feedback1_image_y;
			stage1_obj_id                   <= feedback1_obj_id;
			stage1_light_id                 <= feedback1_light_id;
			stage1_recursion_level          <= feedback1_recursion_level;
			stage1_tracing_mode             <= feedback1_tracing_mode;
			stage1_casted_ray_origin        <= feedback1_casted_ray_origin;
			stage1_casted_ray_direction     <= feedback1_casted_ray_direction;
			stage1_casted_ray_is_normalized <= feedback1_casted_ray_is_normalized;
			stage1_cur_light_color          <= feedback1_cur_light_color;
			stage1_primary_ray_hit_normal   <= feedback1_primary_ray_hit_normal;
			stage1_primary_ray_dir          <= feedback1_primary_ray_dir;
			stage1_primary_ray_hit_dif      <= feedback1_primary_ray_hit_dif;
			stage1_distance_to_cur_light2   <= feedback1_distance_to_cur_light2;
			stage1_is_hit                   <= feedback1_is_hit;
			stage1_closest_hit_dist         <= feedback1_closest_hit_dist;
			stage1_closest_hit_pos          <= feedback1_closest_hit_pos;
			stage1_closest_hit_normal       <= feedback1_closest_hit_normal;
			stage1_closest_hit_mat_id       <= feedback1_closest_hit_mat_id;
			for(i = 0; i<RECURSION_LIMIT; i = i+1) begin
				stage1_diffuse_light_acc[i]   <= feedback1_diffuse_light_acc[i];
				if(i != RECURSION_LIMIT-1) begin
					stage1_reflection_coeffs[i]    <= feedback1_reflection_coeffs[i];
				end
			end
			stage1_valid                    <= feedback1_valid;
		end
		else if(new_data) begin
			stage1_image_x <= image_x;
			stage1_image_y <= image_y;
			stage1_obj_id <= 0;
			stage1_light_id <= 0;
			stage1_recursion_level <= 0;
			stage1_tracing_mode <= MODE_PRIMARY_RAY;
			stage1_casted_ray_origin <= casted_ray_origin;
			stage1_casted_ray_direction <= casted_ray_direction;
			stage1_casted_ray_is_normalized <= 0;
			stage1_cur_light_color <= 0;
			stage1_primary_ray_hit_normal <= 0;
			stage1_primary_ray_dir <= 0;
			stage1_primary_ray_hit_dif <= 0;
			stage1_distance_to_cur_light2 <= 0;
			stage1_is_hit <= 0;
			stage1_closest_hit_dist <= 0;
			stage1_closest_hit_pos <= 0;
			stage1_closest_hit_normal <= 0;
			stage1_closest_hit_mat_id <= 0;
			for(i = 0; i<RECURSION_LIMIT; i = i+1) begin
				stage1_diffuse_light_acc[i]   <= 0;
				if(i != RECURSION_LIMIT-1) begin
					stage1_reflection_coeffs[i]    <= 0;
				end
			end
			stage1_valid <= new_data;
		end
	 end
	 
	 //********************************************************************
	 //********************************************************************
	 //********************************************************************
	 //STAGE2 - normalize cast ray
	 //metadata
	 wire [10:0]     stage2_image_x;
	 wire [10:0]     stage2_image_y;
	 wire [2:0]      stage2_obj_id;
	 wire [2:0]      stage2_light_id;
	 wire [2:0]      stage2_recursion_level;
	 wire            stage2_tracing_mode; //0 - if this is a primary ray, 1 - if this is a shadow ray
	 //current traced ray
	 wire [95:0]     stage2_casted_ray_origin;
	 wire [95:0]     stage2_casted_ray_direction;
	 //lighting + reflections
	 wire [95:0]     stage2_cur_light_color;
	 wire [95:0]     stage2_primary_ray_hit_normal;
	 wire [95:0]     stage2_primary_ray_dir;
	 wire [95:0]     stage2_primary_ray_hit_dif;
	 wire [31:0]     stage2_distance_to_cur_light2;
	 //closest intersection loop
	 wire            stage2_is_hit;
	 wire [31:0]     stage2_closest_hit_dist;
	 wire [95:0]     stage2_closest_hit_pos;
	 wire [95:0]     stage2_closest_hit_normal;
	 wire [2:0]      stage2_closest_hit_mat_id;
	 //light_accumulator
	 wire [95:0] stage2_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 wire [95:0] stage2_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //ctl
	 wire            stage2_valid;
	 //--------------------------------------
	 
	 wire[95:0] stage2_normalized_dir;
	 vector_normalizer_pipeline cast_ray_normalizer(
    .clk(clk),
	 .rst(rst),
    .v(stage1_casted_ray_direction), 
    .new_data(stage1_valid), 
    .r(stage2_normalized_dir), 
    .output_valid(stage2_valid)
    );
	 wire[95:0] stage2_casted_ray_direction_orig;
	 wire       stage2_casted_ray_is_normalized;
	 
	 signal_pipe #(.L(50-1), .W(11))   pipe_stage2_image_x                  (.clk(clk), .in(stage1_image_x),                  .out(stage2_image_x));
	 signal_pipe #(.L(50-1), .W(11))   pipe_stage2_image_y                  (.clk(clk), .in(stage1_image_y),                  .out(stage2_image_y));
	 signal_pipe #(.L(50-1), .W(3))    pipe_stage2_obj_id                   (.clk(clk), .in(stage1_obj_id),                   .out(stage2_obj_id));
	 signal_pipe #(.L(50-1), .W(3))    pipe_stage2_light_id                 (.clk(clk), .in(stage1_light_id),                 .out(stage2_light_id));
	 signal_pipe #(.L(50-1), .W(3))    pipe_stage2_recursion_level          (.clk(clk), .in(stage1_recursion_level),          .out(stage2_recursion_level));
	 signal_pipe #(.L(50-1), .W(1))    pipe_stage2_tracing_mode             (.clk(clk), .in(stage1_tracing_mode),             .out(stage2_tracing_mode));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_casted_ray_origin        (.clk(clk), .in(stage1_casted_ray_origin),        .out(stage2_casted_ray_origin));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_casted_ray_direction     (.clk(clk), .in(stage1_casted_ray_direction),     .out(stage2_casted_ray_direction_orig));
	 signal_pipe #(.L(50-1), .W(1))    pipe_stage2_casted_ray_is_normalized (.clk(clk), .in(stage1_casted_ray_is_normalized), .out(stage2_casted_ray_is_normalized));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_cur_light_color          (.clk(clk), .in(stage1_cur_light_color),          .out(stage2_cur_light_color));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_primary_ray_hit_normal   (.clk(clk), .in(stage1_primary_ray_hit_normal),   .out(stage2_primary_ray_hit_normal));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_primary_ray_dir          (.clk(clk), .in(stage1_primary_ray_dir),          .out(stage2_primary_ray_dir));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_primary_ray_hit_dif      (.clk(clk), .in(stage1_primary_ray_hit_dif),      .out(stage2_primary_ray_hit_dif));
	 signal_pipe #(.L(50-1), .W(32))   pipe_stage2_distance_to_cur_light2   (.clk(clk), .in(stage1_distance_to_cur_light2),   .out(stage2_distance_to_cur_light2));
	 signal_pipe #(.L(50-1), .W(1))    pipe_stage2_is_hit                   (.clk(clk), .in(stage1_is_hit),                   .out(stage2_is_hit));
	 signal_pipe #(.L(50-1), .W(32))   pipe_stage2_closest_hit_dist         (.clk(clk), .in(stage1_closest_hit_dist),         .out(stage2_closest_hit_dist));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_closest_hit_pos          (.clk(clk), .in(stage1_closest_hit_pos),          .out(stage2_closest_hit_pos));
	 signal_pipe #(.L(50-1), .W(96))   pipe_stage2_closest_hit_normal       (.clk(clk), .in(stage1_closest_hit_normal),       .out(stage2_closest_hit_normal));
	 signal_pipe #(.L(50-1), .W(3))    pipe_stage2_closest_hit_mat_id       (.clk(clk), .in(stage1_closest_hit_mat_id),       .out(stage2_closest_hit_mat_id));
	 genvar j;
	 generate
		for(j = 0; j<RECURSION_LIMIT; j=j+1) begin : gen_pipe1
			signal_pipe #(.L(50-1), .W(96)) pipe_stage2_diffuse_light_acc      (.clk(clk), .in(stage1_diffuse_light_acc[j]),      .out(stage2_diffuse_light_acc[j]));
			if(j != RECURSION_LIMIT-1) begin
				signal_pipe #(.L(50-1), .W(96)) pipe_stage2_reflection_coeffs       (.clk(clk), .in(stage1_reflection_coeffs[j]),       .out(stage2_reflection_coeffs[j]));
			end
		end
	 endgenerate
	 
	 assign stage2_casted_ray_direction = stage2_casted_ray_is_normalized ? stage2_casted_ray_direction_orig : stage2_normalized_dir;

	 //********************************************************************
	 //********************************************************************
	 //********************************************************************
	 //STAGE3 - cast ray and update some state
	 //metadata
	 wire [10:0]     stage3_image_x;
	 wire [10:0]     stage3_image_y;
	 wire [2:0]      stage3_obj_id;
	 wire [2:0]      stage3_light_id;
	 wire [2:0]      stage3_recursion_level;
	 wire            stage3_tracing_mode; //0 - if this is a primary ray, 1 - if this is a shadow ray
	 //current traced ray
	 wire [95:0]     stage3_casted_ray_origin;
	 wire [95:0]     stage3_casted_ray_direction;
	 //lighting + reflections
	 wire [95:0]     stage3_cur_light_color;
	 wire [95:0]     stage3_primary_ray_hit_normal;
	 wire [95:0]     stage3_primary_ray_dir;
	 wire [95:0]     stage3_primary_ray_hit_dif;
	 wire signed [31:0]     stage3_distance_to_cur_light2;
		//closest intersection loop
	 reg             stage3_is_hit;
	 reg  [31:0]     stage3_closest_hit_dist;
	 reg  [95:0]     stage3_closest_hit_pos;
	 reg  [95:0]     stage3_closest_hit_normal;
	 reg  [2:0]      stage3_closest_hit_mat_id;
	 //light_accumulator
	 wire [95:0] stage3_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 wire [95:0] stage3_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //ctl
	 wire            stage3_valid;
	 //--------------------------------------
	 
	 wire stage3_was_hit_no_mode;
	 wire stage3_was_hit;
	 wire[31:0] stage3_hit_dist;
	 wire[95:0] stage3_hit_pos;
	 wire[95:0] stage3_hit_normal;
	 wire[2:0] stage3_mat_id;
	 
	 wire stage3a_valid;
	 wire stage3a_was_hit_no_mode;
	 wire[31:0] stage3a_hit_dist;
	 wire[95:0] stage3a_hit_pos;
	 wire[95:0] stage3a_hit_normal;
	 wire[2:0] stage3a_mat_id;
	 
	 ray_hit_pipeline ray_intersector (
    .clk(clk),
	 .rst(rst),
    .obj_id(stage2_obj_id), 
    .ray_origin(stage2_casted_ray_origin), 
    .ray_direction(stage2_casted_ray_direction), 
    
	 .was_hit(stage3a_was_hit_no_mode), 
    .hit_dist(stage3a_hit_dist), 
    .hit_pos(stage3a_hit_pos), 
    .hit_normal(stage3a_hit_normal), 
    .hit_mat_id(stage3a_mat_id),
	 
    .new_data(stage2_valid), 
    .output_valid(stage3a_valid)
    );
	 signal_pipe #(.L(7-1), .W(1))  pipe_stage3_was_hit_no_mode    (.clk(clk), .in(stage3a_was_hit_no_mode),  .out(stage3_was_hit_no_mode));
	 signal_pipe #(.L(7-1), .W(32)) pipe_stage3_hit_dist           (.clk(clk), .in(stage3a_hit_dist),         .out(stage3_hit_dist));
	 signal_pipe #(.L(7-1), .W(96)) pipe_stage3_hit_pos            (.clk(clk), .in(stage3a_hit_pos),          .out(stage3_hit_pos));
	 signal_pipe #(.L(7-1), .W(96)) pipe_stage3_hit_normal         (.clk(clk), .in(stage3a_hit_normal),       .out(stage3_hit_normal));
	 signal_pipe #(.L(7-1), .W(3))  pipe_stage3_mat_id             (.clk(clk), .in(stage3a_mat_id),           .out(stage3_mat_id));
	 
	 wire signed[31:0] stage3a_hit_dist_Q16_16;
	 fixed_Q8_24_to_Q16_16 hit_dist_lightning_conv(.a(stage3a_hit_dist), .r(stage3a_hit_dist_Q16_16));
	 
	 wire signed[31:0] stage3_hit_dist_Q16_16_squared;
	 fixed_mul #(.D(16), .Q(16)) fixed_mul_lightning_conv(.clk(clk), .rst(rst), .new_data(stage3a_valid), .output_valid(stage3_valid), .a(stage3a_hit_dist_Q16_16), .b(stage3a_hit_dist_Q16_16), .r(stage3_hit_dist_Q16_16_squared));
	 
	 assign stage3_was_hit = stage3_was_hit_no_mode && (stage3_tracing_mode == MODE_SHADOW_RAY ? $signed(stage3_hit_dist_Q16_16_squared) < $signed(stage3_distance_to_cur_light2) : 1'b1);
	 
	 wire            stage3_is_hit_orig;
	 wire [31:0]     stage3_closest_hit_dist_orig;
	 wire [95:0]     stage3_closest_hit_pos_orig;
	 wire [95:0]     stage3_closest_hit_normal_orig;
	 wire [2:0]      stage3_closest_hit_mat_id_orig;
	 
	 signal_pipe #(.L(158+7-1), .W(11))   pipe_stage3_image_x                  (.clk(clk), .in(stage2_image_x),                  .out(stage3_image_x));
	 signal_pipe #(.L(158+7-1), .W(11))   pipe_stage3_image_y                  (.clk(clk), .in(stage2_image_y),                  .out(stage3_image_y));
	 signal_pipe #(.L(158+7-1), .W(3))    pipe_stage3_obj_id                   (.clk(clk), .in(stage2_obj_id),                   .out(stage3_obj_id));
	 signal_pipe #(.L(158+7-1), .W(3))    pipe_stage3_light_id                 (.clk(clk), .in(stage2_light_id),                 .out(stage3_light_id));
	 signal_pipe #(.L(158+7-1), .W(3))    pipe_stage3_recursion_level          (.clk(clk), .in(stage2_recursion_level),          .out(stage3_recursion_level));
	 signal_pipe #(.L(158+7-1), .W(1))    pipe_stage3_tracing_mode             (.clk(clk), .in(stage2_tracing_mode),             .out(stage3_tracing_mode));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_casted_ray_origin        (.clk(clk), .in(stage2_casted_ray_origin),        .out(stage3_casted_ray_origin));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_casted_ray_direction     (.clk(clk), .in(stage2_casted_ray_direction),     .out(stage3_casted_ray_direction));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_cur_light_color          (.clk(clk), .in(stage2_cur_light_color),          .out(stage3_cur_light_color));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_primary_ray_hit_normal   (.clk(clk), .in(stage2_primary_ray_hit_normal),   .out(stage3_primary_ray_hit_normal));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_primary_ray_dir          (.clk(clk), .in(stage2_primary_ray_dir),          .out(stage3_primary_ray_dir));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_primary_ray_hit_dif      (.clk(clk), .in(stage2_primary_ray_hit_dif),      .out(stage3_primary_ray_hit_dif));
	 signal_pipe #(.L(158+7-1), .W(32))   pipe_stage3_distance_to_cur_light2   (.clk(clk), .in(stage2_distance_to_cur_light2),   .out(stage3_distance_to_cur_light2));
	 signal_pipe #(.L(158+7-1), .W(1))    pipe_stage3_is_hit                   (.clk(clk), .in(stage2_is_hit),                   .out(stage3_is_hit_orig));
	 signal_pipe #(.L(158+7-1), .W(32))   pipe_stage3_closest_hit_dist         (.clk(clk), .in(stage2_closest_hit_dist),         .out(stage3_closest_hit_dist_orig));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_closest_hit_pos          (.clk(clk), .in(stage2_closest_hit_pos),          .out(stage3_closest_hit_pos_orig));
	 signal_pipe #(.L(158+7-1), .W(96))   pipe_stage3_closest_hit_normal       (.clk(clk), .in(stage2_closest_hit_normal),       .out(stage3_closest_hit_normal_orig));
	 signal_pipe #(.L(158+7-1), .W(3))    pipe_stage3_closest_hit_mat_id       (.clk(clk), .in(stage2_closest_hit_mat_id),       .out(stage3_closest_hit_mat_id_orig));
	 
	 generate
		for(j = 0; j<RECURSION_LIMIT; j=j+1) begin : gen_pipe2
		 signal_pipe #(.L(158+7-1), .W(96)) pipe_stage3_diffuse_light_acc        (.clk(clk), .in(stage2_diffuse_light_acc[j]),      .out(stage3_diffuse_light_acc[j]));
		 if(j != RECURSION_LIMIT-1) begin
			signal_pipe #(.L(158+7-1), .W(96)) pipe_stage3_reflection_coeffs         (.clk(clk), .in(stage2_reflection_coeffs[j]),       .out(stage3_reflection_coeffs[j]));
		 end
		end
	 endgenerate
	 
	 always @* begin
		//we hit something and this is out first hit or we have smaller dist
		if(stage3_was_hit && (!stage3_is_hit_orig || stage3_hit_dist < stage3_closest_hit_dist_orig)) begin
			stage3_is_hit = stage3_was_hit;
			stage3_closest_hit_dist = stage3_hit_dist;
			stage3_closest_hit_pos = stage3_hit_pos;
			stage3_closest_hit_normal = stage3_hit_normal;
			stage3_closest_hit_mat_id = stage3_mat_id;
		end else begin
			//no hit
			stage3_is_hit = stage3_is_hit_orig;
			stage3_closest_hit_dist = stage3_closest_hit_dist_orig;
			stage3_closest_hit_pos = stage3_closest_hit_pos_orig;
			stage3_closest_hit_normal = stage3_closest_hit_normal_orig;
			stage3_closest_hit_mat_id = stage3_closest_hit_mat_id_orig;
		end
	 end
	 
	 //mux for reflection pipeline
	 wire[95:0] stage3_to_reflect_dir;
	 wire[95:0] stage3_to_reflect_norm;
	 assign stage3_to_reflect_dir = stage3_tracing_mode == MODE_PRIMARY_RAY ? stage3_casted_ray_direction : stage3_primary_ray_dir;
	 assign stage3_to_reflect_norm = stage3_tracing_mode == MODE_PRIMARY_RAY ? stage3_closest_hit_normal : stage3_primary_ray_hit_normal;
	 //mux for to_light_dir calc
	 wire[95:0] stage3_hit_pos_light = stage3_tracing_mode == MODE_PRIMARY_RAY ? stage3_closest_hit_pos : stage3_casted_ray_origin;
	 
	 //********************************************************************
	 //********************************************************************
	 //********************************************************************
	 //STAGE4 - calculate all data needed for continuing the algorithm
	 //Here we are splitting into 4 parael pipelines:
	 //REFLECTION_PIPELINE - reflect the ray around the hit normal
	 //LIGHTNING_DIFFUSE   - calculate the diffuse light contribution from a light
	 //LIGHT_FETCHER       - fetch the light from the cache and calculate to_light dir
	 //MATERIAL_FETCHER    - fetch the material from the cache and calcualte the ambient light factor
	 
	 //pipe1:
	 wire [95:0] stage4_reflection;
	 wire stage4_valid_reflection;
	 vector_reflector_pipeline vector_reflector_pipeline_instance (
    .clk(clk),
	 .rst(rst),
    .v(stage3_to_reflect_dir), 
    .n(stage3_to_reflect_norm), 
    .r(stage4_reflection), 
    .new_data(stage3_valid), 
    .output_valid(stage4_valid_reflection)
    );
	 
	 //pipe2:
	 wire [95:0] stage4a_diffuse_component;
	 wire [95:0] stage4a_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 wire [2:0]  stage4a_recursion_level;
	 wire        stage4a_valid_lightning;
	 
	 wire [95:0] stage4b_new_total_light;
	 wire        stage4b_valid_add;
	 //LAT: 18
	 lightning_diffuse lightning_diffuse_instance ( //the result of this will be only used when the mode is MODE_SHADOW_RAY 
    .clk(clk), 
	 .rst(rst),
	 .new_data(stage3_valid),
	 .output_valid(stage4a_valid_lightning),
	 
    .hit_matterial_diffuse_color(stage3_primary_ray_hit_dif), 
    .hit_normal(stage3_primary_ray_hit_normal), 
    .light_color(stage3_cur_light_color), 
    .to_light(stage3_casted_ray_direction), //mode implies that this is a shadow ray
    .diffuse_component(stage4a_diffuse_component)
    );
	 	 
	 signal_pipe #(.L(18-1), .W(3))                  pipe_stage4a_recursion_level  (.clk(clk), .in(stage3_recursion_level),  .out(stage4a_recursion_level));
	 generate
		for(j = 0; j<RECURSION_LIMIT; j=j+1) begin : gen_pipe3
		 signal_pipe #(.L(18-1), .W(96)) pipe_stage4a_diffuse_light_acc (.clk(clk), .in(stage3_diffuse_light_acc[j]), .out(stage4a_diffuse_light_acc[j]));
   	end
	 endgenerate
	 //LAT:2
	 vector_add diffuse_acc_update(.clk(clk), .rst(rst), .new_data(stage4a_valid_lightning), .output_valid(stage4b_valid_add), .v1(stage4a_diffuse_light_acc[stage4a_recursion_level]), .v2(stage4a_diffuse_component), .r(stage4b_new_total_light));

	 //pipe3:
	 reg        stage4c_valid;
	 reg[95:0]  stage4c_hit_pos_light;
	 wire[95:0] stage4c_light_position;
	 wire[95:0] stage4c_light_color;
	 
	 wire       stage4d_valid;
	 wire[95:0] stage4d_light_to_light_dir;
	 wire[95:0] stage4d_light_to_light_dir_Q16_16;
	 traced_lights traced_lights_instance (
    .clk(clk), 
    .light_id(stage3_light_id), 
    .position(stage4c_light_position), 
    .color(stage4c_light_color)
    );
	 always @(posedge clk) begin
		if(rst) begin
			stage4c_valid <= 0;
		end else begin
			stage4c_valid <= stage3_valid;
			stage4c_hit_pos_light <= stage3_hit_pos_light;
		end
	 end
	 vector_sub to_light_sub(.clk(clk), .rst(rst), .new_data(stage4c_valid), .output_valid(stage4d_valid), .v1(stage4c_light_position), .v2(stage4c_hit_pos_light), .r(stage4d_light_to_light_dir));
	 vector_Q24_8_to_Q16_16 vector_conv_lighting(.v(stage4d_light_to_light_dir), .r(stage4d_light_to_light_dir_Q16_16));
	 
	 //calculate the distance to light squared
	 wire       stage4e_valid;
	 wire[31:0] stage4e_new_distance_to_cur_light2;
	 vector_dot #(.D(16), .Q(16)) vector_dot_light_dist(.clk(clk), .rst(rst), .new_data(stage4d_valid), .output_valid(stage4e_valid), .v1(stage4d_light_to_light_dir_Q16_16), .v2(stage4d_light_to_light_dir_Q16_16), .r(stage4e_new_distance_to_cur_light2));
	 
	 //pipe4:
	 reg       stage4f_valid;
	 wire[95:0] stage4f_mat_ambient_color;
	 wire       stage4f_mat_is_diffuse;
	 wire[95:0] stage4f_mat_diffuse_color;
	 wire[95:0] stage4f_mat_reflection_color;
	 
	 wire       stage4g_valid;
	 wire[95:0] stage4g_initial_loop_color;
	 
	 traced_materials traced_materials_instance (
		.clk(clk), 
		.rst(rst),
		.mat_id(stage3_closest_hit_mat_id), 
	 
	 	.l2_write_enable(l2_write_enable),
		.l2_write_id(l2_write_id),
		.l2_write_material(l2_write_material),
		.l2_flush_to_l1(l2_flush_to_l1),
    
		 .ambient_color(stage4f_mat_ambient_color), 
		 .is_diffuse(stage4f_mat_is_diffuse), 
		 .diffuse_color(stage4f_mat_diffuse_color), 
		 .reflection_color(stage4f_mat_reflection_color)
    );
	 always @(posedge clk) begin
		if(rst) begin
			stage4f_valid <= 0;
		end else begin
			stage4f_valid <= stage3_valid;
		end
	 end
	 vector_mul_piecewise_seq ambient_mul(.clk(clk), .rst(rst), .new_data(stage4f_valid), .output_valid(stage4g_valid), .v1(stage4f_mat_ambient_color), .v2(ambient_light_color), .r(stage4g_initial_loop_color));
	 
	 //pipe5:
	 //add bias to the hit pos in order to avoid shadow acne
	 wire       stage4h_valid;
	 wire[95:0] stage4h_closest_hit_pos_biased;
	 wire[95:0] stage3_shadow_bias;
	 assign stage3_shadow_bias[31:0] = $signed(stage3_closest_hit_normal[31:0]) >>> 10;
	 assign stage3_shadow_bias[63:32] = $signed(stage3_closest_hit_normal[63:32]) >>> 10;
	 assign stage3_shadow_bias[95:64] = $signed(stage3_closest_hit_normal[95:64]) >>> 10;
	 vector_add vector_add_acne(.clk(clk), .rst(rst), .new_data(stage3_valid), .output_valid(stage4h_valid), .v1(stage3_closest_hit_pos), .v2(stage3_shadow_bias), .r(stage4h_closest_hit_pos_biased));
	 
	 //synchronize all the sub pipelines:
	 wire            stage4_valid;
	 //metadata
	 wire [10:0]     stage4_image_x;
	 wire [10:0]     stage4_image_y;
	 wire [2:0]      stage4_obj_id;
	 wire [2:0]      stage4_light_id;
	 wire [2:0]      stage4_recursion_level;
	 wire            stage4_tracing_mode;
	 //current traced ray
	 wire [95:0]     stage4_casted_ray_origin;
	 wire [95:0]     stage4_casted_ray_direction;
	 //lighting + reflections
	 wire [95:0]     stage4_cur_light_color;
	 wire [95:0]     stage4_primary_ray_hit_normal;
	 wire [95:0]     stage4_primary_ray_dir;
	 wire [95:0]     stage4_primary_ray_hit_dif;
	 wire [31:0]     stage4_distance_to_cur_light2;
	 //closest intersection loop
	 wire            stage4_is_hit;
	 wire [31:0]     stage4_closest_hit_dist;
	 wire [95:0]     stage4_closest_hit_pos;
	 wire [95:0]     stage4_closest_hit_normal;
	 wire [2:0]      stage4_closest_hit_mat_id;
	 //light_accumulator
	 wire [95:0]     stage4_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 wire [95:0]     stage4_reflection_coeffs[RECURSION_LIMIT-2:0];
	 //extra
	 //sub_pipe1: - LATENCY 21
	 //stage4_valid
	 //stage4_reflection
	 //sub_pipe2: - LATENCY 20
	 wire        stage4_subpipe2_valid;
	 wire [95:0] stage4_new_total_light;
	 //sub_pipe3  - LATENCY 1/3/11
	 wire        stage4_subpipe3_valid;             //11
	 wire [31:0] stage4_new_distance_to_cur_light2; //11
	 wire [95:0] stage4_light_to_light_dir;         //3
	 wire [95:0] stage4_light_color;                //1
	 //sub_pipe4  - LATENCY 1/8
	 wire        stage4_subpipe4_valid;      //8
	 wire [95:0] stage4_initial_loop_color;  //8
	 wire        stage4_mat_is_diffuse;       //1
	 wire [95:0] stage4_mat_diffuse_color;    //1
	 wire [95:0] stage4_mat_reflection_color; //1
	 //sub_pipe5  - LATENCY 2
	 wire        stage4_subpipe5_valid;
	 wire[95:0]  stage4_closest_hit_pos_biased;
	 
	 assign stage4_valid = stage4_valid_reflection && stage4_subpipe2_valid && stage4_subpipe3_valid && stage4_subpipe4_valid && stage4_subpipe5_valid;
	 
	 wire[95:0] stage4_diffuse_light_acc_updated[RECURSION_LIMIT-1:0];
	 wire[95:0] stage4_diffuse_light_acc_initial[RECURSION_LIMIT-1:0];
	 wire[95:0] stage4_reflection_coeffs_updated[RECURSION_LIMIT-1:0];
	 
	 assign stage4_diffuse_light_acc_updated[0] = (0 == stage4_recursion_level) ? stage4_new_total_light : stage4_diffuse_light_acc[0];
	 assign stage4_diffuse_light_acc_updated[1] = (1 == stage4_recursion_level) ? stage4_new_total_light : stage4_diffuse_light_acc[1];
	 assign stage4_diffuse_light_acc_updated[2] = (2 == stage4_recursion_level) ? stage4_new_total_light : stage4_diffuse_light_acc[2];
	 assign stage4_diffuse_light_acc_updated[3] = (3 == stage4_recursion_level) ? stage4_new_total_light : stage4_diffuse_light_acc[3];
	 assign stage4_diffuse_light_acc_updated[4] = (4 == stage4_recursion_level) ? stage4_new_total_light : stage4_diffuse_light_acc[4];
	 
	 assign stage4_diffuse_light_acc_initial[0] = (0 == stage4_recursion_level) ? stage4_initial_loop_color : stage4_diffuse_light_acc[0];
	 assign stage4_diffuse_light_acc_initial[1] = (1 == stage4_recursion_level) ? stage4_initial_loop_color : stage4_diffuse_light_acc[1];
	 assign stage4_diffuse_light_acc_initial[2] = (2 == stage4_recursion_level) ? stage4_initial_loop_color : stage4_diffuse_light_acc[2];
	 assign stage4_diffuse_light_acc_initial[3] = (3 == stage4_recursion_level) ? stage4_initial_loop_color : stage4_diffuse_light_acc[3];
	 assign stage4_diffuse_light_acc_initial[4] = (4 == stage4_recursion_level) ? stage4_initial_loop_color : stage4_diffuse_light_acc[4];
	 
	 assign stage4_reflection_coeffs_updated[0] = (0 == stage4_recursion_level) ? stage4_mat_reflection_color : stage4_reflection_coeffs[0];
	 assign stage4_reflection_coeffs_updated[1] = (1 == stage4_recursion_level) ? stage4_mat_reflection_color : stage4_reflection_coeffs[1];
	 assign stage4_reflection_coeffs_updated[2] = (2 == stage4_recursion_level) ? stage4_mat_reflection_color : stage4_reflection_coeffs[2];
	 assign stage4_reflection_coeffs_updated[3] = (3 == stage4_recursion_level) ? stage4_mat_reflection_color : stage4_reflection_coeffs[3];
	 //assign stage4_reflection_coeffs_updated[4] = (4 == stage4_recursion_level) ? stage4_mat_reflection_color : stage4_reflection_coeffs[4];
	 
	 signal_pipe #(.L(21-1), .W(11))   pipe_stage4_image_x                  (.clk(clk), .in(stage3_image_x),                  .out(stage4_image_x));
	 signal_pipe #(.L(21-1), .W(11))   pipe_stage4_image_y                  (.clk(clk), .in(stage3_image_y),                  .out(stage4_image_y));
	 signal_pipe #(.L(21-1), .W(3))    pipe_stage4_obj_id                   (.clk(clk), .in(stage3_obj_id),                   .out(stage4_obj_id));
	 signal_pipe #(.L(21-1), .W(3))    pipe_stage4_light_id                 (.clk(clk), .in(stage3_light_id),                 .out(stage4_light_id));
	 signal_pipe #(.L(21-1), .W(3))    pipe_stage4_recursion_level          (.clk(clk), .in(stage3_recursion_level),          .out(stage4_recursion_level));
	 signal_pipe #(.L(21-1), .W(1))    pipe_stage4_tracing_mode             (.clk(clk), .in(stage3_tracing_mode),             .out(stage4_tracing_mode));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_casted_ray_origin        (.clk(clk), .in(stage3_casted_ray_origin),        .out(stage4_casted_ray_origin));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_casted_ray_direction     (.clk(clk), .in(stage3_casted_ray_direction),     .out(stage4_casted_ray_direction));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_cur_light_color          (.clk(clk), .in(stage3_cur_light_color),          .out(stage4_cur_light_color));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_primary_ray_hit_normal   (.clk(clk), .in(stage3_primary_ray_hit_normal),   .out(stage4_primary_ray_hit_normal));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_primary_ray_dir          (.clk(clk), .in(stage3_primary_ray_dir),          .out(stage4_primary_ray_dir));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_primary_ray_hit_dif      (.clk(clk), .in(stage3_primary_ray_hit_dif),      .out(stage4_primary_ray_hit_dif));
	 signal_pipe #(.L(21-1), .W(32))   pipe_stage4_distance_to_cur_light2   (.clk(clk), .in(stage3_distance_to_cur_light2),   .out(stage4_distance_to_cur_light2));
	 signal_pipe #(.L(21-1), .W(1))    pipe_stage4_is_hit                   (.clk(clk), .in(stage3_is_hit),                   .out(stage4_is_hit));
	 signal_pipe #(.L(21-1), .W(32))   pipe_stage4_closest_hit_dist         (.clk(clk), .in(stage3_closest_hit_dist),         .out(stage4_closest_hit_dist));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_closest_hit_pos          (.clk(clk), .in(stage3_closest_hit_pos),          .out(stage4_closest_hit_pos));
	 signal_pipe #(.L(21-1), .W(96))   pipe_stage4_closest_hit_normal       (.clk(clk), .in(stage3_closest_hit_normal),       .out(stage4_closest_hit_normal));
	 signal_pipe #(.L(21-1), .W(3))    pipe_stage4_closest_hit_mat_id       (.clk(clk), .in(stage3_closest_hit_mat_id),       .out(stage4_closest_hit_mat_id));
	 generate
		for(j = 0; j<RECURSION_LIMIT; j=j+1) begin : gen_pipe4
			signal_pipe #(.L(21-1), .W(96)) pipe_stage4_diffuse_light_acc      (.clk(clk), .in(stage3_diffuse_light_acc[j]),      .out(stage4_diffuse_light_acc[j]));
			if(j != RECURSION_LIMIT-1) begin
				signal_pipe #(.L(21-1), .W(96)) pipe_stage4_reflection_coeffs       (.clk(clk), .in(stage3_reflection_coeffs[j]),       .out(stage4_reflection_coeffs[j]));
			end
		end
	 endgenerate
	 //subpipe2
	 signal_pipe #(.L(21-20-1), .W(96)) pipe_stage4_new_total_light(.clk(clk), .in(stage4b_new_total_light), .out(stage4_new_total_light));
	 signal_pipe #(.L(21-20-1), .W(1))  pipe_stage4_subpipe2_valid (.clk(clk), .in(stage4b_valid_add), .out(stage4_subpipe2_valid));

	 //subpipe3
	 signal_pipe #(.L(21-11-1), .W(1))    pipe_stage4_subpipe3_valid             (.clk(clk), .in(stage4e_valid),                      .out(stage4_subpipe3_valid));
	 signal_pipe #(.L(21-11-1), .W(32))   pipe_stage4_new_distance_to_cur_light2 (.clk(clk), .in(stage4e_new_distance_to_cur_light2), .out(stage4_new_distance_to_cur_light2));
	 signal_pipe #(.L(21-3-1),  .W(96))   pipe_stage4_light_to_light_dir         (.clk(clk), .in(stage4d_light_to_light_dir),         .out(stage4_light_to_light_dir));
	 signal_pipe #(.L(21-1-1),  .W(96))   pipe_stage4_light_color                (.clk(clk), .in(stage4c_light_color),                .out(stage4_light_color));
	 
	 //subpipe4
	 signal_pipe #(.L(21-8-1), .W(1))    pipe_stage4_subpipe4_valid            (.clk(clk), .in(stage4g_valid),                    .out(stage4_subpipe4_valid));
	 signal_pipe #(.L(21-8-1), .W(96))   pipe_stage4_initial_loop_color        (.clk(clk), .in(stage4g_initial_loop_color),       .out(stage4_initial_loop_color));
	 signal_pipe #(.L(21-1-1), .W(1))    pipe_stage4_mat_is_diffuse             (.clk(clk), .in(stage4f_mat_is_diffuse),            .out(stage4_mat_is_diffuse));
	 signal_pipe #(.L(21-1-1), .W(96))   pipe_stage4_mat_diffuse_color          (.clk(clk), .in(stage4f_mat_diffuse_color),         .out(stage4_mat_diffuse_color));
	 signal_pipe #(.L(21-1-1), .W(96))   pipe_stage4_mat_reflection_color       (.clk(clk), .in(stage4f_mat_reflection_color),      .out(stage4_mat_reflection_color));
	
	 //subpipe5
	 signal_pipe #(.L(21-2-1), .W(1))    pipe_stage4_subpipe5_valid            (.clk(clk), .in(stage4h_valid),                    .out(stage4_subpipe5_valid));
	 signal_pipe #(.L(21-2-1), .W(96))   pipe_stage4_closest_hit_pos_biased    (.clk(clk), .in(stage4h_closest_hit_pos_biased),   .out(stage4_closest_hit_pos_biased));
	
	 //we have all that we need - dispatch the result :)
	 reg[10:0] result_store_image_x;
	 reg[10:0] result_store_image_y;
	 reg[95:0] result_store_diffuse_light_acc[RECURSION_LIMIT-1:0];
	 reg[95:0] result_store_reflection_coeffs[RECURSION_LIMIT-2:0];
	 reg result_valid;
	 
	 always @(posedge clk) begin
	 	feedback_valid <= 0;
		result_valid <= 0;
		if(stage4_valid) begin
			
			result_store_image_x          <= stage4_image_x;
			result_store_image_y          <= stage4_image_y;
			feedback_image_x              <= stage4_image_x;
			feedback_image_y              <= stage4_image_y;
			
			feedback_is_hit                   <= 0;
			feedback_closest_hit_dist         <= 0;
			feedback_closest_hit_pos          <= 0;
			feedback_closest_hit_normal       <= 0;
			feedback_closest_hit_mat_id       <= 0;
			
			//by default pass these coeffs
			for(i = 0; i < RECURSION_LIMIT; i=i+1) begin
				result_store_diffuse_light_acc[i] <= stage4_diffuse_light_acc[i];
				feedback_diffuse_light_acc[i]     <= stage4_diffuse_light_acc[i];
				if(i != RECURSION_LIMIT-1) begin
					result_store_reflection_coeffs[i]  <= stage4_reflection_coeffs[i];
					feedback_reflection_coeffs[i]      <= stage4_reflection_coeffs[i];
				end
			end
		
			//check if we have intersected with the last object in the scene
			if(stage4_obj_id != NUM_OF_OBJECTS-1) begin
				//if this is a shadow ray and we intersected something then we can move on to the next light or reflection or finish the ray completelly
				if(stage4_tracing_mode == MODE_SHADOW_RAY && stage4_is_hit) begin
					//check if there are more lights to process
					if(stage4_light_id == NUM_OF_LIGHTS) begin
						//there are no more lights left - check if the primary ray hit a reflective surface OR that we hit the recursion limit
						if(stage4_reflection_coeffs[stage4_recursion_level] == 0 || stage4_recursion_level == RECURSION_LIMIT-1) begin
							//we have no more lights left and (the surface is not reflective or we hit the recursion limit)
							//output the result
							result_valid <= 1;
						end else begin
							//we have no more lights left but we can process a reflection :)
							feedback_obj_id                   <= 0; //intersect all objects
							feedback_light_id                 <= 0; //proces all lights
							feedback_recursion_level          <= stage4_recursion_level + 1; //increase the recursion level
							feedback_tracing_mode             <= MODE_PRIMARY_RAY; //this will be a primary ray 
							feedback_casted_ray_origin        <= stage4_casted_ray_origin; //we are in MODE_SHADOW_RAY mode so this is a point on the surface
							feedback_casted_ray_direction     <= stage4_reflection;
							feedback_casted_ray_is_normalized <= 1; //do not normalize the dir
							feedback_cur_light_color          <= 0;
							feedback_primary_ray_hit_normal   <= 0;
							feedback_primary_ray_dir          <= 0;
							feedback_primary_ray_hit_dif      <= 0;
							feedback_distance_to_cur_light2   <= 0;
							
							feedback_valid <= 1;
						end
					end
					else begin
						//there are more lights to process
						//move to the next light
						feedback_obj_id                   <= 0; //intersect all objects
						feedback_light_id                 <= stage4_light_id + 1; //move to the next light
						feedback_recursion_level          <= stage4_recursion_level;
						feedback_tracing_mode             <= MODE_SHADOW_RAY; 
						feedback_casted_ray_origin        <= stage4_casted_ray_origin;  //we are in MODE_SHADOW_RAY mode so this is a point on the surface
						feedback_casted_ray_direction     <= stage4_light_to_light_dir;
						feedback_casted_ray_is_normalized <= 0; //we need to normalize the shadow ray
						feedback_cur_light_color          <= stage4_light_color;
						feedback_primary_ray_hit_normal   <= stage4_primary_ray_hit_normal;
						feedback_primary_ray_dir          <= stage4_primary_ray_dir;
						feedback_primary_ray_hit_dif      <= stage4_primary_ray_hit_dif;
						feedback_distance_to_cur_light2   <= stage4_new_distance_to_cur_light2;
						
						feedback_valid <= 1;				
					end
				end
				else begin
					//otherwise we haven't finished the current ray cast - intersect with the next object
					feedback_obj_id                   <= stage4_obj_id + 1; //move to the next object
					feedback_light_id                 <= stage4_light_id;
					feedback_recursion_level          <= stage4_recursion_level;
					feedback_tracing_mode             <= stage4_tracing_mode; 
					feedback_casted_ray_origin        <= stage4_casted_ray_origin;
					feedback_casted_ray_direction     <= stage4_casted_ray_direction;
					feedback_casted_ray_is_normalized <= 1; //do not normalize the dir
					feedback_cur_light_color          <= stage4_cur_light_color;
					feedback_primary_ray_hit_normal   <= stage4_primary_ray_hit_normal;
					feedback_primary_ray_dir          <= stage4_primary_ray_dir;
					feedback_primary_ray_hit_dif      <= stage4_primary_ray_hit_dif;
					feedback_distance_to_cur_light2   <= stage4_distance_to_cur_light2;
					feedback_is_hit                   <= stage4_is_hit;
					feedback_closest_hit_dist         <= stage4_closest_hit_dist;
					feedback_closest_hit_pos          <= stage4_closest_hit_pos;
					feedback_closest_hit_normal       <= stage4_closest_hit_normal;
					feedback_closest_hit_mat_id       <= stage4_closest_hit_mat_id;
					
					feedback_valid <= 1;
				end
			end
			else begin
				//OK so we have intersected with every object in the scene - we got the closest intersection
				//If we are in MODE_SHADOW_RAY then we could have intersected with the last object
				//If we are in MODE_PRIMARY_RAY then we could or could not intersected something
				if(stage4_tracing_mode == MODE_SHADOW_RAY) begin
					if(stage4_is_hit) begin
						//on the last iteration we hit something
						//try to move on the next light or a reflection, otherwise save the result
						//check if there are more lights to process
						if(stage4_light_id == NUM_OF_LIGHTS) begin
							//there are no more lights left - check if the primary ray hit a reflective surface OR that we hit the recursion limit
							if(stage4_reflection_coeffs[stage4_recursion_level] == 0 || stage4_recursion_level == RECURSION_LIMIT-1) begin
								//we have no more lights left and (the surface is not reflective or we hit the recursion limit)
								//output the result
								result_valid <= 1;
							end else begin
								//we have no more lights left but we can process a reflection :)
								feedback_obj_id                   <= 0; //intersect all objects
								feedback_light_id                 <= 0; //proces all lights
								feedback_recursion_level          <= stage4_recursion_level + 1; //increase the recursion level
								feedback_tracing_mode             <= MODE_PRIMARY_RAY; //this will be a primary ray 
								feedback_casted_ray_origin        <= stage4_casted_ray_origin; //we are in MODE_SHADOW_RAY mode so this is a point on the surface
								feedback_casted_ray_direction     <= stage4_reflection;
								feedback_casted_ray_is_normalized <= 1; //do not normalize the dir
								feedback_cur_light_color          <= 0;
								feedback_primary_ray_hit_normal   <= 0;
								feedback_primary_ray_dir          <= 0;
								feedback_primary_ray_hit_dif      <= 0;
								feedback_distance_to_cur_light2   <= 0;
								
								feedback_valid <= 1;
							end
						end
						else begin
							//there are more lights to process
							//move to the next light
							feedback_obj_id                   <= 0; //intersect all objects
							feedback_light_id                 <= stage4_light_id + 1; //move to the next light
							feedback_recursion_level          <= stage4_recursion_level;
							feedback_tracing_mode             <= MODE_SHADOW_RAY; 
							feedback_casted_ray_origin        <= stage4_casted_ray_origin;  //we are in MODE_SHADOW_RAY mode so this is a point on the surface
							feedback_casted_ray_direction     <= stage4_light_to_light_dir;
							feedback_casted_ray_is_normalized <= 0; //we need to normalize the shadow ray
							feedback_cur_light_color          <= stage4_light_color;
							feedback_primary_ray_hit_normal   <= stage4_primary_ray_hit_normal;
							feedback_primary_ray_dir          <= stage4_primary_ray_dir;
							feedback_primary_ray_hit_dif      <= stage4_primary_ray_hit_dif;
							feedback_distance_to_cur_light2   <= stage4_new_distance_to_cur_light2;
							
							feedback_valid <= 1;				
						end
					end else begin
						//We have an unobscured shadow ray :) - add the light contribution to the accumulator  
						//check if there are more lights to process
						for(i = 0; i<RECURSION_LIMIT; i=i+1) begin
							feedback_diffuse_light_acc[i]     <= stage4_diffuse_light_acc_updated[i];
							result_store_diffuse_light_acc[i] <= stage4_diffuse_light_acc_updated[i];
						end
						
						if(stage4_light_id == NUM_OF_LIGHTS) begin
							//there are no more lights left - check if the primary ray hit a reflective surface OR that we hit the recursion limit
							if(stage4_reflection_coeffs[stage4_recursion_level] == 0 || stage4_recursion_level == RECURSION_LIMIT-1) begin
								//we have no more lights left and (the surface is not reflective or we hit the recursion limit)
								//output the result
								result_valid <= 1;
							end else begin
								//we have no more lights left but we can process a reflection :)
								feedback_obj_id                   <= 0; //intersect all objects
								feedback_light_id                 <= 0; //proces all lights
								feedback_recursion_level          <= stage4_recursion_level + 1; //increase the recursion level
								feedback_tracing_mode             <= MODE_PRIMARY_RAY; //this will be a primary ray 
								feedback_casted_ray_origin        <= stage4_casted_ray_origin; //we are in MODE_SHADOW_RAY mode so this is a point on the surface
								feedback_casted_ray_direction     <= stage4_reflection;
								feedback_casted_ray_is_normalized <= 1; //do not normalize the dir
								feedback_cur_light_color          <= 0;
								feedback_primary_ray_hit_normal   <= 0;
								feedback_primary_ray_dir          <= 0;
								feedback_primary_ray_hit_dif      <= 0;
								feedback_distance_to_cur_light2   <= 0;
								
								feedback_valid <= 1;
							end
						end
						else begin
							//there are more lights to process
							//move to the next light
							feedback_obj_id                   <= 0; //intersect all objects
							feedback_light_id                 <= stage4_light_id + 1; //move to the next light
							feedback_recursion_level          <= stage4_recursion_level;
							feedback_tracing_mode             <= MODE_SHADOW_RAY; 
							feedback_casted_ray_origin        <= stage4_casted_ray_origin;  //we are in MODE_SHADOW_RAY mode so this is a point on the surface
							feedback_casted_ray_direction     <= stage4_light_to_light_dir;
							feedback_casted_ray_is_normalized <= 0; //we need to normalize the shadow ray
							feedback_cur_light_color          <= stage4_light_color;
							feedback_primary_ray_hit_normal   <= stage4_primary_ray_hit_normal;
							feedback_primary_ray_dir          <= stage4_primary_ray_dir;
							feedback_primary_ray_hit_dif      <= stage4_primary_ray_hit_dif;
							feedback_distance_to_cur_light2   <= stage4_new_distance_to_cur_light2;
							
							feedback_valid <= 1;
						end
					end
				end else begin
					//we are in MODE_PRIMARY_RAY
					//if we haven't hit anything then we can finish 
					if(!stage4_is_hit) begin
						//output the result
						result_valid <= 1;
					end else begin
						for(i = 0; i<RECURSION_LIMIT; i=i+1) begin
							result_store_diffuse_light_acc[i]        <= stage4_diffuse_light_acc_initial[i];
							feedback_diffuse_light_acc[i]     <= stage4_diffuse_light_acc_initial[i];
							if(i != RECURSION_LIMIT-1) begin
								result_store_reflection_coeffs[i]         <= stage4_reflection_coeffs_updated[i];
								feedback_reflection_coeffs[i]      <= stage4_reflection_coeffs_updated[i];
							end
						end
					
						//ok we are a primary ray and we found the closest intersection 
						//check if we are diffusing light
						if(stage4_mat_is_diffuse) begin
							//the material diffuses light - cast shadow rays :)
							feedback_obj_id                   <= 0; //intersect all objects
							feedback_light_id                 <= 1; //move to the next light
							feedback_recursion_level          <= stage4_recursion_level;
							feedback_tracing_mode             <= MODE_SHADOW_RAY; 
							feedback_casted_ray_origin        <= stage4_closest_hit_pos_biased; //we are casting from the hit point + bias
							feedback_casted_ray_direction     <= stage4_light_to_light_dir;
							feedback_casted_ray_is_normalized <= 0; //we need to normalize the shadow ray
							feedback_cur_light_color          <= stage4_light_color;
							feedback_primary_ray_hit_normal   <= stage4_closest_hit_normal;
							feedback_primary_ray_dir          <= stage4_casted_ray_direction;
							feedback_primary_ray_hit_dif      <= stage4_mat_diffuse_color;
							feedback_distance_to_cur_light2   <= stage4_new_distance_to_cur_light2;
							
							feedback_valid <= 1;
						end else begin
							//otherwise we can skip casting the shadow rays
							//check if we are reflecting light and we did not hit the recursion limit
							if(stage4_mat_reflection_color == 0 || stage4_recursion_level == RECURSION_LIMIT-1) begin
								//the surface does not reflect light - only ambient lightning is applied
								//write the result
								result_valid <= 1;
							end else begin
								//the surface reflects light - cast a reflection
								feedback_obj_id                   <= 0; //intersect all objects
								feedback_light_id                 <= 0; //proces all lights
								feedback_recursion_level          <= stage4_recursion_level + 1; //increase the recursion level
								feedback_tracing_mode             <= MODE_PRIMARY_RAY; //this will be a primary ray 
								feedback_casted_ray_origin        <= stage4_closest_hit_pos_biased; //hit_pos+bias
								feedback_casted_ray_direction     <= stage4_reflection;
								feedback_casted_ray_is_normalized <= 1; //do not normalize the dir
								feedback_cur_light_color          <= 0;
								feedback_primary_ray_hit_normal   <= 0;
								feedback_primary_ray_dir          <= 0;
								feedback_primary_ray_hit_dif      <= 0;
								feedback_distance_to_cur_light2   <= 0;
								
								feedback_valid <= 1;
							end
						end
					end
				end
			end
		end
	 end
	 
	 //outside
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
			store_image_x <= 0;
			store_image_y <= 0;
			store_diffuse_light_acc <= 0;
			store_reflection_coeffs <= 0;
			output_valid <= 0;
		end else begin
			output_valid <= 0;
			if(result_valid) begin
				store_image_x <= result_store_image_x;
				store_image_y <= result_store_image_y;
				
				store_diffuse_light_acc[96*0+95 : 96*0] <= result_store_diffuse_light_acc[0];
				store_diffuse_light_acc[96*1+95 : 96*1] <= result_store_diffuse_light_acc[1];
				store_diffuse_light_acc[96*2+95 : 96*2] <= result_store_diffuse_light_acc[2];
				store_diffuse_light_acc[96*3+95 : 96*3] <= result_store_diffuse_light_acc[3];
				store_diffuse_light_acc[96*4+95 : 96*4] <= result_store_diffuse_light_acc[4];
				
				store_reflection_coeffs[96*0+95 : 96*0] <= result_store_reflection_coeffs[0];
				store_reflection_coeffs[96*1+95 : 96*1] <= result_store_reflection_coeffs[1];
				store_reflection_coeffs[96*2+95 : 96*2] <= result_store_reflection_coeffs[2];
				store_reflection_coeffs[96*3+95 : 96*3] <= result_store_reflection_coeffs[3];
				//store_reflection_coeffs[96*4+95 : 96*4] <= result_store_reflection_coeffs[4];
				
				output_valid <= result_valid;
			end
		end
	 end

endmodule
