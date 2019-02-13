`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:58 01/09/2019 
// Design Name: 
// Module Name:    vector_mul 
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
module vector_mul_comb(
		input [95:0] v,
		input [31:0] a,
		output [95:0] r
	);

	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul_comb
			fixed_mul_comb vec_mul_comb(
				.a(v[32*i+:32]),
				.b(a),
				.r(r[32*i+:32])
			);
			
		end
	endgenerate

endmodule

//LATENCY: 7
module vector_mul(
		input clk,
		input rst,
		input new_data,
		output output_valid,
	
		input [95:0] v,
		input [31:0] a,
		output [95:0] r
    );
	 
	genvar i;
	wire[2:0] output_v;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul
			fixed_mul vec_mul(
				.clk(clk),
				.rst(rst),
				.new_data(new_data),
				.output_valid(output_v[i]),
				.a(v[32*i+:32]),
				.b(a),
				.r(r[32*i+:32])
			);
			
		end
	endgenerate
	assign output_valid = output_v[0]&&output_v[1]&&output_v[2];
endmodule

module vector_mul_integer(
		input clk,
		input ce,
		input rst,
		input new_data,
		output output_valid,
		
		input [95:0] v,
		input [10:0] a,
		output [95:0] r
	);

	genvar i;
	wire[2:0] output_v;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul_integer
			fixed_mul_integer vec_mul_integer(
				.clk(clk),
				.ce(ce),
				.rst(rst),
				.new_data(new_data),
				.output_valid(output_v[i]),
				.a(v[32*i+:32]),
				.b(a),
				.r(r[32*i+:32])
			);
			
		end
	endgenerate
	assign output_valid = output_v[0]&&output_v[1]&&output_v[2];

endmodule

module vector_mul_integer_comb(
		input [95:0] v,
		input [10:0] a,
		output [95:0] r
	);

	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_mul_integer
			fixed_mul_integer_comb vec_mul_integer(
				.a(v[32*i+:32]),
				.b(a),
				.r(r[32*i+:32])
			);
			
		end
	endgenerate

endmodule

