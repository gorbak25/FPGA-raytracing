`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:19:52 01/09/2019 
// Design Name: 
// Module Name:    vector_dot 
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
module vector_dot_comb(
		v1,
		v2,
		r
    );
	 
	parameter D = 8;
	parameter Q = 24;
	
	input [3*(D+Q)-1:0] v1;
	input [3*(D+Q)-1:0] v2;
	output [(D+Q)-1:0] r;
	 
	wire[3*(D+Q)-1:0] mull_r;
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_mul_comb
			fixed_mul_comb #(.D(D), .Q(Q)) dot_mul_comb(
				.a(v1[(Q+D)*i+:(Q+D)]),
				.b(v2[(Q+D)*i+:(Q+D)]),
				.r(mull_r[(Q+D)*i+:(Q+D)])
			);
		end
	endgenerate
	
	fixed_add3 #(.D(D), .Q(Q)) dot_add(
		.a(mull_r[(Q+D)*0+:(Q+D)]),
		.b(mull_r[(Q+D)*1+:(Q+D)]),
		.c(mull_r[(Q+D)*2+:(Q+D)]),
		.r(r)
	);

endmodule

//LATENCY: 8
module vector_dot(
		clk,
		rst,
		new_data,
		output_valid,
	
		v1,
		v2,
		r
    );
	 
	parameter D = 8;
	parameter Q = 24;
	
	input clk;
	input rst;
	input new_data;
	output reg output_valid;
	
	input [3*(D+Q)-1:0] v1;
	input [3*(D+Q)-1:0] v2;
	output reg [(D+Q)-1:0] r;
	 
	wire[3*(D+Q)-1:0] mull_r;
	wire[2:0] mul_valid;
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_mul
			fixed_mul #(.D(D), .Q(Q)) dot_mul(
				.clk(clk),
				.rst(rst),
				.new_data(new_data),
				.output_valid(mul_valid[i]),
				
				.a(v1[(Q+D)*i+:(Q+D)]),
				.b(v2[(Q+D)*i+:(Q+D)]),
				.r(mull_r[(Q+D)*i+:(Q+D)])
			);
		end
	endgenerate
	
	wire[(D+Q)-1:0] tmp_r;
	fixed_add3 #(.D(D), .Q(Q)) dot_add(
		.a(mull_r[(Q+D)*0+:(Q+D)]),
		.b(mull_r[(Q+D)*1+:(Q+D)]),
		.c(mull_r[(Q+D)*2+:(Q+D)]),
		.r(tmp_r)
	);
	
	always @(posedge clk) begin
		if(rst) begin
			output_valid <= 0;
		end else begin
			output_valid <= mul_valid[0]&&mul_valid[1]&&mul_valid[2];
			r <= tmp_r;
		end
	end
endmodule

module vector_Q24_8_to_Q16_16(
		v,
		r
    );
	
	input [95:0] v;
	output [95:0] r;
	 
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_conv
			fixed_Q8_24_to_Q16_16 conv(
				.a(v[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate

endmodule
