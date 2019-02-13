`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:52:39 01/13/2019 
// Design Name: 
// Module Name:    vector_mul_piecewise 
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
module vector_mul_piecewise(
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul
			fixed_mul_comb vec_mul(
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
			
		end
	endgenerate
endmodule

//LATENCY: 7
module vector_mul_piecewise_seq(
		input clk,
		input rst,
		input new_data,
		output output_valid,
		
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	wire[2:0] mul_v;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul
			fixed_mul vec_mul(
				.clk(clk),
				.rst(rst),
				.new_data(new_data),
				.output_valid(mul_v[i]),
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate
	assign output_valid = mul_v[0] && mul_v[1] && mul_v[2];
endmodule
