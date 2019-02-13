`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:02:50 01/09/2019 
// Design Name: 
// Module Name:    fixed_sqrt_pipeline 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
//LATENCY: 54
module fixed_sqrt_pipeline(
	input clk,
	input rst,
	input[31:0] a,
	output[31:0] r,
	input new_data,
	output output_valid
    );
	 
	wire[11:0] rom_addr;
	wire[31:0] rom_dout;
	isqrt_LUT isqrt_LUT_instance (
	  .clka(clk), // input clka
	  .addra(rom_addr), // input [11 : 0] addra
	  .douta(rom_dout) // output [31 : 0] douta
	);
	 
	wire[31:0] isqrt_r;
	wire isqrt_valid;
	fixed_isqrt_pipeline isqrt(
		.clk(clk),
		.rst(rst),
		.a(a),
		.r(isqrt_r),
		.new_data(new_data),
		.output_valid(isqrt_valid),
		
		.rom_addr(rom_addr),
		.rom_dout(rom_dout)
	); 
	
	fixed_inv_pipeline inv(
		.clk(clk),
		.rst(rst),
		.a(isqrt_r),
		.r(r),
		.new_data(isqrt_valid),
		.output_valid(output_valid)
	);


endmodule
