`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:11 01/29/2020 
// Design Name: 
// Module Name:    Mux_2x1 
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
module Mux_2x1(
    input [15:0] A,
    input [15:0] B,
    input S,
    output reg [15:0] o
    );
	 
	 always @ (A or B or S) begin
	 
		case(S)
			1'b0: o <= A;
			1'b1: o <= B;
		endcase
		
	 end

endmodule
