`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:22:54 02/12/2019
// Design Name:   ray_core
// Module Name:   /home/test/FPGA/raytracing/ray_cast_core_integration.v
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

module ray_cast_core_integration;

	// Inputs
	reg clk;
	reg rst;
	reg l2_write_enable;
	reg [2:0] l2_write_id;
	reg [288:0] l2_write_material;
	reg l2_flush_to_l1;
	wire [10:0] image_x;
	wire [10:0] image_y;
	wire [95:0] casted_ray_origin;
	wire [95:0] casted_ray_direction;
	wire new_data;

	// Outputs
	wire [10:0] store_image_x;
	wire [10:0] store_image_y;
	wire [479:0] store_diffuse_light_acc;
	wire [479:0] store_reflection_coeffs;
	wire output_valid;
	wire stall_source;

	// Instantiate the Unit Under Test (UUT)
	ray_core uut (
		.clk(clk), 
		.rst(rst), 
		
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
	
	reg render_start;
	reg [95:0] camera_origin;
	reg [95:0] camera_front;
	reg [95:0] camera_left;
	reg [95:0] camera_up;
	ray_caster uut2 (
		.clk(clk), 
		.ce(!stall_source), 
		.rst(rst), 
		
		.render_start(render_start), 
		.camera_origin(camera_origin), 
		.camera_front(camera_front), 
		.camera_left(camera_left), 
		.camera_up(camera_up), 
		
		.core_image_x(image_x), 
		.core_image_y(image_y), 
		.core_ray_origin(casted_ray_origin), 
		.core_ray_direction(casted_ray_direction), 
		.output_valid(new_data)
	);
	
	always begin
		clk = 0;
		#0.5;
		clk = 1;
		#0.5;
	end
	
	integer file;
	initial begin
		file = $fopen("data.txt", "w");
	end
	
	always @(posedge clk) begin
		if(output_valid) begin
			$fwrite(file, "%d %d %d %d %d\n", store_image_y, store_image_x, 
			$rtoi($itor($signed(store_diffuse_light_acc[31:0]))/(2**24)*255),
			$rtoi($itor($signed(store_diffuse_light_acc[63:32]))/(2**24)*255),
			$rtoi($itor($signed(store_diffuse_light_acc[95:64]))/(2**24)*255));
		end
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		l2_write_enable = 0;
		l2_write_id = 0;
		l2_write_material = 0;
		l2_flush_to_l1 = 0;

		render_start = 0;
		camera_origin = 0;
		camera_left = 0;
		camera_front = 0;
		camera_up = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		// Add stimulus here
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
		
		render_start = 1;
		#1;
		render_start = 0;
		#1;
		
		#4000005;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

