`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:37:32 01/28/2019
// Design Name:   ray_caster
// Module Name:   /home/test/FPGA/raytracing/ray_caster_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ray_caster
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ray_caster_test;

	// Inputs
	reg clk;
	reg ce;
	reg rst;
	reg render_start;
	reg [95:0] camera_origin;
	reg [95:0] camera_front;
	reg [95:0] camera_left;
	reg [95:0] camera_up;

	// Outputs
	wire [10:0] core_image_x;
	wire [10:0] core_image_y;
	wire [95:0] core_ray_origin;
	wire [95:0] core_ray_direction;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	ray_caster uut (
		.clk(clk), 
		.ce(ce), 
		.rst(rst), 
		.render_start(render_start), 
		.camera_origin(camera_origin), 
		.camera_front(camera_front), 
		.camera_left(camera_left), 
		.camera_up(camera_up), 
		.core_image_x(core_image_x), 
		.core_image_y(core_image_y), 
		.core_ray_origin(core_ray_origin), 
		.core_ray_direction(core_ray_direction), 
		.output_valid(output_valid)
	);
	
	always begin
		clk = 0;
		#0.5;
		clk = 1;
		#0.5;
	end
	
	//insert stall sometimes
	reg[20:0] ctr;
	initial ctr = 0;
	always @(posedge clk) begin
		ctr <= ctr + 1;
		if(ctr == 200) begin
			ce <= 0;
		end else if(ctr == 300) begin
			ce <= 1;
		end
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 0;
		rst = 1;
		render_start = 0;
		camera_origin = 0;
		camera_front = 0;
		camera_left = 0;
		camera_up = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		ce = 1;
        
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
		
		#400005;
		$finish;

	end
      
endmodule

