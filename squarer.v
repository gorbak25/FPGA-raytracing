`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:52 01/07/2019 
// Design Name: 
// Module Name:    squarer 
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
module squarer(
		input[31:0] a,
		input[63:0] c,
		output r
    );
	 
	 assign r = a*a > c;

endmodule
