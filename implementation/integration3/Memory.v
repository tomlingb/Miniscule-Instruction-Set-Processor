`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:36:28 02/03/2020 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
    input [15:0] din,
    input we,
    input [15:0] addr,
	 input clk,
    output [15:0] dout
    );
	 
	 wire [15:0] addrshift;
	 assign addrshift = (addr>>1);
	 DistMem dMem (.d(din),.we(we), .a(addrshift[9:0]), .spo(dout), .clk(clk));
	 


endmodule
