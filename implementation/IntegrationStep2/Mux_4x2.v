`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:08 01/29/2020 
// Design Name: 
// Module Name:    Mux_4x2 
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
module Mux_4x2(
    input [15:0] A,
    input [15:0] B,
    input [15:0] C,
    input [15:0] D,
    input [1:0] S,
    output reg [15:0] o
    );
	 
	 always @ (A or B or C or D or S)
		case(S)
			2'b00 : o <= A;
			2'b01 : o <= B;
			2'b10 : o <= C;
			2'b11 : o <= D;
		endcase
	 

endmodule
