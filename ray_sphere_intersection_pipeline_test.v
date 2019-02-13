`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:18:11 01/10/2019
// Design Name:   ray_sphere_intersection_pipeline
// Module Name:   /home/test/FPGA/raytracing/ray_sphere_intersection_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ray_sphere_intersection_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ray_sphere_intersection_pipeline_test;

	// Inputs
	reg clk;
	reg rst;
	reg [95:0] sphere_center;
	reg [31:0] sphere_r2;
	reg [95:0] ray_origin;
	reg [95:0] ray_direction;
	reg new_data;

	// Outputs
	wire was_hit;
	wire [31:0] hit_dist;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	ray_sphere_intersection_pipeline uut (
		.clk(clk),
		.rst(rst),
		.sphere_center(sphere_center), 
		.sphere_r2(sphere_r2), 
		.ray_origin(ray_origin), 
		.ray_direction(ray_direction), 
		.was_hit(was_hit), 
		.hit_dist(hit_dist), 
		.new_data(new_data), 
		.output_valid(output_valid)
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
		rst = 1;
		sphere_center = 0;
		sphere_r2 = 0;
		ray_origin = 0;
		ray_direction = 0;
		new_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here
		sphere_r2 = $rtoi(1.0*(2**24));
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[94:64] = $rtoi(0.5773502691896258*(2**24));
		//ray_direction[94:64] = $rtoi(-0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.3*(2**24));
		ray_origin[63:32] = $rtoi(0.2*(2**24));
		
		new_data <= 1;
		#1;
		new_data <= 0;
		
		#82;
		
		$display("%f", $itor($signed(hit_dist))/(2**24));
		
		$display("%f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[31:0]))/(2**24) + $itor($signed(ray_origin[31:0]))/(2**24));
		$display("%f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[63:32]))/(2**24) + $itor($signed(ray_origin[63:32]))/(2**24));
		$display("%f", $itor($signed(hit_dist))/(2**24) * $itor($signed(ray_direction[95:64]))/(2**24) + $itor($signed(ray_origin[95:64]))/(2**24));

		$display(output_valid);
		#1;
		$display(output_valid);

		$finish;
	end
      
endmodule

