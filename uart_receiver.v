`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:08:20 01/23/2019 
// Design Name: 
// Module Name:    uart_receiver 
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
module uart_receiver(
   // Outputs
   uart_data_ready,   // data is ready
   uart_dat_rx,       // received data
   // Inputs
	uart_rx,     //rx wire
   clk,   // System clock, 150 MHz
   rst    // System reset
    );
	 
	 output reg uart_data_ready;
	 output reg[7:0] uart_dat_rx;
	 
	 input uart_rx;
	 input clk;
	 input rst;


	//synchronize this
	reg uart_syn;
	reg uart_tmp;
	
	initial uart_syn = 1;
	initial uart_tmp = 1;
	
	always @(posedge clk) begin
		if(rst) begin
			uart_syn <= 1;
			uart_tmp <= 1;
		end else begin
			uart_tmp <= uart_rx;
			uart_syn <= uart_tmp;
		end
	end
	
	// clk is 150MHz.  We want a 115200Hz clock
	reg start_trigger;
	initial start_trigger = 0;
	
	reg [28:0] d;
	wire [28:0] dInc = d[28] ? (12) : (12 - 15625);
	wire [28:0] dNxt = d + dInc;
	always @(posedge clk)
	begin
		if(start_trigger) begin
			d = dNxt;
		end else begin
			d = 0;
		end
	end
	wire ser_clk = ~d[28]; // this is the 115200 Hz clock
	
	//sample data line and get data into shift registers
	reg prev_rx;
	initial prev_rx = 1;
	
	reg[8:0] delay;
	reg[3:0] to_receive;
	reg[9:0] rx_buff;
	reg ign;
	
	always @(posedge clk) begin
		if(rst) begin
			prev_rx <= 1;
			start_trigger <= 0;
			delay <= 0;
			rx_buff <= 0;
			to_receive <= 0;
			uart_data_ready <= 0;
		end else begin
			prev_rx <= uart_syn;
			uart_data_ready <= 0;
			if(delay > 0 && !start_trigger) begin
				if(uart_syn == 1'b1) begin //this is not a valid start bit
					delay <= 0;
				end else begin
					if(delay == 1) begin
						//this is a valid start bit
						start_trigger <= 1;
						to_receive <= 8+2; //start bit was already received
						delay <= 1;
					end else begin
						delay <= delay-1;
					end
				end
			end else if(!start_trigger) begin
				if(prev_rx == 1'b1 && uart_syn == 1'b0) begin
					delay <= 300; //on an negedge we wait for half the baudrate
				end
			end else begin
				//receive was triggered and the baudrate clock was started
				if(ser_clk) begin
					{rx_buff, ign} <= {uart_syn, rx_buff};
					if(to_receive == 0) begin
						//byte was received

						if(uart_syn && rx_buff[9]) begin
							//stop bits are OKer
							uart_data_ready <= 1;
							uart_dat_rx <= rx_buff[8:1];
						end
						
						start_trigger <= 0;
						delay <= 0;
					end else begin
						to_receive <= to_receive-1;
					end
				end
			end
		end
	end
	

endmodule
