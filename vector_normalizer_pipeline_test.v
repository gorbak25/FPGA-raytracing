`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:34:30 01/09/2019
// Design Name:   vector_normalizer_pipeline
// Module Name:   /home/test/FPGA/raytracing/vector_normalizer_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vector_normalizer_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vector_normalizer_pipeline_test;

	// Inputs
	reg clk;
	reg rst;
	reg [95:0] v;
	reg new_data;

	// Outputs
	wire [95:0] r;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	vector_normalizer_pipeline uut (
		.clk(clk), 
		.rst(rst),
		.v(v), 
		.new_data(new_data), 
		.r(r), 
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
		v = 0;
		new_data = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
	  
		// Add stimulus here
		seed = 1;
		v[30:0] = $random(seed);
		v[30] = 1;
		v[32*1+:32] = v[0+:32];
		//v[32*2+:32] = v[0+:32];
		//v[31:0] = -v[31:0];
		
		new_data = 1;
		#1
		new_data = 0;
		
		#49;
		$display("%f", $itor($signed(v[0+:32]))/(2**24));
		
		$display("%f", $itor($signed(r[0+:32]))/(2**24));
		$display("%f", $itor($signed(r[32+:32]))/(2**24));
		$display("%f", $itor($signed(r[64+:32]))/(2**24));
		$display(output_valid);
		#1;
		$display(output_valid);
		$finish;
	end
      
endmodule

