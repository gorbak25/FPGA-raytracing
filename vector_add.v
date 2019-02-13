`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:35:36 01/09/2019 
// Design Name: 
// Module Name:    vector_add 
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
//LATENCY:2
module vector_add(
		input clk,
		input rst,
		input new_data,
		output output_valid,
		
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	wire[2:0] output_v;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_add
			fixed_add vec_add(
				.clk(clk),
				.rst(rst),
				.new_data(new_data),
				.output_valid(output_v[i]),
				
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate
	assign output_valid = output_v[0]&&output_v[1]&&output_v[2];

endmodule

//LATENCY:2
module vector_add_ce(
		input clk,
		input ce,
		input rst,
		input new_data,
		output output_valid,
		
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	wire[2:0] output_v;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_add
			fixed_add_ce vec_add_ce(
				.clk(clk),
				.ce(ce),
				.rst(rst),
				.new_data(new_data),
				.output_valid(output_v[i]),
				
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate
	assign output_valid = output_v[0]&&output_v[1]&&output_v[2];

endmodule

module vector_add_comb(
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_add
			fixed_add_comb vec_add(		
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate

endmodule
