`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:28 01/12/2019 
// Design Name: 
// Module Name:    vector_doubler 
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
module vector_doubler(
		input[95:0] v,
		output[95:0] r
    );
	 
	genvar i;
	generate 
		for(i = 0; i<3; i = i+1) begin : gen_vec_doubler
			assign r[32*i+:32] = ($signed(v[32*i+:32])<<<1);
		end
	endgenerate

endmodule
