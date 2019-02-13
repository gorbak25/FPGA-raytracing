`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:30 01/11/2019 
// Design Name: 
// Module Name:    ray_plane_intersection_pipeline 
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
//LATENCY: 43
module ray_plane_intersection_pipeline(
		input clk,
		input rst,
		
		input[95:0] plane_origin,
		input[95:0] plane_normal,
		
		input[95:0] ray_origin,
		input[95:0] ray_direction,
		
		output reg was_hit,
		output reg[31:0] hit_dist,
		
		input new_data,
		output reg output_valid
    );
	 
	 parameter EPS = 100000;
	 
	//-----------------------------------------------
	//stage1:
	//denom = dot(plane_normal, ray_direction)
	//numerator = dot((plane_origin - ray_origin), plane_normal)
	//inputs:
	reg[95:0] stage1a_in_plane_origin;
	reg[95:0] stage1a_in_plane_normal;
	reg[95:0] stage1a_in_ray_origin;
	reg[95:0] stage1a_in_ray_direction;
	reg stage1a_in_valid;
	//OUTSIDE -> stage1
	always @(posedge clk) begin
		if(rst) begin
			stage1a_in_plane_origin <= 0;
			stage1a_in_plane_normal <= 0;
			stage1a_in_ray_origin <= 0;
			stage1a_in_ray_direction <= 0;
			stage1a_in_valid <= 0;
		end else begin
			stage1a_in_plane_origin <= plane_origin;
			stage1a_in_plane_normal <= plane_normal;
			stage1a_in_ray_origin <= ray_origin;
			stage1a_in_ray_direction <= ray_direction;
			stage1a_in_valid <= new_data;
		end
	end

	//outputs:
	wire[31:0] stage1_out_numerator;
	wire[31:0] stage1_out_denominator;
	wire stage1_out_was_hit;
	wire stage1_valid;
	
	//logic
	wire[31:0] stage1b_out_denominator;
	wire stage1b_valid;
	vector_dot dot_denom (
		.clk(clk),
		.rst(rst),
		.new_data(stage1a_in_valid),
		.output_valid(stage1b_valid),
	
		.v1(stage1a_in_plane_normal),
		.v2(stage1a_in_ray_direction),
		.r(stage1b_out_denominator)
	);
	wire stage1_dot2_valid;
	signal_pipe #(.L(1), .W(32)) pipe_stage1_out_denominator (.clk(clk), .in(stage1b_out_denominator), .out(stage1_out_denominator));
	signal_pipe #(.L(1), .W(1))  pipe_stage1_dot2_valid (.clk(clk), .in(stage1b_valid), .out(stage1_dot2_valid));

	wire[95:0] stage1c_L;
	wire[95:0] stage1c_in_plane_normal;
	wire stage1c_valid;
	signal_pipe #(.L(1), .W(96)) pipe_stage1c_in_plane_normal (.clk(clk), .in(stage1a_in_plane_normal), .out(stage1c_in_plane_normal));
	vector_sub sub_plane_L(
		.clk(clk),
		.rst(rst),
		.new_data(stage1a_in_valid),
		.output_valid(stage1c_valid),
		
		.v1(stage1a_in_plane_origin),
		.v2(stage1a_in_ray_origin),
		.r(stage1c_L)
	);
	
	wire stage1_dot1_valid;
	vector_dot dot_numer (
		.clk(clk),
		.rst(rst),
		.new_data(stage1c_valid),
		.output_valid(stage1_dot1_valid),
		
		.v1(stage1c_L),
		.v2(stage1c_in_plane_normal),
		.r(stage1_out_numerator)
	);
	
	assign stage1_valid = stage1_dot2_valid && stage1_dot1_valid;
	assign stage1_out_was_hit = $signed(stage1_out_denominator) > EPS || $signed(stage1_out_denominator) < (-1*EPS);
	//-----------------------------------------------
	
	//stage 2: - calculate 1/denom
	//outputs:
	wire[31:0] stage2_out_inv_denom;
	wire[31:0] stage2_out_numerator;
	wire stage2_out_was_hit;
	wire stage2_out_valid;
	
	fixed_inv_pipeline fixed_inv_plane_denom (
    .clk(clk),
	 .rst(rst),
    .a(stage1_out_denominator), 
    .new_data(stage1_valid), 
    .r(stage2_out_inv_denom), 
    .output_valid(stage2_out_valid)
    );
	 
	 signal_pipe #(.L(24-1), .W(32)) numerator_pipe (
    .clk(clk), 
    .in(stage1_out_numerator), 
    .out(stage2_out_numerator)
    );
	 
	 signal_pipe #(.L(24-1), .W(1)) plane_was_hit_pipe (
    .clk(clk), 
    .in(stage1_out_was_hit), 
    .out(stage2_out_was_hit)
    );
	 
	 //stage 3: calculate dist
	 //outputs:
	 wire signed[31:0] stage3_out_dist;
	 wire stage3_out_was_hit;
	 wire stage3_valid;
	 
	 fixed_mul plane_dist_mul (
	 .clk(clk),
	 .rst(rst),
	 .new_data(stage2_out_valid),
	 .output_valid(stage3_valid),
	 
	 .a(stage2_out_numerator),
	 .b(stage2_out_inv_denom),
	 .r(stage3_out_dist));
	 
	 wire stage3_in_was_hit;
	 signal_pipe #(.L(6), .W(1)) pipe_stage3_in_was_hit (.clk(clk), .in(stage2_out_was_hit), .out(stage3_in_was_hit));
	 
	 assign stage3_out_was_hit = stage3_in_was_hit && ($signed(stage3_out_dist) > EPS);
	
	//stage3 -> OUTSIDE
	always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
			was_hit <= 0;
			hit_dist <= 0;
		end else begin
			output_valid <= stage3_valid;
			was_hit <= stage3_out_was_hit;
			hit_dist <= stage3_out_dist;
		end
	end
	
endmodule
