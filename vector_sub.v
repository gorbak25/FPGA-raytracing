`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:37:32 01/09/2019 
// Design Name: 
// Module Name:    vector_sub 
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
//LATENCY: 2
module vector_sub(
		input clk,
		input rst,
		input new_data,
		output output_valid,
		
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	 wire[2:0] valids;
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_sub
			fixed_sub vec_sub(
				.clk(clk),
				.rst(rst),
				.new_data(new_data),
				.output_valid(valids[i]),
			
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate
	assign output_valid = valids[0]&&valids[1]&&valids[2];

endmodule

module vector_sub_comb(
		input [95:0] v1,
		input [95:0] v2,
		output [95:0] r
    );
	 
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_sub
			fixed_sub_comb vec_sub(
				.a(v1[32*i+:32]),
				.b(v2[32*i+:32]),
				.r(r[32*i+:32])
			);
		end
	endgenerate

endmodule
