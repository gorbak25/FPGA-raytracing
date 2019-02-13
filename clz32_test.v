`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:21:48 01/07/2019
// Design Name:   clz32
// Module Name:   /home/test/FPGA/raytracing/clz32_test.v
// Project Name:  raytracing
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clz32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clz32_test;

	// Inputs
	reg [31:0] a;

	// Outputs
	wire [5:0] z;

	// Instantiate the Unit Under Test (UUT)
	clz32 uut (
		.a(a), 
		.z(z)
	);

	integer i;
	integer seed;
	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(z != 32) begin
			$display(z);
		end
        
		seed = 0;
		// Add stimulus here
		for( i = 0; i< 32; i = i+1) begin
			a = (1<<i);
			a[{i-1}] = $random(seed);
			a[{i-2}] = $random(seed);
			#1;
			if(z!=31-i) begin
				$display(z);
			end
		end
		
		$display("OK");
		$finish;
	end
      
endmodule

