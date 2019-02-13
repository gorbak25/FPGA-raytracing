`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:10 01/10/2019 
// Design Name: 
// Module Name:    ray_sphere_intersection_pipeline 
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
//LATENCY: 83
module ray_sphere_intersection_pipeline(
		input clk,
		input rst,
		
		input[95:0] sphere_center,
		input[31:0] sphere_r2,
		
		input[95:0] ray_origin,
		input[95:0] ray_direction,
		
		output reg was_hit,
		output reg[31:0] hit_dist,
		
		input new_data,
		output reg output_valid
    );
	 
	 parameter EPS = 100000;
	 
	//-----------------------------------------------
	//stage1 - L = sphere_center - ray_origin
	//inputs:
	reg[95:0] stage1a_in_sphere_center;
	reg[31:0] stage1a_in_sphere_r2;
	reg[95:0] stage1a_in_ray_origin;
	reg[95:0] stage1a_in_ray_direction;
	reg stage1a_in_valid;
	//OUTSIDE -> stage1
	always @(posedge clk) begin
		if(rst) begin
			stage1a_in_sphere_center <= 0;
			stage1a_in_sphere_r2 <= 0;
			stage1a_in_ray_origin <= 0;
			stage1a_in_ray_direction <= 0;
			stage1a_in_valid <= 0;
		end else begin
			stage1a_in_sphere_center <= sphere_center;
			stage1a_in_sphere_r2 <= sphere_r2;
			stage1a_in_ray_origin <= ray_origin;
			stage1a_in_ray_direction <= ray_direction;
			stage1a_in_valid <= new_data;
		end
	end

	//outputs:
	wire[95:0] stage1_out_L;
	wire[95:0] stage1_out_ray_direction;
	wire[31:0] stage1_out_sphere_r2;
	wire       stage1_valid;
	
	//internal combinatorial logic
	vector_sub sub_unit1 (
		.clk(clk),
		.rst(rst),
		.new_data(stage1a_in_valid),
		.output_valid(stage1_valid),
		
		.v1(stage1a_in_sphere_center),
		.v2(stage1a_in_ray_origin),
		.r(stage1_out_L)
	);
	
	signal_pipe #(.L(1), .W(96)) pipe_stage1_out_ray_direction (.clk(clk), .in(stage1a_in_ray_direction), .out(stage1_out_ray_direction));
	signal_pipe #(.L(1), .W(32)) pipe_stage1_out_sphere_r2     (.clk(clk), .in(stage1a_in_sphere_r2),     .out(stage1_out_sphere_r2));
	//-----------------------------------------------

	//-----------------------------------------------
	//stage2 - L2 = dot(L,L) tca = dot(L, r_d)
	//inputs:
	reg[95:0] stage2a_in_L;
	reg[95:0] stage2a_in_ray_direction;
	reg[31:0] stage2a_in_sphere_r2;
	reg stage2a_in_valid;
	//stage1 -> stage2
	always @(posedge clk) begin
		if(rst) begin
			stage2a_in_L <= 0;
			stage2a_in_ray_direction <= 0;
			stage2a_in_sphere_r2 <= 0;
			stage2a_in_valid <= 0;
		end else begin
			stage2a_in_L <= stage1_out_L;
			stage2a_in_ray_direction <= stage1_out_ray_direction;
			stage2a_in_sphere_r2 <= stage1_out_sphere_r2;
			stage2a_in_valid <= stage1_valid;
		end
	end

	//outputs:
	wire[31:0] stage2_out_L2;
	wire[31:0] stage2_out_tca;
	wire[31:0] stage2_out_sphere_r2;
	wire       stage2_valid;
	
	//logic
	wire stage2_dot1_valid;
	wire stage2_dot2_valid;
	vector_dot dot_L2(.clk(clk), .rst(rst), .new_data(stage2a_in_valid), .output_valid(stage2_dot1_valid), 
							.v1(stage2a_in_L), .v2(stage2a_in_L), .r(stage2_out_L2));
	vector_dot dot_tca(.clk(clk), .rst(rst), .new_data(stage2a_in_valid), .output_valid(stage2_dot2_valid), 
							.v1(stage2a_in_L), .v2(stage2a_in_ray_direction), .r(stage2_out_tca));
	assign stage2_valid = stage2_dot1_valid && stage2_dot2_valid;
	
	signal_pipe #(.L(7), .W(32)) stage2_r2_pipe (.clk(clk), .in(stage2a_in_sphere_r2), .out(stage2_out_sphere_r2));
	//-----------------------------------------------
	
	//-----------------------------------------------
	//stage3 - tca2 = tca*tca
	//inputs:
	reg[31:0] stage3a_in_L2;
	reg[31:0] stage3a_in_tca;
	reg[31:0] stage3a_in_sphere_r2;
	reg stage3a_valid;
	//stage2 -> stage3
	always @(posedge clk) begin
		if(rst) begin
			stage3a_in_L2 <= 0;
			stage3a_in_tca <= 0;
			stage3a_in_sphere_r2 <= 0;
			stage3a_valid <= 0;
		end else begin
			stage3a_in_L2 <= stage2_out_L2;
			stage3a_in_tca <= stage2_out_tca;
			stage3a_in_sphere_r2 <= stage2_out_sphere_r2;
			stage3a_valid <= stage2_valid;
		end
	end

	//outputs:
	wire[31:0] stage3_out_L2;
	wire[31:0] stage3_out_tca;
	wire[31:0] stage3_out_tca2;
	wire[31:0] stage3_out_sphere_r2;
	wire       stage3_valid;
	
	//logic
	fixed_mul mul_tca2(.clk(clk), .rst(rst), .new_data(stage3a_valid), .output_valid(stage3_valid), .a(stage3a_in_tca), .b(stage3a_in_tca), .r(stage3_out_tca2));
	
	signal_pipe #(.L(6), .W(32)) pipe_stage3_out_tca        (.clk(clk), .in(stage3a_in_tca),        .out(stage3_out_tca));
	signal_pipe #(.L(6), .W(32)) pipe_stage3_out_L2         (.clk(clk), .in(stage3a_in_L2),         .out(stage3_out_L2));
	signal_pipe #(.L(6), .W(32)) pipe_stage3_out_sphere_r2  (.clk(clk), .in(stage3a_in_sphere_r2),  .out(stage3_out_sphere_r2));
	//-----------------------------------------------
	
	//-----------------------------------------------
	//stage4 - prepare data for sqrt
	//inputs:
	reg[31:0] stage4_L2;
	reg[31:0] stage4_tca;
	reg[31:0] stage4_tca2;
	reg[31:0] stage4_sphere_r2;
	reg stage4_valid;
	
	//stage3 -> stage4
	always @(posedge clk) begin
		if(rst) begin
			stage4_valid <= 0;
		end else begin
			stage4_L2 <= stage3_out_L2;
			stage4_tca <= stage3_out_tca;
			stage4_tca2 <= stage3_out_tca2;
			stage4_sphere_r2 <= stage3_out_sphere_r2;
			stage4_valid <= stage3_valid;
		end
	end
	
	//outputs:
	wire stage4b_was_hit;
	wire[31:0] stage4b_tca;
	wire[31:0] stage4b_thc2;
	wire       stage4b_valid;
	
	//internal combinatorial logic
	/*
	 float d2 = L.dotProduct(L) - tca * tca;
	 if (d2 > radius2) return false;
	 float thc = sqrt(radius2 - d2); 
	*/
	
	wire[31:0] stage4a_d2;
	wire[31:0] stage4a_sphere_r2;
	wire       stage4a_valid;
	fixed_sub sub_d2(.clk(clk), .rst(rst), .new_data(stage4_valid), .output_valid(stage4a_valid), .a(stage4_L2), .b(stage4_tca2), .r(stage4a_d2));
	signal_pipe #(.L(2-1), .W(32)) pipe_stage4a_sphere_r2(.clk(clk), .in(stage4_sphere_r2), .out(stage4a_sphere_r2));
	fixed_sub sub_thc2(.clk(clk), .rst(rst), .new_data(stage4a_valid), .output_valid(stage4b_valid), .a(stage4a_sphere_r2), .b(stage4a_d2), .r(stage4b_thc2));
	signal_pipe #(.L(4-1), .W(32)) pipe_stage4b_tca(.clk(clk), .in(stage4_tca), .out(stage4b_tca));
	//assign stage4_out_thc2 = stage4_in_sphere_r2 - stage4_d2;
	assign stage4b_was_hit = !stage4b_thc2[31] && stage4b_thc2 > 0;
	
	//-----------------------------------------------
	
	//stage 5: - calculate sqrt
	//outputs:
	wire[31:0] stage5_out_thc;
	wire stage5_out_was_hit;
	wire[31:0] stage5_out_tca;
	wire stage5_out_valid;
	
	fixed_sqrt_pipeline sphere_sqrt (
    .clk(clk),
	 .rst(rst),
    .a(stage4b_thc2), 
    .r(stage5_out_thc),
	 .new_data(stage4b_valid),
	 .output_valid(stage5_out_valid)
    );
	 
	 signal_pipe #(.L(54-1), .W(32)) tca_pipe (
    .clk(clk), 
    .in(stage4b_tca), 
    .out(stage5_out_tca)
    );
	 
	 signal_pipe #(.L(54-1), .W(1)) was_hit_pipe (
    .clk(clk), 
    .in(stage4b_was_hit), 
    .out(stage5_out_was_hit)
    );
	 
	 //-----------------------------------------------	 
	 //stage 6 - calculate both
	 wire[31:0] stage6_t0;
	 wire[31:0] stage6_t1;
	 wire stage6_valid1;
	 wire stage6_valid2;
	 wire stage6_valid;
	 fixed_sub sub_t0 (.clk(clk), .rst(rst), .new_data(stage5_out_valid), .output_valid(stage6_valid1), .a(stage5_out_tca), .b(stage5_out_thc), .r(stage6_t0));
	 fixed_add add_t0 (.clk(clk), .rst(rst), .new_data(stage5_out_valid), .output_valid(stage6_valid2), .a(stage5_out_tca), .b(stage5_out_thc), .r(stage6_t1));
	 assign stage6_valid = stage6_valid1 && stage6_valid2;
	 
	 wire[31:0] stage6_t_smaller;
	 wire[31:0] stage6_t_bigger;
	 assign stage6_t_smaller = stage6_t0 > stage6_t1 ? stage6_t1 : stage6_t0;
	 assign stage6_t_bigger = stage6_t0 > stage6_t1 ? stage6_t0 : stage6_t1;
	 
	 wire stage5_in6_out_was_hit;
	 signal_pipe #(.L(1), .W(1)) pipe_stage5_in6_out_was_hit (.clk(clk), .in(stage5_out_was_hit), .out(stage5_in6_out_was_hit));
	 
	 //-------------------------------------------------
	 //stage 7 - final
	 reg       stage7_valid;
	 reg signed[31:0] stage7_t_smaller;
	 reg signed[31:0] stage7_t_bigger;
	 reg       stage7_stage5_was_hit;
	 
	 always @(posedge clk) begin
		if(rst) begin
			stage7_valid <= 0;
		end else begin
			stage7_valid <= stage6_valid;
			stage7_t_smaller <= stage6_t_smaller;
			stage7_t_bigger <= stage6_t_bigger;
			stage7_stage5_was_hit <= stage5_in6_out_was_hit;
		end
	 end
	 
	 wire stage7_was_hit;
	 wire[31:0] stage7_t;
	 
	 assign stage7_was_hit = stage7_stage5_was_hit && (!stage7_t[31] && stage7_t >= EPS);
	 assign stage7_t = stage7_t_smaller[31] ? stage7_t_bigger : stage7_t_smaller;
	 
	 //stage 6 -> OUTSIDE
	 always @(posedge clk) begin
		if(rst) begin
			was_hit <= 0;
			hit_dist <= 0;
			output_valid <= 0;
		end else begin
			was_hit <= stage7_was_hit;
			hit_dist <= stage7_t;
			output_valid <= stage7_valid;
		end
	 end

endmodule
