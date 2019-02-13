`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:04:56 01/10/2019 
// Design Name: 
// Module Name:    traced_materials 
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
module traced_materials(
		input clk,
		input rst,
		input[2:0] mat_id,
		
		input          l2_write_enable,
		input[2:0]     l2_write_id,
		input[289-1:0] l2_write_material,
		input          l2_flush_to_l1,
		
		output [95:0] ambient_color,
		output is_diffuse,
		output [95:0] diffuse_color,
		output [95:0] reflection_color
    );
	 
	 //lets hope that XST will infer blockram
	 reg[289-1:0] material_definitions_l1[7:0];
	 reg[289-1:0] material_definitions_l2[7:0];
	 
	 integer i;
	 initial begin
		 //MAT 1
		 //ambient
		 material_definitions_l1[0][32*1-1 : 32*0] = 32'd16777216;
		 material_definitions_l1[0][32*2-1 : 32*1] = 32'd16777216;
		 material_definitions_l1[0][32*3-1 : 32*2] = 32'd16777216;
		 //diffuse
		 material_definitions_l1[0][32*4-1 : 32*3] = 32'd16777216;
		 material_definitions_l1[0][32*5-1 : 32*4] = 0;
		 material_definitions_l1[0][32*6-1 : 32*5] = 0;
		 //reflection
		 material_definitions_l1[0][32*7-1 : 32*6] = 0;
		 material_definitions_l1[0][32*8-1 : 32*7] = 0;
		 material_definitions_l1[0][32*9-1 : 32*8] = 0;
		 //is_diffuse
		 material_definitions_l1[0][32*9   : 32*9] = 1;
		 
		 //MAT 2
		 //ambient
		 material_definitions_l1[1][32*1-1 : 32*0] = 32'd16777216;
		 material_definitions_l1[1][32*2-1 : 32*1] = 32'd16777216;
		 material_definitions_l1[1][32*3-1 : 32*2] = 32'd16777216;
		 //diffuse
		 material_definitions_l1[1][32*4-1 : 32*3] = 0;
		 material_definitions_l1[1][32*5-1 : 32*4] = 32'd16777216;
		 material_definitions_l1[1][32*6-1 : 32*5] = 0;
		 //reflection
		 material_definitions_l1[1][32*7-1 : 32*6] = 0;
		 material_definitions_l1[1][32*8-1 : 32*7] = 0;
		 material_definitions_l1[1][32*9-1 : 32*8] = 0;
		 //is_diffuse
		 material_definitions_l1[1][32*9   : 32*9] = 1;
		 
		 //MAT 3
		 //ambient
		 material_definitions_l1[2][32*1-1 : 32*0] = 32'd16777216;
		 material_definitions_l1[2][32*2-1 : 32*1] = 32'd16777216;
		 material_definitions_l1[2][32*3-1 : 32*2] = 32'd16777216;
		 //diffuse
		 material_definitions_l1[2][32*4-1 : 32*3] = 0;
		 material_definitions_l1[2][32*5-1 : 32*4] = 0;
		 material_definitions_l1[2][32*6-1 : 32*5] = 32'd16777216;
		 //reflection
		 material_definitions_l1[2][32*7-1 : 32*6] = 0;
		 material_definitions_l1[2][32*8-1 : 32*7] = 0;
		 material_definitions_l1[2][32*9-1 : 32*8] = 0;
		 //is_diffuse
		 material_definitions_l1[2][32*9   : 32*9] = 1;
		 
		 for(i = 3; i<8; i=i+1) begin
			material_definitions_l1[i] = 0;
		 end
		 
		 for(i = 0; i<8; i=i+1) begin
			material_definitions_l2[i] = 0;
		 end
	 end
	 
	 reg[3:0] flushing;
	 initial flushing = 4'd8;
	 reg [289-1:0] flush_buff;
	 reg flush_delay;
	 initial flush_delay = 0;
	 
	 reg [289-1:0] l1_output_buff;
	 assign ambient_color   = l1_output_buff[96*1-1 : 96*0];
	 assign diffuse_color    = l1_output_buff[96*2-1 : 96*1];
	 assign reflection_color = l1_output_buff[96*3-1 : 96*2];
	 assign is_diffuse       = l1_output_buff[96*3   : 96*3];
	 
	 always @(posedge clk) begin
		if(rst) begin
			 flushing <= 4'd8;
			 flush_delay <= 0;
			 //reseting bram would require multiple clock cycles
		end else begin
			if(l2_flush_to_l1) begin
				//initiate flush
				flushing <= 0;
				flush_delay <= 0;
			end
			
			if(l2_write_enable) begin
				material_definitions_l2[l2_write_id] <= l2_write_material;
			end
		
			if(flushing < 4'd8) begin
				flush_buff <= material_definitions_l2[flushing];
				flush_delay <= 1;
				if(flush_delay) begin
					flush_delay <= 0;
					material_definitions_l1[flushing] <= flush_buff;
					flushing <= flushing + 1;
				end
			end
			
			l1_output_buff <= material_definitions_l1[mat_id];
		end
	 end
 endmodule
