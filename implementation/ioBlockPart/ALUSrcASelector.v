`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:03:22 02/08/2020 
// Design Name: 
// Module Name:    ALUSrcASelector 
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
module ALUSrcASelector(
    input [1:0] ALUSrcA,
    input IR15,
    output [1:0] r

    );


	assign r = {ALUSrcA[1], (ALUSrcA[0] & ~IR15)};


endmodule
