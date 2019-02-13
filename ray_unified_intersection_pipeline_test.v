`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:10:38 01/12/2019
// Design Name:   ray_unified_intersection_pipeline
// Module Name:   /home/test/FPGA/raytracing/ray_unified_intersection_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ray_unified_intersection_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ray_unified_intersection_pipeline_test;

	// Inputs
	reg clk;
	reg input_obj_type;
	reg [95:0] ray_origin;
	reg [95:0] ray_direction;
	reg [95:0] plane_origin;
	reg [95:0] plane_normal;
	reg [95:0] sphere_center;
	reg [31:0] sphere_r2;
	reg new_data;
	reg rst;

	// Outputs
	wire was_hit;
	wire [31:0] hit_dist;
	wire output_valid;
	wire output_obj_type;

	// Instantiate the Unit Under Test (UUT)
	ray_unified_intersection_pipeline uut (
		.clk(clk), 
		.rst(rst),
		.input_obj_type(input_obj_type), 
		.ray_origin(ray_origin), 
		.ray_direction(ray_direction), 
		.plane_origin(plane_origin), 
		.plane_normal(plane_normal), 
		.sphere_center(sphere_center), 
		.sphere_r2(sphere_r2), 
		.was_hit(was_hit), 
		.hit_dist(hit_dist), 
		.new_data(new_data), 
		.output_valid(output_valid), 
		.output_obj_type(output_obj_type)
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
		input_obj_type = 0;
		ray_origin = 0;
		ray_direction = 0;
		plane_origin = 0;
		plane_normal = 0;
		sphere_center = 0;
		sphere_r2 = 0;
		new_data = 0;
		rst = 1;
		
		#100;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#50;
        
		// Add stimulus here
		//Try to calculate a sphere, then a plane intersection
		//SPHERE
		input_obj_type = 0;
		sphere_r2 = $rtoi(1.0*(2**24));
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[94:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.3*(2**24));
		ray_origin[63:32] = $rtoi(0.2*(2**24));
		
		new_data <= 1;
		#1;
		//PLANE
		input_obj_type = 1;
		plane_normal[63:32] = $rtoi(1.0*(2**24));
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(-0.5773502691896258*(2**24));
		ray_direction[94:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.0*(2**24));
		ray_origin[63:32] = $rtoi(1.0*(2**24));
		
		
		#1;
		new_data <= 0;
		
		#82;
		
		$display("SPHERE:");
		$display("HIT_DIST: %f", $itor($signed(hit_dist))/(2**24));
		
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[94:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.3*(2**24));
		ray_origin[63:32] = $rtoi(0.2*(2**24));
		$display("X: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[31:0]))/(2**24) + $itor($signed(ray_origin[31:0]))/(2**24));
		$display("Y: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[63:32]))/(2**24) + $itor($signed(ray_origin[63:32]))/(2**24));
		$display("Z: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[95:64]))/(2**24) + $itor($signed(ray_origin[95:64]))/(2**24));

		$display("OUT_TYPE: %d", output_obj_type);
		$display("OUT_VALID: %d", output_valid);
		#1;
		$display("PLANE:");
		$display("HIT_DIST: %f", $itor($signed(hit_dist))/(2**24));
		
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(-0.5773502691896258*(2**24));
		ray_direction[94:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.0*(2**24));
		ray_origin[63:32] = $rtoi(1.0*(2**24));
		$display("X: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[31:0]))/(2**24) + $itor($signed(ray_origin[31:0]))/(2**24));
		$display("Y: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[63:32]))/(2**24) + $itor($signed(ray_origin[63:32]))/(2**24));
		$display("Z: %f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[95:64]))/(2**24) + $itor($signed(ray_origin[95:64]))/(2**24));

		$display("OUT_TYPE: %d", output_obj_type);
		$display("OUT_VALID: %d", output_valid);
		
		#1;
		$display("OUT_VALID: %d", output_valid);

		$finish;
	end
      
endmodule

