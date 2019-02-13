`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:07:11 01/07/2019
// Design Name:   fixed_isqrt_pipeline
// Module Name:   /home/test/FPGA/raytracing/fixed_isqrt_pipeline_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fixed_isqrt_pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixed_isqrt_pipeline_test;

	// Inputs
	reg clk;
	reg signed [31:0] a;
	reg new_data;
	reg rst;

	// Outputs
	wire signed [31:0] r;
	wire output_valid;
	
	wire[11:0] rom_addr;
	wire[31:0] rom_dout;
	isqrt_LUT isqrt_LUT_instance (
	  .clka(clk), // input clka
	  .addra(rom_addr), // input [11 : 0] addra
	  .douta(rom_dout) // output [31 : 0] douta
	);

	// Instantiate the Unit Under Test (UUT)
	fixed_isqrt_pipeline uut (
		.clk(clk),
		.rst(rst),
		.a(a), 
		.r(r),
		.output_valid(output_valid),
		.new_data(new_data),
		.rom_addr(rom_addr),
		.rom_dout(rom_dout)
	);;
	
	always begin
		clk = 0;
		#0.5;
		clk = 1;
		#0.5;
	end

	integer seed;
	initial begin
		// Initialize Inputs
		a = 0;
		rst = 1;
		new_data = 0;

		// Wait 100 ns for global reset to finish 
		#100;
		rst = 0;
        
		// Add stimulus here
		seed = 1;
		a[30:0] = $random(seed);
		new_data = 1;
		#1
		new_data = 0;
		
		#29;
		$display("%f", $itor(a)/(2**24));
		$display("%f", $itor(r)/(2**24));
		$display(output_valid);
		#1;
		$display(output_valid);
		$finish;

	end
      
endmodule

