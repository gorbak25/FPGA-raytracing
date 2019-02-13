`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:51:40 01/09/2019 
// Design Name: 
// Module Name:    fixed_abs 
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
module fixed_abs(
		input signed [31:0] a,
		output signed [31:0] r
    );
	 
	 assign r = a<0 ? -1*a : a;

endmodule
