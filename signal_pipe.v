`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:42:35 01/09/2019 
// Design Name: 
// Module Name:    signal_pipe 
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
module signal_pipe(
	clk,
	in,
	out
    );
	 
	 parameter W = 1;
	 parameter L = 1;
	 parameter LL = L>0?L:1;
	 
	 input clk;
	 input[W-1:0] in;
	 output reg[W-1:0] out;
	 
	 
	 reg[W-1:0] pipe[LL-1:0];

	 
	 integer i;
	 initial begin
		if(L>0) begin
			for(i=0; i<=L-1; i = i+1) begin
				pipe[i] = 0;
			end
		end
	 end
	 
	 always @(posedge clk) begin
		if(L == 0) begin
			out <= in;
		end else begin
			pipe[0] <= in;
			out <= pipe[L-1];
			for(i = 1; i<L; i = i + 1) begin
				pipe[i] <= pipe[i-1];
			end
		end
	 end

endmodule

module signal_pipe_ce(
	clk,
	ce,
	in,
	out
    );
	 
	 parameter W = 1;
	 parameter L = 1;
	 parameter LL = L>0?L:1;
	 
	 input clk;
	 input ce;
	 input[W-1:0] in;
	 output reg[W-1:0] out;
	 
	 
	 reg[W-1:0] pipe[LL-1:0];

	 
	 integer i;
	 initial begin
		if(L>0) begin
			for(i=0; i<=L-1; i = i+1) begin
				pipe[i] = 0;
			end
		end
	 end
	 
	 always @(posedge clk) begin
		if(ce) begin
			if(L == 0) begin
				out <= in;
			end else begin
				pipe[0] <= in;
				out <= pipe[L-1];
				for(i = 1; i<L; i = i + 1) begin
					pipe[i] <= pipe[i-1];
				end
			end
		end
	 end

endmodule
