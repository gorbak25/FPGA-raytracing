`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:21:50 01/29/2019 
// Design Name: 
// Module Name:    uart_subsystem 
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
module uart_subsystem(
    	input clk,
		input rst,
		
		output TX,
		input RX,
		
		//materials cache
		output          l2_write_enable,
		output[2:0]     l2_write_id,
		output[289-1:0] l2_write_material,
		output          l2_flush_to_l1,
		
		//ctr for FPS and pipeline monitoring
		input frame_done,
		
		//control for ray caster
		input caster_ready,
		output reg stop_caster,
		
		//data for ray caster
		output[95:0] camera_left,
		output[95:0] camera_up,
		output[95:0] camera_front,
		output[95:0] camera_origin,
		
		output[2:0]    num_of_objects,
		output[2:0]    num_of_lights,
		output[95:0]   ambient_light_color
    );
	 
	wire uart_busy;
	wire uart_wr;
	wire[7:0] uart_dat;
	uart_transmitter uart_transmitter_instance (
		.uart_busy(uart_busy), 
		.uart_tx(TX), 
		.uart_wr_i(uart_wr), 
		.uart_dat_i(uart_dat), 
		.sys_clk_i(clk), 
		.sys_rst_i(rst)
	);

	wire rx_done;
	wire[7:0] rx_byte;
	uart_receiver uart_receiver_instance (
		.uart_data_ready(rx_done), 
		.uart_dat_rx(rx_byte), 
		.uart_rx(RX), 
		.clk(clk), 
		.rst(rst)
	);

	uart_processor uart_processor_instance (
		.clk(clk), 
		.rst(rst), 

		.uart_tx_busy(uart_busy), 
		.uart_tx_start(uart_wr), 
		.uart_tx_byte(uart_dat), 

		.uart_rx_new_data(rx_done), 
		.uart_rx_byte(rx_byte), 
		
		.l2_write_enable(l2_write_enable),
		.l2_write_id(l2_write_id),
		.l2_write_material(l2_write_material),
		.l2_flush_to_l1(l2_flush_to_l1),
		
		.frame_done(frame_done),

		.caster_ready(caster_ready), 
		.camera_left(camera_left), 
		.camera_up(camera_up), 
		.camera_front(camera_front), 
		.camera_origin(camera_origin),
		
		.num_of_objects(num_of_objects),
		.num_of_lights(num_of_lights),
		.ambient_light_color(ambient_light_color)
	);

endmodule
