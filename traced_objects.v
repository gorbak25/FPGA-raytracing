`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:15 01/10/2019 
// Design Name: 
// Module Name:    traced_objects 
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
module traced_objects(
		input clk,
		input[2:0] obj_id,
		
		output reg[2:0] sub_id,
		output reg[0:0] type_id
    );
	 
	 parameter TYPE_SPHERE = 0;
	 parameter TYPE_PLANE = 1;
	 
	 always @(posedge clk) begin
		case(obj_id)
			3'd0: begin
				sub_id <= 0;
				type_id <= TYPE_SPHERE;
			end
			
			3'd1: begin
				sub_id <= 1;
				type_id <= TYPE_SPHERE;
			end
			
			3'd2: begin
				sub_id <= 2;
				type_id <= TYPE_SPHERE;
			end
			
			3'd3: begin
				sub_id <= 0;
				type_id <= TYPE_PLANE;
			end
			
			default: begin
				sub_id <= 3'b111;
				type_id <= TYPE_PLANE;
			end
			
		endcase
	 end
	 
endmodule
