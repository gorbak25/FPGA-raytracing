`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:58:01 01/13/2019
// Design Name:   ray_core
// Module Name:   /home/test/FPGA/raytracing/ray_core_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ray_core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ray_core_test;

	// Inputs
	reg clk;
	reg rst;
	reg [10:0] image_x;
	reg [10:0] image_y;
	reg [95:0] casted_ray_origin;
	reg [95:0] casted_ray_direction;
	reg new_data;
	
	reg          l2_write_enable;
	reg[2:0]     l2_write_id;
	reg[289-1:0] l2_write_material;
	reg          l2_flush_to_l1;

	// Outputs
	wire [10:0] store_image_x;
	wire [10:0] store_image_y;
	wire [96*5-1:0] store_diffuse_light_acc;
	wire [96*4-1:0] store_reflection_coeffs;
	wire output_valid;
	wire stall_source;

	wire[95:0] ambient_light_color;
	assign ambient_light_color[31:0] = 32'd1677721;
	assign ambient_light_color[63:32] = 32'd1677721;
	assign ambient_light_color[95:64] = 32'd1677721;
	// Instantiate the Unit Under Test (UUT)
	ray_core uut (
		.clk(clk), 
		.rst(rst),
		
		.NUM_OF_OBJECTS(3'd4),
		.NUM_OF_LIGHTS(3'd2),
		.ambient_light_color(ambient_light_color),
		
		.l2_write_enable(l2_write_enable),
		.l2_write_id(l2_write_id),
		.l2_write_material(l2_write_material),
		.l2_flush_to_l1(l2_flush_to_l1),
		.image_x(image_x), 
		.image_y(image_y), 
		.casted_ray_origin(casted_ray_origin), 
		.casted_ray_direction(casted_ray_direction), 
		.store_image_x(store_image_x), 
		.store_image_y(store_image_y), 
		.store_diffuse_light_acc(store_diffuse_light_acc), 
		.store_reflection_coeffs(store_reflection_coeffs), 
		.new_data(new_data), 
		.output_valid(output_valid), 
		.stall_source(stall_source)
	);
	
	always begin
		clk = 0;
		#0.5;
		clk = 1;
		#0.5;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		l2_write_enable = 0;
		l2_write_id = 0;
		l2_write_material = 0;
		l2_flush_to_l1 = 0;
		image_x = 0;
		image_y = 0;
		casted_ray_origin = 0;
		casted_ray_direction = 0;
		new_data = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here
		casted_ray_direction[31:0] = $rtoi(0.0*(2**24));
		casted_ray_direction[63:32] = $rtoi(0.0*(2**24));
	   casted_ray_direction[95:64] = $rtoi(5.0*(2**24));
		casted_ray_origin[31:0] = $rtoi(0.0*(2**24));
		casted_ray_origin[63:32] = $rtoi(0.0*(2**24));
		casted_ray_origin[95:64] = $rtoi(-5.0*(2**24));
		new_data = 1;
		#1;
		new_data = 0;
		#4000;
		$display("R = %f", $itor($signed(store_diffuse_light_acc[31:0]))/(2**24)*255);
		$display("G = %f", $itor($signed(store_diffuse_light_acc[63:32]))/(2**24)*255);
		$display("B = %f", $itor($signed(store_diffuse_light_acc[95:64]))/(2**24)*255);
		$finish;
	end
      
endmodule

