`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:21:13 01/06/2019 
// Design Name: 
// Module Name:    fixed 
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

module fixed_mul_comb(
	a,
	b,
	r
	 );
	 parameter D = 8;
	 parameter Q = 24;
	 
	 wire signed[D+Q-1:0] MAX = 32'sd2147483647;
	 wire signed[D+Q-1:0] MIN = -(32'sd2147483648);
	 
	 input signed[D+Q-1:0] a;
	 input signed[D+Q-1:0] b;
	 output signed[D+Q-1:0] r;
	 
	 wire signed[2*(D+Q)-1:0] tmp;
	 wire signed[2*D+Q-1:0] tmp2;
	 assign tmp = a*b;
	 assign tmp2 = tmp >> Q;
	 assign r = (tmp2 > MAX) ? MAX : ((tmp2 < MIN) ? MIN : tmp2); //3 slices, 4 DSP, 15ns pad2pad
endmodule


//LATENCY: 7
module fixed_mul(
	clk,
	rst,
	new_data,
	output_valid,
	
	a,
	b,
	r
	 );
	 parameter D = 8;
	 parameter Q = 24;
	 
	 wire signed[D+Q-1:0] MAX = 32'sd2147483647;
	 wire signed[D+Q-1:0] MIN = -(32'sd2147483648);
	 
	 input signed[D+Q-1:0] a;
	 input signed[D+Q-1:0] b;
	 output reg signed[D+Q-1:0] r;
	 
	 input clk;
	 input rst;
	 input new_data;
	 output reg output_valid;
	 
	 initial output_valid = 0;
	 
	 reg signed[D+Q-1:0] stage1_a;
	 reg signed[D+Q-1:0] stage1_b;
	 reg stage1_valid;
	 always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
		end else begin
			stage1_valid <= new_data;
			stage1_a <= a;
			stage1_b <= b;
		end
	end
	 
	 wire signed[2*(D+Q)-1:0] stage1_tmp;
	 assign stage1_tmp = stage1_a*stage1_b;
	 
	 reg signed[2*(D+Q)-1:0] stage2a_tmp;
	 reg stage2a_valid;
	 
	 reg signed[2*(D+Q)-1:0] stage2b_tmp;
	 reg stage2b_valid;
	 
	 reg signed[2*(D+Q)-1:0] stage2c_tmp;
	 reg stage2c_valid;
	 
	 reg signed[2*(D+Q)-1:0] stage2d_tmp;
	 reg stage2d_valid;

	 reg signed[2*(D+Q)-1:0] stage2_tmp;
	 reg stage2_valid;
	 always @(posedge clk) begin
		if(rst) begin
			stage2_valid <= 0;
			stage2a_valid <= 0;
			stage2b_valid <= 0;
			stage2c_valid <= 0;
			stage2d_valid <= 0;
		end
		else begin
			stage2a_valid <= stage1_valid;
			stage2a_tmp <= stage1_tmp;
			
			stage2b_valid <= stage2a_valid;
			stage2b_tmp <= stage2a_tmp;
			
			stage2c_valid <= stage2b_valid;
			stage2c_tmp <= stage2b_tmp;
			
			stage2d_valid <= stage2c_valid;
			stage2d_tmp <= stage2c_tmp;
			
			stage2_valid <= stage2d_valid;
			stage2_tmp <= stage2d_tmp;
		end
	 end
	 
	 wire signed[2*D+Q-1:0] stage2_tmp2;
	 assign stage2_tmp2 = stage2_tmp >> Q;
	 
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			r <= (stage2_tmp2 > MAX) ? MAX : ((stage2_tmp2 < MIN) ? MIN : stage2_tmp2);
			output_valid <= stage2_valid;
		end
	 end
endmodule

//LATENCY: 7
module fixed_mul_integer(
	clk,
	ce,
	rst,
	new_data,
	output_valid,
	
	a,
	b,
	r
	 );
	 parameter D = 8;
	 parameter Q = 24;
	 
	 wire signed[D+Q-1:0] MAX = 32'sd2147483647;
	 wire signed[D+Q-1:0] MIN = -(32'sd2147483648);
	 
	 input signed[D+Q-1:0] a;
	 input signed[10:0] b;
	 output reg signed[D+Q-1:0] r;
	 
	 input clk;
	 input ce;
	 input rst;
	 input new_data;
	 output reg output_valid;
	 
	 initial output_valid = 0;
	 
	 reg signed[D+Q-1:0] stage1_a;
	 reg signed[10:0] stage1_b;
	 reg stage1_valid;
	 always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
		end else begin
			if(ce) begin
				stage1_valid <= new_data;
				stage1_a <= a;
				stage1_b <= b;
			end
		end
	end
	 
	 wire signed[D+Q+11-1:0] stage1_tmp;
	 assign stage1_tmp = stage1_a*stage1_b;
	 
	 reg signed[D+Q+11-1:0] stage2a_tmp;
	 reg stage2a_valid;
	 
	 reg signed[D+Q+11-1:0] stage2b_tmp;
	 reg stage2b_valid;
	 
	 reg signed[D+Q+11-1:0] stage2c_tmp;
	 reg stage2c_valid;
	 
	 reg signed[D+Q+11-1:0] stage2d_tmp;
	 reg stage2d_valid;

	 reg signed[D+Q+11-1:0] stage2_tmp;
	 reg stage2_valid;
	 always @(posedge clk) begin
		if(rst) begin
			stage2_valid <= 0;
			stage2a_valid <= 0;
			stage2b_valid <= 0;
			stage2c_valid <= 0;
			stage2d_valid <= 0;
		end
		else begin
			if(ce) begin
				stage2a_valid <= stage1_valid;
				stage2a_tmp <= stage1_tmp;
				
				stage2b_valid <= stage2a_valid;
				stage2b_tmp <= stage2a_tmp;
				
				stage2c_valid <= stage2b_valid;
				stage2c_tmp <= stage2b_tmp;
				
				stage2d_valid <= stage2c_valid;
				stage2d_tmp <= stage2c_tmp;
				
				stage2_valid <= stage2d_valid;
				stage2_tmp <= stage2d_tmp;
			end
		end
	 end
	 
	 wire signed[D+Q+11-1:0] stage2_tmp2;
	 assign stage2_tmp2 = stage2_tmp;
	 
	 always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			if(ce) begin
				r <= (stage2_tmp2 > MAX) ? MAX : ((stage2_tmp2 < MIN) ? MIN : stage2_tmp2);
				output_valid <= stage2_valid;
			end
		end
	 end
endmodule

module fixed_mul_integer_comb(
	a,
	b,
	r
	 );
	 parameter D = 8;
	 parameter Q = 24;
	 
	 wire signed[D+Q-1:0] MAX = 32'sd2147483647;
	 wire signed[D+Q-1:0] MIN = -(32'sd2147483648);
	 
	 input signed[D+Q-1:0] a;
	 input signed[10:0] b;
	 output signed[D+Q-1:0] r;
	 
	 wire signed[D+Q+11-1:0] tmp;
	 assign tmp = a*b;
	 assign r = (tmp > MAX) ? MAX : ((tmp < MIN) ? MIN : tmp);
endmodule

//LATENCY:2
module fixed_add(
	clk,
	rst,
	new_data,
	output_valid,
	a,
	b,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	
	input clk;
	input rst;
	input new_data;
	output reg output_valid;
	
	input signed [D+Q-1:0] a;
	input signed [D+Q-1:0] b;
	output reg signed [D+Q-1:0] r;
	
	reg signed [D+Q-1:0] stage1_a;
	reg signed [D+Q-1:0] stage1_b;

	reg signed [D+Q:0] stage1_tmp;
	reg stage1_valid;
	
	initial output_valid = 0;
	
	always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
		end else begin
			stage1_valid <= new_data;
			stage1_a <= a;
			stage1_b <= b;
		end
	end
	
	always @(stage1_a,stage1_b) begin
		stage1_tmp = {stage1_a[D+Q-1], stage1_a} + {stage1_b[D+Q-1], stage1_b};
	end
	
	always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			if(stage1_tmp[D+Q: D+Q-1] == 2'b10) begin //underflow
				r <= -1*(2**(Q+D-1));
			end else if(stage1_tmp[D+Q: D+Q-1] == 2'b01) begin //overflow
				r <= 2**(Q+D-1)-1;
			end else begin
				r <= stage1_tmp[(Q+D-1):0];
			end
			output_valid <= stage1_valid;
		end
	end
endmodule

//LATENCY:2
module fixed_add_ce(
	clk,
	ce,
	rst,
	new_data,
	output_valid,
	a,
	b,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	
	input clk;
	input ce;
	input rst;
	input new_data;
	output reg output_valid;
	
	input signed [D+Q-1:0] a;
	input signed [D+Q-1:0] b;
	output reg signed [D+Q-1:0] r;
	
	reg signed [D+Q-1:0] stage1_a;
	reg signed [D+Q-1:0] stage1_b;

	reg signed [D+Q:0] stage1_tmp;
	reg stage1_valid;
	
	initial output_valid = 0;
	
	always @(posedge clk) begin
		if(rst) begin
			stage1_valid <= 0;
		end else begin
			if(ce) begin
				stage1_valid <= new_data;
				stage1_a <= a;
				stage1_b <= b;
			end
		end
	end
	
	always @(stage1_a,stage1_b) begin
		stage1_tmp = {stage1_a[D+Q-1], stage1_a} + {stage1_b[D+Q-1], stage1_b};
	end
	
	always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			if(ce) begin
				if(stage1_tmp[D+Q: D+Q-1] == 2'b10) begin //underflow
					r <= -1*(2**(Q+D-1));
				end else if(stage1_tmp[D+Q: D+Q-1] == 2'b01) begin //overflow
					r <= 2**(Q+D-1)-1;
				end else begin
					r <= stage1_tmp[(Q+D-1):0];
				end
				output_valid <= stage1_valid;
			end
		end
	end
endmodule


module fixed_add3(
	a,
	b,
	c,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	wire signed[D+Q-1:0] MAX = 32'sd2147483647;
	wire signed[D+Q-1:0] MIN = -(32'sd2147483648);
	
	input signed[D+Q-1:0] a;
	input signed[D+Q-1:0] b;
	input signed[D+Q-1:0] c;
	output signed[D+Q-1:0] r;
	
	wire signed[D+Q+1:0] tmp;
	assign tmp = {a[D+Q-1], a[D+Q-1], a}+{b[D+Q-1], b[D+Q-1], b}+{c[D+Q-1], c[D+Q-1], c};
	assign r = (tmp > MAX) ? MAX : ((tmp < MIN) ? MIN : tmp);

endmodule

//LATENCY: 2
module fixed_sub(
	clk,
	rst,
	new_data,
	output_valid,
	
	a,
	b,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	
	input clk;
	input rst;
	input new_data;
	output output_valid;
	
	input signed[D+Q-1:0] a;
	input signed[D+Q-1:0] b;
	output signed[D+Q-1:0] r;
	
	wire signed[D+Q-1:0] sign_inv;
	assign sign_inv = -1*b;
	
	fixed_add adder(
		.clk(clk),
		.rst(rst),
		.new_data(new_data),
		.output_valid(output_valid),
		.a(a),
		.b(sign_inv),
		.r(r)
	);
	
endmodule

module fixed_add_comb(
	a,
	b,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	
	input signed [D+Q-1:0] a;
	input signed [D+Q-1:0] b;
	output reg signed [D+Q-1:0] r;
	
	reg signed [D+Q:0] tmp;
	reg overflow;
	reg underflow;
	
	always @(underflow, overflow, tmp, a, b, r) begin
		tmp = {a[D+Q-1], a} + {b[D+Q-1], b};
		overflow = tmp[D+Q: D+Q-1] == 2'b01;
		underflow = tmp[D+Q: D+Q-1] == 2'b10;
		
		if(underflow) begin
			r = -1*(2**(Q+D-1));
		end else if(overflow) begin
			r = 2**(Q+D-1)-1;
		end else begin
			r = tmp[(Q+D-1):0];
		end
	end
endmodule

module fixed_sub_comb(
	a,
	b,
	r
	);
	parameter D = 8;
	parameter Q = 24;
	
	input signed[D+Q-1:0] a;
	input signed[D+Q-1:0] b;
	output signed[D+Q-1:0] r;
	
	wire signed[D+Q-1:0] sign_inv;
	assign sign_inv = -1*b;
	
	fixed_add_comb adder(
		.a(a),
		.b(sign_inv),
		.r(r)
	);
	
endmodule


module fixed_Q8_24_to_Q16_16(
	a,
	r
	);
	
	input signed[31:0] a;
	output signed[31:0] r;
	
	assign r = $signed(a)>>>8;
	
endmodule
