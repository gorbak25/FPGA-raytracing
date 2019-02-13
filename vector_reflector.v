`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:51 01/12/2019 
// Design Name: 
// Module Name:    vector_reflector 
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
//LATENCY: 21
module vector_reflector_pipeline(
		input clk,
		input rst,
		
		input[95:0] v,
		input[95:0] n,
		output reg [95:0] r,
		
		input new_data,
		output reg output_valid
    );
	 
	 reg[95:0] stage1_v;
	 reg[95:0] stage1_n;
	 reg stage1_valid;
	 
	 always @(posedge clk) begin
		if(rst) begin
			stage1_v <= 0;
		end else begin
			stage1_v <= v;
			stage1_n <= n;
			stage1_valid <= new_data;
		end
	 end
	
	 wire stage1a_valid;
	 wire signed[31:0] stage1a_dot;
	 wire[95:0] stage1a_v;
	 wire[95:0] stage1a_n;
	 vector_dot stage1_reflect_dot(.clk(clk), .rst(rst), .new_data(stage1_valid), .output_valid(stage1a_valid), .v1(stage1_v), .v2(stage1_n), .r(stage1a_dot));
	 signal_pipe #(.L(8-1), .W(96)) pipe_stage1a_v(.clk(clk), .in(stage1_v), .out(stage1a_v));
	 signal_pipe #(.L(8-1), .W(96)) pipe_stage1a_n(.clk(clk), .in(stage1_n), .out(stage1a_n));
	 
	 wire signed[31:0] stage1a_dot2;
	 assign stage1a_dot2 = ($signed(stage1a_dot)<<<1);

	 //--------------------------------------------------------

	reg[95:0] stage2_n;
	reg[95:0] stage2_v;
	reg signed[31:0] stage2_dot2;
	reg stage2_valid;
	always @(posedge clk) begin
		if(rst) begin
			stage2_valid <= 0;
		end else begin
			stage2_n <= stage1a_n;
			stage2_v <= stage1a_v;
			stage2_dot2 <= stage1a_dot2;
			stage2_valid <= stage1a_valid;
		end
	end
	
	 wire signed[31:0] stage2_neg_dot2;
	 assign stage2_neg_dot2 = -1*$signed(stage2_dot2);

	 wire       stage2a_valid;
	 wire[95:0] stage2a_almost_res;
	 wire[95:0] stage2a_v;
	 
	 vector_mul stage2_reflect_mul(.clk(clk), .rst(rst), .new_data(stage2_valid), .output_valid(stage2a_valid), .v(stage2_n), .a(stage2_neg_dot2), .r(stage2a_almost_res));
	 signal_pipe #(.L(7-1), .W(96)) pipe_stage2a_v(.clk(clk), .in(stage2_v), .out(stage2a_v));
	 
	 //---------------------------------------------------------------
	 reg[95:0] stage3_almost_res;
	 reg[95:0] stage3_v;
	 reg stage3_valid;
	 
	 always @(posedge clk) begin
		if(rst) begin
			stage3_valid <= 0;
		end else begin
			stage3_almost_res <= stage2a_almost_res;
			stage3_v <= stage2a_v;
			stage3_valid <= stage2a_valid;
		end
	 end
	 
	 wire       stage3a_valid;
	 wire[95:0] stage3a_r;
	 vector_add stage3_reflect_add(.clk(clk), .rst(rst), .new_data(stage3_valid), .output_valid(stage3a_valid), .v1(stage3_almost_res), .v2(stage3_v), .r(stage3a_r)); 

	always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			output_valid <= stage3a_valid;
			r <= stage3a_r;
		end
	end

endmodule
