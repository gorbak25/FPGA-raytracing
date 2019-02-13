`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:23 01/26/2019 
// Design Name: 
// Module Name:    ray_write_back 
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
module ray_write_back(
		input clk,
		input rst,
		
		//ctr
		output reg frame_done, //strobed when all pixels from a frame were received
		
		//output from ray core
		input [10:0] image_x,
		input [10:0] image_y,
		input [96*5-1:0] diffuse_light_acc,
		input [96*4-1:0] reflection_coeffs,
		input new_data,
		
		//frame buffer interconnect
		output reg wea, // input [0 : 0] wea
	   output reg[18:0] addra, // input [18 : 0] addra
	   output reg[23:0] dina // input [23 : 0] dina
    );
	 
	 //stage1 -> calculate 4th reflection
	 reg stage1_valid;
	 reg [96*5-1:0] stage1_diffuse_light_acc;
	 reg [96*4-1:0] stage1_reflection_coeffs;
	 reg [10:0] stage1_image_x;
	 reg [10:0] stage1_image_y;
	 always @(posedge clk) begin
		if(rst) begin
			stage1_diffuse_light_acc <= 0;
			stage1_reflection_coeffs <= 0;
			stage1_valid <= 0;
			stage1_image_x <= 0;
			stage1_image_y <= 0;
		end else begin
			stage1_diffuse_light_acc <= diffuse_light_acc[96*5-1:0];
			stage1_reflection_coeffs <= reflection_coeffs[96*4-1:0];
			stage1_valid <= new_data;
			stage1_image_x <= image_x;
			stage1_image_y <= image_y;
		end
	 end
	 wire       stage1a_valid;
	 wire[95:0] stage1a_color_ref4;
	 wire [96*5-1:0] stage1a_diffuse_light_acc;
	 
	 wire        stage1b_valid;
	 wire [10:0] stage1b_image_x;
	 wire [10:0] stage1b_image_y;
	 wire [95:0] stage1b_color_final4;
	 wire [96*5-1:0] stage1b_diffuse_light_acc;
	 wire [96*4-1:0] stage1b_reflection_coeffs;

	 vector_mul_piecewise_seq stage1_reflection4(.clk(clk), .rst(rst), .new_data(stage1_valid), .output_valid(stage1a_valid), .v1(stage1_reflection_coeffs[96*4-1:96*3]), .v2(stage1_diffuse_light_acc[96*5-1:96*4]), .r(stage1a_color_ref4));
	 vector_add stage1_diffuse_add4(.clk(clk), .rst(rst), .new_data(stage1a_valid), .output_valid(stage1b_valid), .v1(stage1a_color_ref4), .v2(stage1a_diffuse_light_acc[96*4-1:96*3]), .r(stage1b_color_final4));
	 signal_pipe #(.L(7-1), .W(96*5)) pipe_stage1a_diffuse_light_acc   (.clk(clk), .in(stage1_diffuse_light_acc),  .out(stage1a_diffuse_light_acc));
	 signal_pipe #(.L(2-1), .W(96*5)) pipe_stage1b_diffuse_light_acc   (.clk(clk), .in(stage1a_diffuse_light_acc), .out(stage1b_diffuse_light_acc));
	 
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage1b_image_x          (.clk(clk), .in(stage1_image_x),           .out(stage1b_image_x));
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage1b_image_y          (.clk(clk), .in(stage1_image_y),           .out(stage1b_image_y));
	 signal_pipe #(.L(7+2-1), .W(96*4)) pipe_stage1b_reflection_coeffs  (.clk(clk), .in(stage1_reflection_coeffs),   .out(stage1b_reflection_coeffs));
	 
	 //stage2 -> calculate 3rd reflection
	 reg stage2_valid;
	 reg [96*3-1:0] stage2_diffuse_light_acc;
	 reg [96*3-1:0] stage2_reflection_coeffs;
	 reg [95:0] stage2_color_final4;
	 reg [10:0] stage2_image_x;
	 reg [10:0] stage2_image_y;
	 always @(posedge clk) begin
		if(rst) begin
			stage2_valid <= 0;
			stage2_diffuse_light_acc <= 0;
			stage2_reflection_coeffs <= 0;
			stage2_color_final4 <= 0;
			stage2_image_x <= 0;
			stage2_image_y <= 0;
		end else begin
			stage2_valid <= stage1b_valid;
			stage2_color_final4 <= stage1b_color_final4;
			stage2_diffuse_light_acc <= stage1b_diffuse_light_acc[96*3-1:0];
			stage2_reflection_coeffs <= stage1b_reflection_coeffs[96*3-1:0];
			stage2_image_x <= stage1b_image_x;
			stage2_image_y <= stage1b_image_y;
		end
	 end
	 wire            stage2a_valid;
	 wire [95:0]     stage2a_color_ref3;
	 wire [96*3-1:0] stage2a_diffuse_light_acc;
	 
	 wire            stage2b_valid;
	 wire [10:0]     stage2b_image_x;
	 wire [10:0]     stage2b_image_y;
	 wire [96*3-1:0] stage2b_diffuse_light_acc;
	 wire [96*3-1:0] stage2b_reflection_coeffs;
	 wire[95:0]      stage2b_color_final3;
	 
	 vector_mul_piecewise_seq stage2_reflection3(.clk(clk), .rst(rst), .new_data(stage2_valid), .output_valid(stage2a_valid), .v1(stage2_reflection_coeffs[96*3-1:96*2]), .v2(stage2_color_final4), .r(stage2a_color_ref3));
	 vector_add stage2_diffuse_add3(.clk(clk), .rst(rst), .new_data(stage2a_valid), .output_valid(stage2b_valid), .v1(stage2a_color_ref3), .v2(stage2a_diffuse_light_acc[96*3-1:96*2]), .r(stage2b_color_final3));
	 signal_pipe #(.L(7-1), .W(96*3)) pipe_stage2a_diffuse_light_acc   (.clk(clk), .in(stage2_diffuse_light_acc),  .out(stage2a_diffuse_light_acc));
	 signal_pipe #(.L(2-1), .W(96*3)) pipe_stage2b_diffuse_light_acc   (.clk(clk), .in(stage2a_diffuse_light_acc), .out(stage2b_diffuse_light_acc));
	 
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage2b_image_x          (.clk(clk), .in(stage2_image_x),           .out(stage2b_image_x));
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage2b_image_y          (.clk(clk), .in(stage2_image_y),           .out(stage2b_image_y));
	 signal_pipe #(.L(7+2-1), .W(96*3)) pipe_stage2b_reflection_coeffs  (.clk(clk), .in(stage2_reflection_coeffs),   .out(stage2b_reflection_coeffs));
	 
	 //stage3 -> calculate 2nd reflection
	 reg stage3_valid;
	 reg [96*2-1:0] stage3_diffuse_light_acc;
	 reg [96*2-1:0] stage3_reflection_coeffs;
	 reg [95:0] stage3_color_final3;
	 reg [10:0] stage3_image_x;
	 reg [10:0] stage3_image_y;
	 always @(posedge clk) begin
		if(rst) begin
			stage3_valid <= 0;
			stage3_diffuse_light_acc <= 0;
			stage3_reflection_coeffs <= 0;
			stage3_color_final3 <= 0;
			stage3_image_x <= 0;
			stage3_image_y <= 0;
		end else begin
			stage3_valid <= stage2b_valid;
			stage3_color_final3 <= stage2b_color_final3;
			stage3_diffuse_light_acc <= stage2b_diffuse_light_acc[96*2-1:0];
			stage3_reflection_coeffs <= stage2b_reflection_coeffs[96*2-1:0];
			stage3_image_x <= stage2b_image_x;
			stage3_image_y <= stage2b_image_y;
		end
	 end
	 wire            stage3a_valid;
	 wire [95:0]     stage3a_color_ref2;
	 wire [96*2-1:0] stage3a_diffuse_light_acc;
	 
	 wire            stage3b_valid;
	 wire [10:0]     stage3b_image_x;
	 wire [10:0]     stage3b_image_y;
	 wire [96*2-1:0] stage3b_diffuse_light_acc;
	 wire [96*2-1:0] stage3b_reflection_coeffs;
	 wire[95:0]      stage3b_color_final2;
	 
	 vector_mul_piecewise_seq stage3_reflection2(.clk(clk), .rst(rst), .new_data(stage3_valid), .output_valid(stage3a_valid), .v1(stage3_reflection_coeffs[96*2-1:96*1]), .v2(stage3_color_final3), .r(stage3a_color_ref2));
	 vector_add diffuse_add2(.clk(clk), .rst(rst), .new_data(stage3a_valid), .output_valid(stage3b_valid), .v1(stage3a_color_ref2), .v2(stage3a_diffuse_light_acc[96*2-1:96*1]), .r(stage3b_color_final2));
	 signal_pipe #(.L(7-1), .W(96*2)) pipe_stage3a_diffuse_light_acc   (.clk(clk), .in(stage3_diffuse_light_acc),  .out(stage3a_diffuse_light_acc));
	 signal_pipe #(.L(2-1), .W(96*2)) pipe_stage3b_diffuse_light_acc   (.clk(clk), .in(stage3a_diffuse_light_acc), .out(stage3b_diffuse_light_acc));
	 
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage3b_image_x          (.clk(clk), .in(stage3_image_x),           .out(stage3b_image_x));
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage3b_image_y          (.clk(clk), .in(stage3_image_y),           .out(stage3b_image_y));
	 signal_pipe #(.L(7+2-1), .W(96*2)) pipe_stage3b_reflection_coeffs  (.clk(clk), .in(stage3_reflection_coeffs),   .out(stage3b_reflection_coeffs));
	 
	 //stage4 -> calculate 1st reflection
	 reg stage4_valid;
	 reg [96*1-1:0] stage4_diffuse_light_acc;
	 reg [96*1-1:0] stage4_reflection_coeffs;
	 reg [95:0] stage4_color_final2;
	 reg [10:0] stage4_image_x;
	 reg [10:0] stage4_image_y;
	 always @(posedge clk) begin
		if(rst) begin
			stage4_valid <= 0;
			stage4_diffuse_light_acc <= 0;
			stage4_reflection_coeffs <= 0;
			stage4_color_final2 <= 0;
			stage4_image_x <= 0;
			stage4_image_y <= 0;
		end else begin
			stage4_valid <= stage3b_valid;
			stage4_color_final2 <= stage3b_color_final2;
			stage4_diffuse_light_acc <= stage3b_diffuse_light_acc[96*1-1:0];
			stage4_reflection_coeffs <= stage3b_reflection_coeffs[96*1-1:0];
			stage4_image_x <= stage3b_image_x;
			stage4_image_y <= stage3b_image_y;
		end
	 end
	 wire            stage4a_valid;
	 wire [95:0]     stage4a_color_ref1;
	 wire [96*1-1:0] stage4a_diffuse_light_acc;
	 
	 wire            stage4b_valid;
	 wire [10:0]     stage4b_image_x;
	 wire [10:0]     stage4b_image_y;
	 //wire [96*1-1:0] stage4b_diffuse_light_acc;
	 //wire [96*1-1:0] stage4b_reflection_coeffs;
	 wire[95:0]      stage4b_color_final1;
	 
	 vector_mul_piecewise_seq stage4_reflection1(.clk(clk), .rst(rst), .new_data(stage4_valid), .output_valid(stage4a_valid), .v1(stage4_reflection_coeffs[96*1-1:96*0]), .v2(stage4_color_final2), .r(stage4a_color_ref1));
	 vector_add stage4_diffuse_add1(.clk(clk), .rst(rst), .new_data(stage4a_valid), .output_valid(stage4b_valid), .v1(stage4a_color_ref1), .v2(stage4a_diffuse_light_acc[96*1-1:96*0]), .r(stage4b_color_final1));
	 signal_pipe #(.L(7-1), .W(96*2)) pipe_stage4a_diffuse_light_acc   (.clk(clk), .in(stage4_diffuse_light_acc),  .out(stage4a_diffuse_light_acc));
	 //signal_pipe #(.L(2-1), .W(96*2)) pipe_stage4b_diffuse_light_acc   (.clk(clk), .in(stage4a_diffuse_light_acc), .out(stage4b_diffuse_light_acc));
	 
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage4b_image_x          (.clk(clk), .in(stage4_image_x),           .out(stage4b_image_x));
	 signal_pipe #(.L(7+2-1), .W(11))   pipe_stage4b_image_y          (.clk(clk), .in(stage4_image_y),           .out(stage4b_image_y));
	 //signal_pipe #(.L(7+2-1), .W(96*2)) pipe_stage4b_reflection_coeffs  (.clk(clk), .in(stage4_reflection_coeffs),   .out(stage4b_reflection_coeffs));
	 
	 //combinatorial color correction - we are still in stage4
	 wire[95:0] stage4b_level0 = stage4b_color_final1;
	 wire[15:0] stage4b_level0_r_uncropped = (stage4b_level0[95:64] >>> 16) - (stage4b_level0[95:64] >>> 24);
	 wire[15:0] stage4b_level0_g_uncropped = (stage4b_level0[63:32] >>> 16) - (stage4b_level0[63:32] >>> 24);
	 wire[15:0] stage4b_level0_b_uncropped = (stage4b_level0[31:0] >>> 16) - (stage4b_level0[31:0] >>> 24);
	 
	 wire[7:0] stage4b_level0_r = $signed(stage4b_level0_r_uncropped)<0?0:($signed(stage4b_level0_r_uncropped)>255?255:stage4b_level0_r_uncropped);
	 wire[7:0] stage4b_level0_g = $signed(stage4b_level0_g_uncropped)<0?0:($signed(stage4b_level0_g_uncropped)>255?255:stage4b_level0_g_uncropped);
	 wire[7:0] stage4b_level0_b = $signed(stage4b_level0_b_uncropped)<0?0:($signed(stage4b_level0_b_uncropped)>255?255:stage4b_level0_b_uncropped);
	 
	 reg[19:0] received_pixels;
	 initial received_pixels = 0;
	 
	 always @(posedge clk) begin
		if(rst) begin
			wea <= 0;
			addra <= 0;
			dina <= 0;
			frame_done <= 0;
			received_pixels <= 0;
		end else begin
			frame_done <= 0;
			if(stage4_valid) begin
				if(received_pixels == 480*640-1) begin
					frame_done <= 1;
					received_pixels <= 0;
				end else begin
					received_pixels <= received_pixels+1;
				end
			end
		 
			wea <= stage4b_valid;
			addra <= stage4b_image_x + stage4b_image_y*640;
			dina[7:0] <= stage4b_level0_b;
			dina[15:8] <= stage4b_level0_g;
			dina[23:16] <= stage4b_level0_r;
		end
	 end
	 
endmodule
