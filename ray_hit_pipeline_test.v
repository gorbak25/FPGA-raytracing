`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:30:57 01/12/2019
// Design Name:   ray_hit_pipeline
// Module Name:   /home/test/FPGA/raytracing/ray_hit_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ray_hit_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ray_hit_pipeline_test;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] obj_id;
	reg [95:0] ray_origin;
	reg [95:0] ray_direction;
	reg new_data;

	// Outputs
	wire was_hit;
	wire [31:0] hit_dist;
	wire [95:0] hit_pos;
	wire [95:0] hit_normal;
	wire [2:0] hit_mat_id;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	ray_hit_pipeline uut (
		.clk(clk), 
		.rst(rst),
		.obj_id(obj_id), 
		.ray_origin(ray_origin), 
		.ray_direction(ray_direction), 
		.was_hit(was_hit), 
		.hit_dist(hit_dist), 
		.hit_pos(hit_pos), 
		.hit_normal(hit_normal), 
		.hit_mat_id(hit_mat_id), 
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
		obj_id = 0;
		ray_origin = 0;
		ray_direction = 0;
		new_data = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here
		obj_id = 1;
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(0.5773502691896258*(2**24));
	   ray_direction[95:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(2.0*(2**24));
		ray_origin[63:32] = $rtoi(0.0*(2**24));
		//ray_direction[63:32] = $rtoi(1.0*(2**24));
		
		new_data <= 1;
		#1;
		
		obj_id = 0;
		ray_direction[31:0] = $rtoi(0.5773502691896258*(2**24));
		ray_direction[63:32] = $rtoi(0.5773502691896258*(2**24));
	   ray_direction[95:64] = $rtoi(0.5773502691896258*(2**24));
		ray_origin[31:0] = $rtoi(0.0*(2**24));
		ray_origin[63:32] = $rtoi(0.0*(2**24));
		
		#1;
		obj_id = 3;
		ray_direction[31:0] = $rtoi(0.0*(2**24));
		ray_direction[63:32] = $rtoi(-1.0*(2**24));
	   ray_direction[95:64] = $rtoi(0.0*(2**24));
		ray_origin[63:32] = $rtoi(2.0*(2**24));
		
		#1;
		new_data <= 0;
		
		#155;
		
		$display("DIST: %f", $itor($signed(hit_dist))/(2**24));
		
		$display("HIT_X: %f", $itor($signed(hit_pos[31:0]))/(2**24));
		$display("HIT_Y: %f", $itor($signed(hit_pos[63:32]))/(2**24));
		$display("HIT_Z: %f", $itor($signed(hit_pos[95:64]))/(2**24));
		
		$display("NORM_X: %f", $itor($signed(hit_normal[31:0]))/(2**24));
		$display("NORM_Y: %f", $itor($signed(hit_normal[63:32]))/(2**24));
		$display("NORM_Z: %f", $itor($signed(hit_normal[95:64]))/(2**24));
		
		$display("MAT_ID: %d", hit_mat_id);
		$display("WAS_HIT: %d", was_hit);

		$display(output_valid);
		#1;
		
		$display("DIST: %f", $itor($signed(hit_dist))/(2**24));
		
		$display("HIT_X: %f", $itor($signed(hit_pos[31:0]))/(2**24));
		$display("HIT_Y: %f", $itor($signed(hit_pos[63:32]))/(2**24));
		$display("HIT_Z: %f", $itor($signed(hit_pos[95:64]))/(2**24));
		
		$display("NORM_X: %f", $itor($signed(hit_normal[31:0]))/(2**24));
		$display("NORM_Y: %f", $itor($signed(hit_normal[63:32]))/(2**24));
		$display("NORM_Z: %f", $itor($signed(hit_normal[95:64]))/(2**24));
		
		$display("MAT_ID: %d", hit_mat_id);
		$display("WAS_HIT: %d", was_hit);

		$display(output_valid);
		
		#1;
		
		$display("DIST: %f", $itor($signed(hit_dist))/(2**24));
		
		$display("HIT_X: %f", $itor($signed(hit_pos[31:0]))/(2**24));
		$display("HIT_Y: %f", $itor($signed(hit_pos[63:32]))/(2**24));
		$display("HIT_Z: %f", $itor($signed(hit_pos[95:64]))/(2**24));
		
		$display("NORM_X: %f", $itor($signed(hit_normal[31:0]))/(2**24));
		$display("NORM_Y: %f", $itor($signed(hit_normal[63:32]))/(2**24));
		$display("NORM_Z: %f", $itor($signed(hit_normal[95:64]))/(2**24));
		
		$display("MAT_ID: %d", hit_mat_id);
		$display("WAS_HIT: %d", was_hit);

		$display(output_valid);
		
		#1;
		
		$display("END: %d", output_valid);

		$finish;

	end
      
endmodule

