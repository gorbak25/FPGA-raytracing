`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:46 01/06/2019
// Design Name:   fixed_add
// Module Name:   /home/test/FPGA/raytracing/fixed_add_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fixed_add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixed_add_test;

	// Inputs
	reg signed [31:0] a;
	reg signed [31:0] b;
	reg clk;
	reg rst;
	reg new_data;

	// Outputs
	wire signed [31:0] r;
	wire output_valid;

	// Instantiate the Unit Under Test (UUT) 
	fixed_add uut (
		.a(a), 
		.b(b), 
		.r(r),
		.clk(clk),
		.rst(rst),
		.new_data(new_data),
		.output_valid(output_valid)
	);

	reg [31:0] seed;
	reg signed [31:0] expected;

	always begin
		clk = 1;
		#0.5;
		clk = 0;
		#0.5;
	end

	integer i;
	initial begin
		// Initialize Inputs 
		a = 0;
		b = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish 
		#100;
		rst = 0;
        
		// Add stimulus here
		seed = 0;
		for(i = 0; i< 10000; i = i+1) begin
			a[31:0] = $random(seed);
			b[31:0] = $random(seed);
			if($itor(a)/(2**24) + $itor(b)/(2**24) >= 128.0 ) begin
				expected = 2**(24+8-1)-1;
			end else begin
				expected = $rtoi(($itor(a)/(2**24) + $itor(b)/(2**24))*(2**24));
			end
			
			new_data = 1;
			#1;
			new_data = 0;
			#1;
			if(expected - r > 1 || expected - r < -1) begin //fuck rounding ;)
				$display("Got %f + %f = %f but expected %f", $itor(a)/(2**24), $itor(b)/(2**24), $itor(r)/(2**24), $itor(expected)/(2**24));
			end
		end
		
		$display("DONE");
			
 		$finish;
	end
      
endmodule

