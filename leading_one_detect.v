`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:38:37 01/07/2019 
// Design Name: 
// Module Name:    leading_one_detect 
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

module clz2(
	input[1:0] a,
	output reg[1:0] z
	);
	always @(a) begin
		case(a) 
			2'b00:
				begin
					z = 2'd2;
				end
			2'b01:
				begin
					z = 2'd1;
				end
			2'b10, 2'b11:
				begin
					z = 2'd0;
				end
		endcase
	end
endmodule

module clz4(
	input[3:0] a,
	output wire[5:0] z
	);
	wire[1:0] zl;
	wire[1:0] zh;
	clz2 clz2_low(.a(a[1:0]), .z(zl));
	clz2 clz2_high(.a(a[3:2]), .z(zh));
	
	assign z = (zh==2'd2) ? zl+zh : zh;
endmodule

module clz8(
	input[7:0] a,
	output wire[5:0] z
	);
	wire[5:0] zl;
	wire[5:0] zh;
	clz4 clz4_low(.a(a[3:0]), .z(zl));
	clz4 clz4_high(.a(a[7:4]), .z(zh));
	
	assign z = (zh==6'd4) ? zl+zh : zh;
endmodule

module clz16(
	input[15:0] a,
	output wire[5:0] z
	);
	wire[5:0] zl;
	wire[5:0] zh;
	clz8 clz8_low(.a(a[7:0]), .z(zl));
	clz8 clz8_high(.a(a[15:8]), .z(zh));
	
	assign z = (zh==6'd8) ? zl+zh : zh;
endmodule

module clz32(
	input[31:0] a,
	output wire[5:0] z
	);
	wire[5:0] zl;
	wire[5:0] zh;
	clz16 clz16_low(.a(a[15:0]), .z(zl));
	clz16 clz16_high(.a(a[31:16]), .z(zh));
	
	assign z = (zh==6'd16) ? zl+zh : zh;
endmodule

