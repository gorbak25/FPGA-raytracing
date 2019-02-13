`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:39 01/29/2019 
// Design Name: 
// Module Name:    uart_processor 
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
module uart_processor(
		input clk,
		input rst,
		
		input uart_tx_busy,
		output reg uart_tx_start,
		output reg [7:0] uart_tx_byte,

		input uart_rx_new_data,
		input [7:0] uart_rx_byte,
		
		input frame_done,
		
		//camera interface
		input caster_ready,
		output reg stop_caster,
		
		output reg [95:0] camera_left,
		output reg [95:0] camera_up,
		output reg [95:0] camera_front,
		output reg [95:0] camera_origin,
		
		//caches interface
		
		//materials cache
		output reg          l2_write_enable,
		output reg[2:0]     l2_write_id,
		output reg[289-1:0] l2_write_material,
		output reg          l2_flush_to_l1,
		
		output reg [2:0]    num_of_objects,
		output reg [2:0]    num_of_lights,
		
		output reg [95:0] ambient_light_color
    );
	 	 
	 reg [2:0]    num_of_objects_latch;
	 reg [2:0]    num_of_lights_latch;
	 reg [95:0]   ambient_light_color_latch;
	 initial begin
		 //default camera
		 camera_origin[31:0] = 0;
		 camera_origin[63:32] = 0;
		 camera_origin[95:64] = $signed(-83886080); //-5.0
		 
		 camera_front[31:0] = 0;
		 camera_front[63:32] = 0;
		 camera_front[95:64] = 16777216; //1.0
		 
		 camera_left[31:0] = 26214; //1.0/640
		 camera_left[63:32] = 0;
		 camera_left[95:64] = 0;
		 
		 camera_up[31:0] = 0;
		 camera_up[63:32] = 34952; //1.0/480
		 camera_up[95:64] = 0;
		 
		 l2_write_enable <= 0;
		 l2_write_id <= 0;
		 l2_write_material <= 0;
		 l2_flush_to_l1 <= 0;
		 
		 num_of_objects = 4;
		 num_of_objects_latch = 4;
		 num_of_lights = 2;
		 num_of_lights_latch = 2;
		 
		 ambient_light_color[31:0] = 32'd1677721;
		 ambient_light_color[63:32] = 32'd1677721;
		 ambient_light_color[95:64] = 32'd1677721;
		 
		 ambient_light_color_latch[31:0] = 32'd1677721;
		 ambient_light_color_latch[63:32] = 32'd1677721;
		 ambient_light_color_latch[95:64] = 32'd1677721;
	 end
	 
	 reg [8*256:0] receive_buff;
	 reg [7:0] received_tag;
	 reg [7:0] checksum;
	 reg [7:0] to_receive_len;
	 reg [7:0] received_len;
	 
	 initial receive_buff = 0;
	 initial stop_caster = 0;
	 
	 reg [95:0] camera_left_latch;
	 reg [95:0] camera_up_latch;
	 reg [95:0] camera_front_latch;
	 reg [95:0] camera_origin_latch;
	 
	 parameter STATE_IDLE               = 8'b0000001;
	 parameter STATE_GOT_TAG            = 8'b0000010;
	 parameter STATE_GOT_LEN            = 8'b0000100;
	 parameter STATE_DISPATCH_RES       = 8'b0001000;
	 parameter STATE_COMMIT_CAMERA      = 8'b0010000;
	 parameter STATE_SEND_OUT_FRAME_CTR = 8'b0100000;
	 parameter STATE_COMMIT_SCENE       = 8'b1000000;
	 reg [7:0] state;
	 
	 initial state = STATE_IDLE;
	 
	 parameter TAG_CAMERA_LEFT        = 8'h00;
	 parameter TAG_CAMERA_UP          = 8'h01;
	 parameter TAG_CAMERA_FRONT       = 8'h02;
	 parameter TAG_CAMERA_ORIGIN      = 8'h03;
	 parameter TAG_COMMIT_CAMERA      = 8'h04;
	 parameter TAG_GET_FRAME_NUM      = 8'h05; //this will reset the frame counter
	 parameter TAG_SET_MATERIAL       = 8'h06; //|material_id|material|
	 parameter TAG_COMMIT_SCENE       = 8'h07;
	 parameter TAG_SET_NUM_OF_LIGHTS  = 8'h08;
	 parameter TAG_SET_NUM_OF_OBJECTS = 8'h09;
	 parameter TAG_SET_AMBIENT_COLOR  = 8'h0a;
	 parameter TAG_SET_LIGHT          = 8'h0b; //|light_id|light|
	 
	 reg[23:0] frame_ctr;
	 reg[23:0] frame_ctr_latch;
	 reg[3:0] bytes_sent;
	 initial frame_ctr = 0;
	 
	 integer i;
	 always @(posedge clk) begin
		uart_tx_start <= 0;
		
		//materials
		l2_write_enable <= 0;
		l2_write_id <= 0;
		l2_write_material <= 0;
		l2_flush_to_l1 <= 0;
		
		if(rst) begin
			state <= STATE_IDLE;
			receive_buff <= 0;
			stop_caster <= 0;
			frame_ctr <= 0;
		end else begin
			if(frame_done) begin
				frame_ctr <= frame_ctr + 1;
			end
		
			case(state)
				STATE_IDLE: begin
					stop_caster <= 0;
					if(uart_rx_new_data) begin
						received_tag <= uart_rx_byte;
						checksum <= uart_rx_byte;
						state <= STATE_GOT_TAG;
					end
				end
				
				STATE_GOT_TAG: begin
					if(uart_rx_new_data) begin
						to_receive_len <= uart_rx_byte;
						received_len <= 0;
						checksum <= checksum ^ uart_rx_byte;
						state <= STATE_GOT_LEN;
					end
				end
				
				STATE_GOT_LEN: begin
					if(to_receive_len == received_len) begin
						if(uart_rx_new_data) begin
							if(checksum == uart_rx_byte) begin
								state <= STATE_DISPATCH_RES;
							end else begin
								uart_tx_start <= 1;
								uart_tx_byte <= 8'hff;
								state <= STATE_IDLE;
							end
						end
					end else begin
						if(uart_rx_new_data) begin
							for(i = 0; i < 8; i = i + 1) begin
								receive_buff[(8*received_len)+i] <= uart_rx_byte[7-i];
							end
							received_len <= received_len+1;
							checksum <= checksum ^ uart_rx_byte;
						end
					end
				end
				
				STATE_DISPATCH_RES: begin
					uart_tx_start <= 1;
					uart_tx_byte <= 8'h00;
					state <= STATE_IDLE;
					
					case(received_tag)
					TAG_CAMERA_LEFT: begin
						camera_left_latch <= receive_buff[95:0];
					end
					
					TAG_CAMERA_UP: begin
						camera_up_latch <= receive_buff[95:0];
					end
					
					TAG_CAMERA_FRONT: begin
						camera_front_latch <= receive_buff[95:0];
					end
					
					TAG_CAMERA_ORIGIN: begin
						camera_origin_latch <= receive_buff[95:0];
					end
					
					TAG_COMMIT_CAMERA: begin
						uart_tx_start <= 0;
						stop_caster <= 1; //we need to stop the caster from rendering the next frame
						state <= STATE_COMMIT_CAMERA;
					end
					
					TAG_GET_FRAME_NUM: begin
						if(uart_tx_busy) begin
							//ack will be sent out
							frame_ctr_latch <= frame_ctr;
							bytes_sent <= 0;
							state <= STATE_SEND_OUT_FRAME_CTR;
						end else begin
							state <= STATE_DISPATCH_RES;
						end
					end
					
					TAG_SET_MATERIAL: begin
						l2_write_enable <= 1;
						l2_write_id <= receive_buff[2:0];
						l2_write_material <= receive_buff[8+289-1:8];
						l2_flush_to_l1 <= 0;
					end
					
					TAG_COMMIT_SCENE: begin
						uart_tx_start <= 0;
						stop_caster <= 1; //we need to stop the caster from rendering the next frame
						state <= STATE_COMMIT_SCENE;
					end
					
					TAG_SET_NUM_OF_LIGHTS: begin
						num_of_lights_latch <= receive_buff[7:0];
					end
					
					TAG_SET_NUM_OF_OBJECTS: begin
						num_of_objects_latch <= receive_buff[7:0];
					end
					
					TAG_SET_AMBIENT_COLOR: begin
						ambient_light_color_latch <= receive_buff[95:0];
					end
					
					default: begin				
						uart_tx_byte <= 8'h01;
					end
					endcase
				end
				
				STATE_COMMIT_CAMERA: begin
					if(caster_ready) begin //caster is idle and we have stopped it
						//we can safelly change the camera now
						camera_left <= camera_left_latch;
						camera_up <= camera_up_latch;
						camera_front <= camera_front_latch;
						camera_origin <= camera_origin_latch;
						
						//send the ack
						uart_tx_start <= 1;
						uart_tx_byte <= 8'h00;
						state <= STATE_IDLE; //this will reastart the caster
					end
				end
				
				STATE_SEND_OUT_FRAME_CTR: begin
					if(bytes_sent == 4) begin
						frame_ctr <= 0;
						state <= STATE_IDLE;
					end else begin
						if(!uart_tx_busy) begin
							uart_tx_start <= 1;
							uart_tx_byte <= frame_ctr_latch[7:0];
							frame_ctr_latch <= frame_ctr_latch >> 8;
							if(uart_tx_start) begin
								bytes_sent <= bytes_sent + 1;
							end
						end
					end
				end
				
				STATE_COMMIT_SCENE: begin
					if(caster_ready /*&& frame_done*/) begin //caster is idle and the pipeline is empty
						//we can safelly commit the new scene
						//flush materials l2 to l1
						l2_write_enable <= 0;
						l2_write_id <= 0;
						l2_write_material <= 0;
						l2_flush_to_l1 <= 1;
						
						//camera
						camera_left <= camera_left_latch;
						camera_up <= camera_up_latch;
						camera_front <= camera_front_latch;
						camera_origin <= camera_origin_latch;
						
						//scene
						num_of_lights <= num_of_lights_latch;
						num_of_objects <= num_of_objects_latch;
						ambient_light_color <= ambient_light_color_latch;
						
						//send the ack
						uart_tx_start <= 1;
						uart_tx_byte <= 8'h00;
						state <= STATE_IDLE; //this will reastart the caster and will reset the flush signal
					end
				end
				
			endcase
		end
	 end

endmodule
