`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:57:42 01/26/2019 
// Design Name: 
// Module Name:    ray_caster 
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
module ray_caster(
		input clk,
		input ce,
		input rst,
		output ready,
		
		//control
		input render_start,
		input[95:0] camera_origin,
		input[95:0] camera_front,
		input[95:0] camera_left,
		input[95:0] camera_up,
		
		//data for ray core
		output reg[10:0] core_image_x,
		output reg[10:0] core_image_y,
		output reg[95:0] core_ray_origin,
		output reg[95:0] core_ray_direction,
		output reg output_valid
    );
	 
	 parameter RES_X = 640;
	 parameter RES_Y = 480;
	 
	 parameter STATE_IDLE = 2'b01;
	 parameter STATE_CAST = 2'b10;
	 reg[1:0] state;
	 initial state = STATE_IDLE;
	 
	 assign ready = state == STATE_IDLE;
	 
	 reg stage1_valid;
	 reg[10:0] stage1_cast_x;
	 reg[10:0] stage1_cast_y;
	 initial stage1_cast_x = 0;
	 initial stage1_cast_y = 0;
	 initial stage1_valid = 0;
	 
	 wire[10:0] stage2_cast_x;
	 wire[10:0] stage2_cast_y;
	 wire[95:0] stage2_vec_x;
	 wire[95:0] stage2_vec_y;
	 wire stage2_mul1_valid;
	 wire stage2_mul2_valid;
	 wire stage2_valid;
	 assign stage2_valid = stage2_mul1_valid && stage2_mul2_valid;
	 vector_mul_integer camera_mul_left (.clk(clk), .ce(ce), .rst(rst), .new_data(stage1_valid), .output_valid(stage2_mul1_valid), .v(camera_left), .a((RES_X>>1)-stage1_cast_x-1), .r(stage2_vec_x));
	 vector_mul_integer camera_mul_up (.clk(clk), .ce(ce), .rst(rst), .new_data(stage1_valid), .output_valid(stage2_mul2_valid), .v(camera_up), .a((RES_Y>>1)-stage1_cast_y-1), .r(stage2_vec_y));
	 signal_pipe_ce #(.W(11), .L(6)) pipe_stage1_cast_x(.clk(clk), .ce(ce), .in(stage1_cast_x), .out(stage2_cast_x));
	 signal_pipe_ce #(.W(11), .L(6)) pipe_stage1_cast_y(.clk(clk), .ce(ce), .in(stage1_cast_y), .out(stage2_cast_y));
	 
	 wire[10:0] stage3_cast_x;
	 wire[10:0] stage3_cast_y;
	 wire[95:0] stage3_vec_acc;
	 wire stage3_valid;
	 vector_add_ce camera_add_1 (.clk(clk), .ce(ce), .rst(rst), .new_data(stage2_valid), .output_valid(stage3_valid), .v1(stage2_vec_x), .v2(stage2_vec_y), .r(stage3_vec_acc));
	 signal_pipe_ce #(.W(11), .L(1)) pipe_stage2_cast_x(.clk(clk), .ce(ce), .in(stage2_cast_x), .out(stage3_cast_x));
	 signal_pipe_ce #(.W(11), .L(1)) pipe_stage2_cast_y(.clk(clk), .ce(ce), .in(stage2_cast_y), .out(stage3_cast_y));
	 
	 wire[10:0] stage4_cast_x;
	 wire[10:0] stage4_cast_y;
	 wire[95:0] stage4_vec_res;
	 wire stage4_valid;
	 vector_add_ce camera_add_2 (.clk(clk), .ce(ce), .rst(rst), .new_data(stage3_valid), .output_valid(stage4_valid), .v1(stage3_vec_acc), .v2(camera_front), .r(stage4_vec_res));
	 signal_pipe_ce #(.W(11), .L(1)) pipe_stage3_cast_x(.clk(clk), .ce(ce), .in(stage3_cast_x), .out(stage4_cast_x));
	 signal_pipe_ce #(.W(11), .L(1)) pipe_stage3_cast_y(.clk(clk), .ce(ce), .in(stage3_cast_y), .out(stage4_cast_y));
	 
	 initial output_valid = 0;
	 //output latch
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			if(ce) begin
				core_image_x       <= stage4_cast_x;
				core_image_y       <= stage4_cast_y;
				core_ray_origin    <= camera_origin;
				core_ray_direction <= stage4_vec_res;
				output_valid       <= stage4_valid;
			end
		end
	 end
	 
	 //stage1 driver
	 always @(posedge clk) begin
		if(rst) begin
			state <= STATE_IDLE;
			stage1_cast_x <= 0;
			stage1_cast_y <= 0;
		end else begin
			if(ce) begin
				stage1_valid <= 0;
				case(state)
					STATE_IDLE:
					begin
						if(render_start) begin
							stage1_cast_x <= 0;
							stage1_cast_y <= 0;
							stage1_valid <= 1;
							state <= STATE_CAST;
						end
					end
					
					STATE_CAST:
					begin
						if(stage1_cast_x == RES_X-1) begin
							if(stage1_cast_y == RES_Y-1) begin
								stage1_cast_y <= 0;
								stage1_valid <= 0;
								state <= STATE_IDLE;
							end else begin
								stage1_cast_y <= stage1_cast_y+1;
							end
							stage1_cast_x <= 0;
						end else begin
							stage1_cast_x <= stage1_cast_x+1;
						end
						stage1_valid <= 1;
					end
					
					default: 
					begin
						state <= 2'bxx;
					end
				endcase
			end
		end
	 end


endmodule
