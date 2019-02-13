`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:11:49 01/10/2019 
// Design Name: 
// Module Name:    traced_lights 
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
module traced_lights(
		input clk,
		input rst,
		input[2:0] light_id,
		
		input          l2_write_enable,
		input[2:0]     l2_write_id,
		input[289-1:0] l2_write,
		input          l2_flush_to_l1,
		
		output [95:0] position,
		output [95:0] color
    );
	 
	 	 //lets hope that XST will infer blockram
	 reg[192-1:0] light_definitions_l1[7:0];
	 reg[192-1:0] light_definitions_l2[7:0];
	 
	 integer i;
	 initial begin
		 //light 1
		 //POS
		 light_definitions_l1[0][32*1-1 : 32*0] = 32'd0;
		 light_definitions_l1[0][32*2-1 : 32*1] = 32'd0;
		 light_definitions_l1[0][32*3-1 : 32*2] = $signed(-83886080); //-5.0
		 //COL
		 light_definitions_l1[0][32*4-1 : 32*3] = 32'd4194304;  //0.25
		 light_definitions_l1[0][32*5-1 : 32*4] = 32'd4194304;  //0.25
		 light_definitions_l1[0][32*6-1 : 32*5] = 32'd4194304;  //0.25
		 
		 //light 2
		 //POS
		 light_definitions_l1[1][32*1-1 : 32*0] = 32'd16777216; //1
		 light_definitions_l1[1][32*2-1 : 32*1] = 32'd50331648; //3
		 light_definitions_l1[1][32*3-1 : 32*2] = 32'd0; //-5.0
		 //COL
		 light_definitions_l1[1][32*4-1 : 32*3] = 32'd16777216; //1.0
		 light_definitions_l1[1][32*5-1 : 32*4] = 32'd16777216; //1.0
		 light_definitions_l1[1][32*6-1 : 32*5] = 32'd16777216; //1.0
		 
		 for(i = 2; i<8; i=i+1) begin
			light_definitions_l1[i] = 0;
		 end
		 
		 for(i = 0; i<8; i=i+1) begin
			light_definitions_l2[i] = 0;
		 end
	 end
	 
	 reg[3:0] flushing;
	 initial flushing = 4'd8;
	 reg [192-1:0] flush_buff;
	 reg flush_delay;
	 initial flush_delay = 0;
	 
	 reg [192-1:0] l1_output_buff;
	 assign position   = l1_output_buff[96*1-1 : 96*0];
	 assign color      = l1_output_buff[96*2-1 : 96*1];
	 
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
				light_definitions_l2[l2_write_id] <= l2_write;
			end
		
			if(flushing < 4'd8) begin
				flush_buff <= light_definitions_l2[flushing];
				flush_delay <= 1;
				if(flush_delay) begin
					flush_delay <= 0;
					light_definitions_l1[flushing] <= flush_buff;
					flushing <= flushing + 1;
				end
			end
			
			l1_output_buff <= light_definitions_l1[light_id];
		end
	 end
 endmodule
