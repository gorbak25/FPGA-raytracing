`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:14:00 01/09/2019
// Design Name:   fixed_sqrt_pipeline
// Module Name:   /home/test/FPGA/raytracing/fixed_sqrt_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fixed_sqrt_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixed_sqrt_pipeline_test;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] a;
	reg new_data;

	// Outputs
	wire [31:0] r;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	fixed_sqrt_pipeline uut (
		.clk(clk),
		.rst(rst),
		.a(a), 
		.r(r), 
		.new_data(new_data), 
		.output_valid(output_valid)
	);
	
	always begin
		clk = 0;
		#0.5;
		clk = 1;
		#0.5;
	end
	
	integer seed;
	initial begin
		// Initialize Inputs
		clk = 0;
		a = 0;
		new_data = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here
		seed = 1;
		a[30:0] = $random(seed);
		new_data = 1;
		#1
		new_data = 0;
		
		#53;
		$display("%f", $itor(a)/(2**24));
		$display("%f", $itor(r)/(2**24));
		$display(output_valid);
		#1;
		$display(output_valid);
		$finish;
		
	end
      
endmodule

