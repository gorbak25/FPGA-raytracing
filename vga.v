`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:23 12/26/2018 
// Design Name: 
// Module Name:    vga 
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

module vga(
	output reg HS,
	output reg VS,
	output reg DE,
	output [11:0] DATA,
	output reg[18:0] RAM_ADDR,
	input [23:0] RAM_DATA,
	
	input wire clk
);

parameter H_TOTAL = 800;
parameter H_VISIBLE = 640;
parameter H_SS = 656;
parameter H_SE = 752;

parameter V_TOTAL = 525;
parameter V_VISIBLE = 480;
parameter V_SS = 492;
parameter V_SE = 513;

reg [9:0] hpos;
reg [9:0] vpos;

reg [9:0] hpos_next;
reg [9:0] vpos_next;

wire [11:0] edge1;
wire [11:0] edge2;

genvar i;
generate
	for( i = 0; i<12; i = i+1 ) begin : oddr_gen
		ODDR #(
			.DDR_CLK_EDGE("SAME_EDGE"),
			.INIT(1'b0),
			.SRTYPE("SYNC")
		) ODDR_inst (
			.Q(DATA[i]),
			.C(clk),
			.CE(1'b1),
			.D1(edge1[i]),
			.D2(edge2[i]),
			.R(1'b0),
			.S(1'b0)
		);
	end
endgenerate

assign edge1 = {RAM_DATA[11:8], RAM_DATA[7:0]};
assign edge2 = {RAM_DATA[23:16], RAM_DATA[15:12]};

reg de1;
reg hs1;
reg vs1;

reg de2;
reg hs2;
reg vs2;

always @(posedge clk) begin
	de1 <= hpos < H_VISIBLE && vpos < V_VISIBLE;
	hs1 <= ~(hpos >= H_SS && hpos < H_SE);
	vs1 <= ~(vpos >= V_SS && vpos < V_SE);
	
	de2 <= de1;
	hs2 <= hs1;
	vs2 <= vs1;
	
	DE <= de2;
	HS <= hs2;
	VS <= vs2;
	
	RAM_ADDR <= (hpos + vpos*640);
	
	hpos <= hpos_next;
	vpos <= vpos_next;
end

initial begin
	hpos = 0;
	vpos = 0;
end

always @* begin
	if (hpos == H_TOTAL - 1) begin
		hpos_next = 0;
		if (vpos == V_TOTAL - 1)
			vpos_next = 0;
		else begin
			vpos_next = vpos + 1;
		end
	end else begin
		hpos_next = hpos + 1;
		vpos_next = vpos;
	end
end

endmodule
