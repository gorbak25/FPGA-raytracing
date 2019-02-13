//`default_nettype none
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:42:21 01/09/2019 
// Design Name: 
// Module Name:    vector_normalizer_pipeline 
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

//LATENCY: 50
module vector_normalizer_pipeline(
		input clk,
		input rst,
		
		input [95:0] v,
		input new_data,
		
		output reg [95:0] r,
		output reg output_valid
    );
	 
	wire[11:0] rom_addr;
	wire[31:0] rom_dout;
	isqrt_LUT isqrt_LUT_instance (
	  .clka(clk), // input clka
	  .addra(rom_addr), // input [11 : 0] addra
	  .douta(rom_dout) // output [31 : 0] douta
	);
	
	//-----------------------------------------------
	//inputs:
	reg [95:0] stage1a_in_v;
	reg stage1a_in_valid;
	//OUTSIDE -> stage1
	always @(posedge clk) begin
		if(rst) begin
			stage1a_in_v <= 0;
			stage1a_in_valid <= 0;
		end else begin
			stage1a_in_v <= v;
			stage1a_in_valid <= new_data;
		end
	end
	
	//outputs:
	wire[95:0] stage1_out_scaled_v;

	//internal combinatorial logic
	wire[31:0] stage1a_cord_x_abs;
	wire[31:0] stage1a_cord_y_abs;
	wire[31:0] stage1a_cord_z_abs;
	fixed_abs fixed_abs_x (
    .a(stage1a_in_v[31:0]), 
    .r(stage1a_cord_x_abs)
    );
	 fixed_abs fixed_abs_y (
    .a(stage1a_in_v[63:32]), 
    .r(stage1a_cord_y_abs)
    );
	 fixed_abs fixed_abs_z (
    .a(stage1a_in_v[95:64]), 
    .r(stage1a_cord_z_abs)
    );
	 
	 wire[31:0] stage1a_cord_max;
	 assign stage1a_cord_max = stage1a_cord_x_abs > stage1a_cord_y_abs ? (stage1a_cord_x_abs > stage1a_cord_z_abs ? stage1a_cord_x_abs : stage1a_cord_z_abs) : (stage1a_cord_y_abs > stage1a_cord_z_abs ? stage1a_cord_y_abs : stage1a_cord_z_abs); 
	 
	 //PIPE
	reg[31:0] stage1b_cord_max;
	reg [95:0] stage1b_v;
	reg stage1b_valid;
	always @(posedge clk) begin
		if(rst) begin
			stage1b_valid <= 0;
		end else begin
			stage1b_valid <= stage1a_in_valid;
			stage1b_cord_max <= stage1a_cord_max;
			stage1b_v <= stage1a_in_v;
		end
	end
	 
	 wire[5:0] stage1b_cord_max_lz;
	 clz32 cord_max_clz(
		.a(stage1b_cord_max),
		.z(stage1b_cord_max_lz)
	 );
	 
	//PIPE
	reg [5:0] stage1c_cord_max_lz;
	reg [95:0] stage1c_v;
	reg stage1c_valid;
	always @(posedge clk) begin
		if(rst) begin
			stage1c_valid <= 0;
		end else begin
			stage1c_valid <= stage1b_valid;
			stage1c_cord_max_lz <= stage1b_cord_max_lz;
			stage1c_v <= stage1b_v;
		end
	end
	 
	 wire signed[31:0] stage1c_x;
	 wire signed[31:0] stage1c_y;
	 wire signed[31:0] stage1c_z;
	 assign stage1c_x = $signed(stage1c_v[31:0]);
	 assign stage1c_y = $signed(stage1c_v[63:32]);
	 assign stage1c_z = $signed(stage1c_v[95:64]);
	 
	 reg signed[31:0] stage1c_x_scaled;
	 reg signed[31:0] stage1c_y_scaled;
	 reg signed[31:0] stage1c_z_scaled;
	 
	 wire[2:0] cord_max_lz_right_shift;
	 wire[5:0] cord_max_lz_left_shift;
	 assign cord_max_lz_right_shift = (stage1c_cord_max_lz < 5) ? 5-stage1c_cord_max_lz : 0;
	 assign cord_max_lz_left_shift  = (stage1c_cord_max_lz > 5) ? stage1c_cord_max_lz-5 : 0;
	 
	 always @(stage1c_x, stage1c_y, stage1c_z, cord_max_lz_right_shift, cord_max_lz_left_shift) begin
		//scale in such a way that the max magnitude is around ~4
		if(stage1c_cord_max_lz < 5) begin
			stage1c_x_scaled = stage1c_x >>> cord_max_lz_right_shift;
			stage1c_y_scaled = stage1c_y >>> cord_max_lz_right_shift;
			stage1c_z_scaled = stage1c_z >>> cord_max_lz_right_shift;
		end else if(stage1c_cord_max_lz > 5) begin
			stage1c_x_scaled = stage1c_x <<< cord_max_lz_left_shift; 
			stage1c_y_scaled = stage1c_y <<< cord_max_lz_left_shift;
			stage1c_z_scaled = stage1c_z <<< cord_max_lz_left_shift;
		end else begin
			stage1c_x_scaled = stage1c_x;
			stage1c_y_scaled = stage1c_y;
			stage1c_z_scaled = stage1c_z;
		end
	 end

	assign stage1_out_scaled_v[31:0]  = stage1c_x_scaled;
	assign stage1_out_scaled_v[63:32] = stage1c_y_scaled;
	assign stage1_out_scaled_v[95:64] = stage1c_z_scaled;
	
	//-----------------------------------------------

	//-----------------------------------------------
	//stage2 - calculate dot product with scaled vector
	//inputs:
	reg [95:0] stage2a_in_v;
	reg stage2a_in_valid;
	//stage1 -> stage2
	always @(posedge clk) begin
		if(rst) begin
			stage2a_in_v <= 0;
			stage2a_in_valid <= 0;
		end else begin
			stage2a_in_v <= stage1_out_scaled_v;
			stage2a_in_valid <= stage1c_valid;
		end
	end

	//outputs:
	wire[95:0] stage2_out_v;
	wire[31:0] stage2_out_dot;
	wire stage2_out_valid;

	vector_dot vector_dot_len2(
		.clk(clk), 
		.rst(rst), 
		.new_data(stage2a_in_valid), 
		.output_valid(stage2_out_valid), 
		
		.v1(stage2a_in_v), 
		.v2(stage2a_in_v), 
		.r(stage2_out_dot));
	signal_pipe #(.L(7), .W(96)) vector_pipe_dot( .clk(clk), .in(stage2a_in_v), .out(stage2_out_v));

	//-----------------------------------------------
	//stage LAT: 1+isqrt_LATENCY = 1+5
	//outputs:
	wire[31:0] isqrt_r;
	wire isqrt_valid;
	wire[95:0] isqrt_v;
	fixed_isqrt_pipeline isqrt(
		.clk(clk),
		.rst(rst),
		.a(stage2_out_dot),
		.r(isqrt_r),
		.new_data(stage2_out_valid),
		.output_valid(isqrt_valid),
		
		.rom_addr(rom_addr),
		.rom_dout(rom_dout)
	);
	
	signal_pipe #(.L(30 - 1), .W(96)) vector_pipe (
    .clk(clk), 
    .in(stage2_out_v), 
    .out(isqrt_v)
    );
	 
	 wire[95:0] result;
	 //last stage -> mul isqrt with vector
	 wire mul_valid;
	 vector_mul vector_normalizer_mul (.clk(clk), .rst(rst), .new_data(isqrt_valid), .output_valid(mul_valid), .v(isqrt_v), .a(isqrt_r), .r(result));
	 
	 //last stage -> OUTSIDE
	 always @(posedge clk) begin
		if(rst) begin
			r <= 0;
			output_valid <= 0;
		end else begin
			r <= result;
			output_valid <= mul_valid;
		end
	 end
	
endmodule
