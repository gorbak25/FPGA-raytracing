`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:13:19 01/13/2019 
// Design Name: 
// Module Name:    lightning_diffuse 
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
//LATENCY: 18
module lightning_diffuse(
		input clk,
		input rst,
		
		input[95:0] hit_matterial_diffuse_color,
		input[95:0] hit_normal,
		input[95:0] light_color,
		input[95:0] to_light,
		
		output reg[95:0] diffuse_component,
		
		//controll signals
		input new_data,
		output reg output_valid
    );
	 
	 reg       stage1_valid;
	 reg[95:0] stage1_hit_matterial_diffuse_color;
	 reg[95:0] stage1_hit_normal;
	 reg[95:0] stage1_light_color;
	 reg[95:0] stage1_to_light;
	 always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
		end else begin
			stage1_hit_matterial_diffuse_color <= hit_matterial_diffuse_color;
			stage1_hit_normal <= hit_normal;
			stage1_light_color <= light_color;
			stage1_to_light <= to_light;
			stage1_valid <= new_data;
		end
	 end
	 
	 wire       stage1a_valid;
	 wire[95:0] stage1a_tmp_col;
	 vector_mul_piecewise_seq diff_coll_mul2asd(.clk(clk), .rst(rst), .new_data(stage1_valid), .output_valid(stage1a_valid), .v1(stage1_light_color), .v2(stage1_hit_matterial_diffuse_color), .r(stage1a_tmp_col));
	 
	 wire       stage1b_valid;
	 reg        stage1b_mul_valid;
	 wire       stage1b_dot_valid;
	 reg [95:0] stage1b_tmp_col;
	 wire signed [31:0] stage1b_cos_factor_tmp;
	 wire signed [31:0] stage1b_cos_factor;
	 always @(posedge clk) begin stage1b_tmp_col <= stage1a_tmp_col; stage1b_mul_valid <= stage1a_valid; end
	 vector_dot lambertian_dot(.clk(clk), .rst(rst), .new_data(stage1_valid), .output_valid(stage1b_dot_valid), .v1(stage1_hit_normal), .v2(stage1_to_light), .r(stage1b_cos_factor_tmp)); 
	 assign stage1b_cos_factor = $signed(stage1b_cos_factor_tmp)<0 ? 0 : stage1b_cos_factor_tmp;
	 assign stage1b_valid = stage1b_mul_valid && stage1b_dot_valid;
	 
	 //--------------------------------------------------------------
	 reg       stage2_valid;
	 reg[95:0] stage2_tmp_col;
	 reg[31:0] stage2_factor;
	 always @(posedge clk) begin
		if(rst) begin
			stage2_valid <= 0;
		end else begin
			stage2_tmp_col <= stage1b_tmp_col;
			stage2_factor <= stage1b_cos_factor;
			stage2_valid <= stage1b_valid;
		end
	 end
	 
	 wire       stage2a_valid;
	 wire[95:0] stage2a_diffuse_factor;
	 vector_mul diffuse_col_mul(.clk(clk), .rst(rst), .new_data(stage2_valid), .output_valid(stage2a_valid), .v(stage2_tmp_col), .a(stage2_factor), .r(stage2a_diffuse_factor));
	 
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			diffuse_component <= stage2a_diffuse_factor;
			output_valid <= stage2a_valid;
		end
	 end

endmodule

