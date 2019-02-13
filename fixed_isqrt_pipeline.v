`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:45:53 01/08/2019 
// Design Name: 
// Module Name:    fixed_isqrt_pipeline 
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
//LATENCY: 30
module fixed_isqrt_pipeline(
	input clk,
	input rst,
	input signed [31:0] a,
	input new_data,
	
	output reg signed [31:0] r,
	output reg output_valid,
	
	input [31:0] rom_dout,
	output reg [11:0] rom_addr
	
);

//-----------------------------------------------
//stage1a - decode operand
//inputs:
reg stage1a_valid;
reg signed [31:0] stage1a_a;
//OUTSIDE -> stage1
always @(posedge clk) begin
	if(rst) begin
		stage1a_valid <= 0;
	end else begin
		stage1a_valid <= new_data;
		stage1a_a <= a;
	end
end

//outputs:
wire[5:0] stage1a_z_pos;
wire[6:0] stage1a_msb_sel;

wire[5:0] stage1a_z;
clz32 clz32_instance(
	.a(stage1a_a),
	.z(stage1a_z)
);
assign stage1a_z_pos = 31-stage1a_z;
assign stage1a_msb_sel[6] = stage1a_a[{stage1a_z_pos-1}];
assign stage1a_msb_sel[5] = stage1a_a[{stage1a_z_pos-2}];
assign stage1a_msb_sel[4] = stage1a_a[{stage1a_z_pos-3}];
assign stage1a_msb_sel[3] = stage1a_a[{stage1a_z_pos-4}];
assign stage1a_msb_sel[2] = stage1a_a[{stage1a_z_pos-5}];
assign stage1a_msb_sel[1] = stage1a_a[{stage1a_z_pos-6}];
assign stage1a_msb_sel[0] = stage1a_a[{stage1a_z_pos-7}];

//--------------------------------------------
//stage1b - calculate lookup addr
reg stage1b_valid;
reg signed[31:0] stage1b_a;
reg[5:0] stage1b_z_pos;
reg[6:0] stage1b_msb_sel;

always @(posedge clk) begin
	if(rst) begin
		stage1b_valid <= 0;
	end else begin
		stage1b_valid <= stage1a_valid;
		stage1b_a <= stage1a_a;
		stage1b_z_pos <= stage1a_z_pos;
		stage1b_msb_sel <= stage1a_msb_sel;
	end
end

//outputs:
reg[11:0] stage1b_rom_addr;
reg stage1b_lookup_exact;
reg[31:0] stage1b_a_div_2;

//internal combinatorial logic
always @* begin
	if((stage1b_a < $signed(1024))) begin
		stage1b_lookup_exact = 1;
		stage1b_rom_addr = 0;
		stage1b_a_div_2 = 0;
	end else if(stage1b_a < 1024+16) begin
		stage1b_lookup_exact = 1;
		stage1b_rom_addr = stage1b_a-1024;
		stage1b_a_div_2 = 0;
	end else begin
		stage1b_lookup_exact = 0;
		stage1b_rom_addr = 16 + 128*(stage1b_z_pos-10) + stage1b_msb_sel;
		stage1b_a_div_2 = stage1b_a>>1;
	end
end
//-----------------------------------------------
//stage1c - pass addr to BRAM
reg stage1c_valid;
reg stage1c_lookup_exact;
reg[31:0] stage1c_a_div_2;
always @(posedge clk) begin
	if(rst) begin
		stage1c_valid <= 0;
	end else begin
		stage1c_valid <= stage1b_valid;
		stage1c_lookup_exact <= stage1b_lookup_exact;
		stage1c_a_div_2 <= stage1b_a_div_2;
		rom_addr <= stage1b_rom_addr;
	end
end

//-----------------------------------------------
//stage2 - retrieve initial guess from table
//inputs:
//rom_dout
reg stage2a_in_lookup_exact;
reg[31:0] stage2a_in_a_div_2;
reg stage2a_valid;

//stage1 -> stage2
always @(posedge clk) begin
	if(rst) begin
		stage2a_valid <= 0;
	end else begin
		stage2a_in_lookup_exact <= stage1c_lookup_exact;
		stage2a_in_a_div_2 <= stage1c_a_div_2;
		stage2a_valid <= stage1c_valid;
	end
end

//outputs:
wire stage2_out_lookup_exact;
wire[31:0] stage2_out_xy;
wire[31:0] stage2_out_y;
wire stage2_valid;

//internal combinatorial logic
wire[31:0] stage2_r;
fixed_mul fixed_mul_stage2(
	.clk(clk),
	.rst(rst),
	.new_data(stage2a_valid),
	.output_valid(stage2_valid),
	
	.a(stage2a_in_a_div_2),
	.b(rom_dout),
	.r(stage2_r));

signal_pipe #(.L(6), .W(1))   pipe_stage2_out_lookup_exact (.clk(clk), .in(stage2a_in_lookup_exact), .out(stage2_out_lookup_exact));
assign stage2_out_xy = stage2_r; 
signal_pipe #(.L(6), .W(32))  pipe_stage2_out_y            (.clk(clk), .in(rom_dout),                .out(stage2_out_y));

//-----------------------------------------------

//-----------------------------------------------
//stage3 - th - xy*y
//inputs:
reg stage3a_in_lookup_exact;
reg[31:0] stage3a_in_xy;
reg[31:0] stage3a_in_y;
reg stage3a_valid;

//stage2 -> stage3
always @(posedge clk) begin
	if(rst) begin
		stage3a_valid <= 0;
	end else begin
		stage3a_valid <= stage2_valid;
		stage3a_in_lookup_exact <= stage2_out_lookup_exact;
		stage3a_in_xy <= stage2_out_xy;
		stage3a_in_y	<= stage2_out_y;
	end
end

//outputs:
wire stage3_out_lookup_exact;
wire[31:0] stage3_out_acc;
wire[31:0] stage3_out_y;
wire stage3_valid;

//internal combinatorial logic
wire[31:0] th = 32'b00000001100000000000000000000000;

wire[31:0] stage3b_r;
wire stage3b_valid;
fixed_mul fixed_mul_stage3(
	.clk(clk),
	.rst(rst),
	.new_data(stage3a_valid),
	.output_valid(stage3b_valid),
	
	.a(stage3a_in_xy),
	.b(stage3a_in_y),
	.r(stage3b_r));

fixed_sub fixed_sub_stage3(
	.clk(clk),
	.rst(rst),
	.new_data(stage3b_valid),
	.output_valid(stage3_valid),
	
	.a(th),
	.b(stage3b_r),
	.r(stage3_out_acc)
);

signal_pipe #(.L(8), .W(1))   pipe_stage3_out_lookup_exact (.clk(clk), .in(stage3a_in_lookup_exact), .out(stage3_out_lookup_exact));
signal_pipe #(.L(8), .W(32))  pipe_stage3_out_y            (.clk(clk), .in(stage3a_in_y),            .out(stage3_out_y));
//-----------------------------------------------
//stage4 - y*(acc) -> first iteration of NR is finished
//inputs:
reg stage4a_in_lookup_exact;
reg[31:0] stage4a_in_acc;
reg[31:0] stage4a_in_y;
reg stage4a_valid;

//stage3 -> stage4
always @(posedge clk) begin
	if(rst) begin
		stage4a_valid <= 0;
	end else begin
		stage4a_valid <= stage3_valid;
		stage4a_in_lookup_exact <= stage3_out_lookup_exact;
		stage4a_in_acc <= stage3_out_acc;
		stage4a_in_y	<= stage3_out_y;
	end
end

//outputs:
wire[31:0] stage4_out_y;
wire stage4_valid;

//internal combinatorial logic
wire[31:0] stage4_r;
fixed_mul fixed_mul_stage4(
	.clk(clk),
	.rst(rst),
	.new_data(stage4a_valid),
	.output_valid(stage4_valid),
	
	.a(stage4a_in_y),
	.b(stage4a_in_acc),
	.r(stage4_r));
	
wire stage4_lookup_exact;
wire[31:0] stage4_y;
signal_pipe #(.L(6), .W(1))   pipe_stage4_lookup_exact (.clk(clk), .in(stage4a_in_lookup_exact), .out(stage4_lookup_exact));
signal_pipe #(.L(6), .W(32))  pipe_stage4_y            (.clk(clk), .in(stage4a_in_y),            .out(stage4_y));

assign stage4_out_y = stage4_lookup_exact?stage4_y:stage4_r;


//stage4 -> OUTSIDE
always @(posedge clk) begin
	if(rst) begin
		output_valid <= 0;
	end else begin
		output_valid <= stage4_valid;
		r <= stage4_out_y;
	end
end

endmodule

