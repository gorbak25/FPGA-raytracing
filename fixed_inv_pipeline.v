`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:22 01/08/2019 
// Design Name: 
// Module Name:    fixed_inv_pipeline 
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
//LATENCY: 24
module fixed_inv_pipeline(
	input clk,
	input rst,
	input signed [31:0] a,
	input new_data,
	
	output reg signed [31:0] r,
	output reg output_valid
    );
	 
reg[11:0] rom_addr;
wire[31:0] rom_dout;
inv_LUT inv_LUT_instance (
  .clka(clk), // input clka
  .addra(rom_addr), // input [11 : 0] addra
  .douta(rom_dout) // output [31 : 0] douta
);

//-----------------------------------------------
//stage1 - sign normalize
//inputs:
reg signed [31:0] stage1_in_a;
reg stage1_valid;
//OUTSIDE -> stage1
always @(posedge clk) begin
	if(rst) begin
		stage1_valid <= 0;
	end else begin
		stage1_valid <= new_data;
		stage1_in_a <= a;
	end
end
//output:
wire signed [31:0] stage1_out_abs;
wire stage1_out_sign;

//internal combinatorial logic
assign stage1_out_sign = stage1_in_a[{31}];
assign stage1_out_abs = stage1_in_a[{31}] ? -1*stage1_in_a : stage1_in_a;

//-----------------------------------------------
//stage2a - decode
//inputs:
reg [31:0] stage2a_a;
reg stage2a_sign;
reg stage2a_valid;
//OUTSIDE -> stage1
always @(posedge clk) begin
	if(rst) begin
		stage2a_valid <= 0;
	end else begin
		stage2a_valid <= stage1_valid;
		stage2a_a <= stage1_out_abs;
		stage2a_sign <= stage1_out_sign;
	end
end

wire[5:0] stage2a_z;
clz32 clz32_instance(
	.a(stage2a_a),
	.z(stage2a_z)
);
wire[5:0] stage2a_z_pos;
wire[6:0] stage2a_msb_sel;
assign stage2a_z_pos = 31-stage2a_z;
assign stage2a_msb_sel[6] = stage2a_a[{stage2a_z_pos-1}];
assign stage2a_msb_sel[5] = stage2a_a[{stage2a_z_pos-2}];
assign stage2a_msb_sel[4] = stage2a_a[{stage2a_z_pos-3}];
assign stage2a_msb_sel[3] = stage2a_a[{stage2a_z_pos-4}];
assign stage2a_msb_sel[2] = stage2a_a[{stage2a_z_pos-5}];
assign stage2a_msb_sel[1] = stage2a_a[{stage2a_z_pos-6}];
assign stage2a_msb_sel[0] = stage2a_a[{stage2a_z_pos-7}];
//-----------------------------------------------
//stage2b - calculate lookup addr
reg [31:0] stage2b_a;
reg stage2b_sign;
reg stage2b_valid;
reg[5:0] stage2b_z_pos;
reg[6:0] stage2b_msb_sel;

always @(posedge clk) begin
	if(rst) begin
		stage2b_valid <= 0;
	end else begin
		stage2b_valid <= stage2a_valid;
		stage2b_a <= stage2a_a;
		stage2b_sign <= stage2a_sign;
		stage2b_z_pos <= stage2a_z_pos;
		stage2b_msb_sel <= stage2a_msb_sel;
	end
end

reg [11:0] stage2b_rom_addr;
reg stage2b_lookup_exact;

//internal combinatorial logic
always @* begin
	if((stage2b_a < 131072)) begin
		stage2b_lookup_exact = 1;
		stage2b_rom_addr = 0;
	end else if(stage2b_a < 131072+1024) begin
		stage2b_lookup_exact = 1;
		stage2b_rom_addr = stage2b_a-131072;
	end else begin
		stage2b_lookup_exact = 0;
		stage2b_rom_addr = 1024 + 128*(stage2b_z_pos-17) + stage2b_msb_sel;
	end
end
//-----------------------------------------------
//stage2c - make request to BRAM
reg stage2c_lookup_exact;
reg stage2c_sign;
reg[31:0] stage2c_a;
reg stage2c_valid;
always @(posedge clk) begin
	if(rst) begin
		stage2c_valid <= 0;
	end else begin
		rom_addr <= stage2b_rom_addr;
		stage2c_lookup_exact <= stage2b_lookup_exact;
		stage2c_sign <= stage2b_sign;
		stage2c_a <= stage2b_a;
		stage2c_valid <= stage2b_valid;
	end
end

//-----------------------------------------------
//stage3 - retrieve initial guess from table, calculate 2 - xy
//inputs:
//rom_dout
reg stage3a_in_lookup_exact;
reg stage3a_in_sign;
reg[31:0] stage3a_in_a;
reg stage3a_valid;

//stage2 -> stage3
always @(posedge clk) begin
	if(rst) begin
		stage3a_valid <= 0;
	end else begin
		stage3a_in_lookup_exact <= stage2c_lookup_exact;
		stage3a_in_a <= stage2c_a;
		stage3a_in_sign <= stage2c_sign;
		stage3a_valid <= stage2c_valid;
	end
end

//outputs:
wire stage3_out_lookup_exact;
wire stage3_out_sign;
wire[31:0] stage3_out_acc;
wire[31:0] stage3_out_y;
wire stage3_valid;

wire[31:0] stage3b_r;
wire stage3b_valid;
fixed_mul fixed_mul_stage3(
	.clk(clk),
	.rst(rst),
	.new_data(stage3a_valid),
	.output_valid(stage3b_valid),
	.a(stage3a_in_a),
	.b(rom_dout),
	.r(stage3b_r));
	
wire[31:0] th = 32'b00000010000000000000000000000000; //2.0
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
signal_pipe #(.L(8), .W(1))   pipe_stage3_out_sign         (.clk(clk), .in(stage3a_in_sign),         .out(stage3_out_sign));
signal_pipe #(.L(8), .W(32))  pipe_stage3_out_y            (.clk(clk), .in(rom_dout),                .out(stage3_out_y));
//-----------------------------------------------

//-----------------------------------------------
//stage4 - y*(acc) -> first iteration of NR is finished
//inputs:
reg stage4a_in_lookup_exact;
reg stage4a_in_sign;
reg[31:0] stage4a_in_acc;
reg[31:0] stage4a_in_y;
reg stage4a_valid;

//stage3 -> stage4
always @(posedge clk) begin
	if(rst) begin
		stage4a_valid <= 0;
	end else begin
		stage4a_in_lookup_exact <= stage3_out_lookup_exact;
		stage4a_in_sign <= stage3_out_sign;
		stage4a_in_acc <= stage3_out_acc;
		stage4a_in_y	<= stage3_out_y;
		stage4a_valid <= stage3_valid;
	end 
end

//outputs:
wire stage4_out_sign;
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
	
wire[31:0] stage4_in_y;
wire stage4_in_lookup_exact;
signal_pipe #(.L(6), .W(1))   pipe_stage4_in_lookup_exact  (.clk(clk), .in(stage4a_in_lookup_exact), .out(stage4_in_lookup_exact));
signal_pipe #(.L(6), .W(1))   pipe_stage4_out_sign         (.clk(clk), .in(stage4a_in_sign),         .out(stage4_out_sign));
signal_pipe #(.L(6), .W(32))  pipe_stage4_in_y             (.clk(clk), .in(stage4a_in_y),            .out(stage4_in_y));

assign stage4_out_y = stage4_in_lookup_exact?stage4_in_y:stage4_r;
//-----------------------------------------------

//stage5 - sign correct
//inputs:
reg stage5_in_sign;
reg signed[31:0] stage5_in_y;
reg stage5_valid;

always @(posedge clk) begin
	if(rst) begin
		stage5_valid <= 0;
	end else begin
		stage5_in_sign <= stage4_out_sign;
		stage5_in_y <= stage4_out_y;
		stage5_valid <= stage4_valid;
	end
end

//outputs:
wire[31:0] stage5_out_y;
//internal combinatorial logic
assign stage5_out_y = stage5_in_sign ? -1 * stage5_in_y : stage5_in_y;

//-----------------------------------------------

//stage5 -> OUTSIDE
always @(posedge clk) begin
	if(rst) begin
		output_valid <= 0;
	end else begin
		output_valid <= stage5_valid;
		r <= stage5_out_y;
	end
end

endmodule
