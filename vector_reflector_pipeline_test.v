`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:04 01/12/2019
// Design Name:   vector_reflector_pipeline
// Module Name:   /home/test/FPGA/raytracing/vector_reflector_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vector_reflector_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vector_reflector_pipeline_test;

	// Inputs
	reg clk;
	reg [95:0] v;
	reg [95:0] n;
	reg new_data;

	// Outputs
	wire [95:0] r;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT)
	vector_reflector_pipeline uut (
		.clk(clk), 
		.v(v), 
		.n(n), 
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

	initial begin
		// Initialize Inputs
		clk = 0;
		v = 0;
		n = 0;
		new_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		
		v[31:0] = $rtoi(-0.5773502691896258*(2**24));
		v[63:32] = $rtoi(-0.5773502691896258*(2**24));
	   v[95:64] = $rtoi(-0.5773502691896258*(2**24));
		
		n[31:0] = $rtoi(0.0*(2**24));
		n[63:32] = $rtoi(1.0*(2**24));
	   n[95:64] = $rtoi(0.0*(2**24));
		new_data <= 1;
		
		#1;
		new_data <= 0;
		
		#20;
		
		$display("R_X: %f", $itor($signed(r[31:0]))/(2**24));
		$display("R_Y: %f", $itor($signed(r[63:32]))/(2**24));
		$display("R_Z: %f", $itor($signed(r[95:64]))/(2**24));
		
      $display("VALID: %d", output_valid);
		
		#1;
		
		$display("VALID: %d", output_valid);

		$finish;
		

	end
      
endmodule

