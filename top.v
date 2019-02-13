`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:20:56 01/06/2019 
// Design Name: 
// Module Name:    top 
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
module top(
		input clk,
		output[3:0] DBG_LED,
		
		input[0:0] FPGA_LCD_DB,
		output FPGA_LCD_E,
		output FPGA_LCD_RS,
		output FPGA_LCD_RW,
		
		inout IIC_SDA_VIDEO,
		inout IIC_SCL_VIDEO,
		
		output[11:0] DVI_D,
		output DVI_XCLK_P,
		output DVI_XCLK_N,
		output DVI_HSYNC,
		output DVI_VSYNC,
		output DVI_DE,
		output DVI_RESET_B
    );

	 //vga timing
	 assign DVI_RESET_B = 1;
	 
	 wire vclk;
	 wire locked;
		 /*
	  IN:      100.000 MHz
	  OUT:     25.0 MHZ
	  DESIRED: 25.175 MHz
	*/
	wire clk_fb;
	DCM_ADV #(
		.CLKFX_DIVIDE(8),
		.CLKFX_MULTIPLY(2),
		.CLKIN_PERIOD(10.0),
		.CLK_FEEDBACK("1X"),
		.STARTUP_WAIT("TRUE")
	) dcm_vclk (
		.RST(1'b0),
		.CLKFX(vclk),
		.CLKIN(clk),
		.LOCKED(locked),
		.CLK0(clk_fb),
		.CLKFB(clk_fb)
	);
	
	//phase adjust
	wire vclk_0;
	wire vclk_270;
	DCM_ADV #(
		.CLKIN_PERIOD(40.0),
		.CLK_FEEDBACK("1X"),
		.STARTUP_WAIT("TRUE"),
		.SIM_DEVICE("VIRTEX5")
	) dcm_phase_shift (
		.RST(~locked),
		.CLKIN(vclk),
		.CLKFB(vclk_0),
		.CLK0(vclk_0),
		.CLK270(vclk_270)
	);
	
	//rclk generation
	//150 MHZ
	(*PERIOD = "6.667 ns"*)
	wire rclk;
	wire rclk_fb;
	wire rst_rclk;
	wire rclk_locked;
	assign rst_rclk = !rclk_locked;
	
	DCM_ADV #(
		.CLKFX_DIVIDE(2),
		.CLKFX_MULTIPLY(3),
		.CLKIN_PERIOD(10.0),
		.CLK_FEEDBACK("1X"),
		.STARTUP_WAIT("TRUE")
	) dcm_rclk (
		.RST(1'b0),
		.CLKFX(rclk),
		.CLKIN(clk),
		.LOCKED(rclk_locked),
		.CLK0(rclk_fb),
		.CLKFB(rclk_fb)
	);
	
	assign DVI_XCLK_P = vclk_0;
	assign DVI_XCLK_N = ~vclk_0;
	
	//640x480
	//24  bits -> R | G | B
	wire[18:0] vaddr;
	wire[23:0] vdata;
	
	wire wea;
	wire[18:0] addra;
	wire[23:0] dina;
	
	reg wea1;
	reg[18:0] addra1;
	reg[23:0] dina1;
	
	reg wea2;
	reg[18:0] addra2;
	reg[23:0] dina2;
	//flops for timing performance
	always @(posedge rclk) begin
		wea1 <= wea;
		addra1 <= addra;
		dina1 <= dina;
		
		wea2 <= wea1;
		addra2 <= addra1;
		dina2 <= dina1;
	end
	frame_buffer frame_buffer_instance (
	  .clka(rclk), // input clka
	  .wea(wea2), // input [0 : 0] wea
	  .addra(addra2), // input [18 : 0] addra
	  .dina(dina2), // input [23 : 0] dina
	  
	  .clkb(vclk_270), // input clkb
	  .addrb(vaddr), // input [18 : 0] addrb
	  .doutb(vdata) // output [23 : 0] doutb
	);
	
	vga vga_instance (
    .HS(DVI_HSYNC), 
    .VS(DVI_VSYNC),
	 .DE(DVI_DE),
    .DATA(DVI_D),
	 .RAM_ADDR(vaddr),
	 .RAM_DATA(vdata),
    .clk(vclk_270)
    );
	 
	 wire rst;
	 wire [6:0]  cmd_address;
	 wire        cmd_start;
	 wire        cmd_read;
	 wire        cmd_write;
	 wire        cmd_write_multiple;
	 wire        cmd_stop;
	 wire        cmd_valid;
	 wire        cmd_ready;
	 wire [7:0]  data_in;
	 wire        data_in_valid;
	 wire        data_in_ready;
	 wire        data_in_last;
	 wire [7:0]  data_out;
	 wire        data_out_valid;
	 wire        data_out_ready;
	 wire        data_out_last;
	 wire        scl_i;
	 wire        scl_o;
	 wire        scl_t;
	 wire        sda_i;
	 wire        sda_o;
	 wire        sda_t;
	 wire        busy;
	 wire        bus_control;
	 wire        bus_active;
	 wire        missed_ack;
	 wire [25:0] prescale;
	 wire        stop_on_idle;
	 
	 //assign prescale = 26'd10000000;
	 assign prescale = 16'd250;
	 assign stop_no_idle = 0;
	 
	assign scl_i = IIC_SCL_VIDEO;
	assign IIC_SCL_VIDEO = scl_t ? 1'bz : scl_o;
	assign sda_i = IIC_SDA_VIDEO;
	assign IIC_SDA_VIDEO = sda_t ? 1'bz : sda_o;
	
	assign DBG_LED[0] = ~IIC_SCL_VIDEO;
	assign DBG_LED[1] = ~IIC_SDA_VIDEO;
	reg missed_ack_reg;
	assign DBG_LED[2] = ~locked;
	assign DBG_LED[3] = ~locked;
	 
	 i2c_master i2c_master_vga (
    .clk(clk), 
    .rst(rst), 
    .cmd_address(cmd_address), 
    .cmd_start(cmd_start), 
    .cmd_read(cmd_read), 
    .cmd_write(cmd_write), 
    .cmd_write_multiple(cmd_write_multiple), 
    .cmd_stop(cmd_stop), 
    .cmd_valid(cmd_valid), 
    .cmd_ready(cmd_ready), 
    .data_in(data_in), 
    .data_in_valid(data_in_valid), 
    .data_in_ready(data_in_ready), 
    .data_in_last(data_in_last), 
    .data_out(data_out), 
    .data_out_valid(data_out_valid), 
    .data_out_ready(data_out_ready), 
    .data_out_last(data_out_last), 
    .scl_i(scl_i), 
    .scl_o(scl_o), 
    .scl_t(scl_t), 
    .sda_i(sda_i), 
    .sda_o(sda_o), 
    .sda_t(sda_t), 
    .busy(busy), 
    .bus_control(bus_control), 
    .bus_active(bus_active), 
    .missed_ack(missed_ack), 
    .prescale(prescale), 
    .stop_on_idle(stop_on_idle)
    );
	 
	 wire init_busy;
	 wire start;
	 
	 i2c_init i2c_init_chromtel (
    .clk(clk), 
    .rst(rst), 
    .cmd_address(cmd_address), 
    .cmd_start(cmd_start), 
    .cmd_read(cmd_read), 
    .cmd_write(cmd_write), 
    .cmd_write_multiple(cmd_write_multiple), 
    .cmd_stop(cmd_stop), 
    .cmd_valid(cmd_valid), 
    .cmd_ready(cmd_ready), 
    .data_out(data_in), 
    .data_out_valid(data_in_valid), 
    .data_out_ready(data_in_ready), 
    .data_out_last(data_in_last), 
    .busy(init_busy), 
    .start(start)
    );
	 
	 assign start = 1;
	 
	 //this will enable LCD_DB as inputs
	 assign FPGA_LCD_E = 1;
	 assign FPGA_LCD_RW = 1;
	 
	 wire UART_IN;
	 assign UART_IN = FPGA_LCD_DB;
	 
	 wire UART_OUT;
	 assign FPGA_LCD_RS = UART_OUT;
	 
	 wire          l2_write_enable;
	 wire[2:0]     l2_write_id;
	 wire[289-1:0] l2_write_material;
	 wire          l2_flush_to_l1;
	 
	 wire frame_done;
	 wire caster_ready;
	 wire stop_caster;
	 wire[95:0] camera_left;
	 wire[95:0] camera_up;
	 wire[95:0] camera_front;
	 wire[95:0] camera_origin;
	 wire[2:0]  num_of_objects;
	 wire[2:0]  num_of_lights;
	 wire[95:0] ambient_light_color;
	 uart_subsystem uart_subsystem_instance (
		 .clk(rclk),
		 .rst(rst_rclk),
		 .TX(UART_OUT), 
		 .RX(UART_IN),
	
		 .l2_write_enable(l2_write_enable),
		 .l2_write_id(l2_write_id),
		 .l2_write_material(l2_write_material),
		 .l2_flush_to_l1(l2_flush_to_l1),
	
		 .frame_done(frame_done),
	 
		 .caster_ready(caster_ready), 
		 .stop_caster(stop_caster), 
		 
		 .camera_left(camera_left), 
		 .camera_up(camera_up), 
		 .camera_front(camera_front), 
		 .camera_origin(camera_origin),
		 .num_of_objects(num_of_objects),
		 .num_of_lights(num_of_lights),
		 .ambient_light_color(ambient_light_color)
    );
	 
	 wire ray_caster_ce;
	 wire render_start;
	 
	 wire[10:0] core_image_x;
	 wire[10:0] core_image_y;
	 wire[95:0] core_ray_origin;
	 wire[95:0] core_ray_direction;
	 wire core_input_valid;
	 
	 ray_caster ray_caster_instance (
		 .clk(rclk), 
		 .ce(ray_caster_ce), 
		 .rst(rst_rclk),
		 .ready(caster_ready),
		 
		 .render_start(render_start), 
		 .camera_origin(camera_origin), 
		 .camera_front(camera_front), 
		 .camera_left(camera_left), 
		 .camera_up(camera_up), 
		 
		 .core_image_x(core_image_x), 
		 .core_image_y(core_image_y), 
		 .core_ray_origin(core_ray_origin), 
		 .core_ray_direction(core_ray_direction), 
		 .output_valid(core_input_valid)
    );
	 
	 assign render_start = !stop_caster;
	 
	 wire ray_caster_stall;
	 wire[10:0] store_image_x;
	 wire[10:0] store_image_y;
	 wire[96*5-1:0] store_diffuse_light_acc;
	 wire[96*4-1:0] store_reflection_coeffs;
	 wire store_valid;
	 ray_core ray_core_1 (
    .clk(rclk), 
    .rst(rst_rclk), 
	 
	 .l2_write_enable(l2_write_enable),
	 .l2_write_id(l2_write_id),
	 .l2_write_material(l2_write_material),
	 .l2_flush_to_l1(l2_flush_to_l1),
	 
	 .NUM_OF_OBJECTS(num_of_objects),
	 .NUM_OF_LIGHTS(num_of_lights),
	 .ambient_light_color(ambient_light_color),
	 
    .image_x(core_image_x), 
    .image_y(core_image_y), 
    .casted_ray_origin(core_ray_origin), 
    .casted_ray_direction(core_ray_direction), 
    .new_data(core_input_valid),
	 .stall_source(ray_caster_stall),
	 
	 .store_image_x(store_image_x), 
    .store_image_y(store_image_y), 
    .store_diffuse_light_acc(store_diffuse_light_acc), 
    .store_reflection_coeffs(store_reflection_coeffs),  
    .output_valid(store_valid)
    );
	 
	 assign ray_caster_ce = !ray_caster_stall;
	 
	 ray_write_back ray_write_back_instance (
    .clk(rclk), 
    .rst(rst_rclk),
	 
	 .frame_done(frame_done),
	 
    .image_x(store_image_x), 
    .image_y(store_image_y), 
    .diffuse_light_acc(store_diffuse_light_acc), 
    .reflection_coeffs(store_reflection_coeffs), 
    .new_data(store_valid), 
    
	 .wea(wea), 
    .addra(addra), 
    .dina(dina)
    );

endmodule
