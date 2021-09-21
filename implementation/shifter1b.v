`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:05 02/02/2020 
// Design Name: 
// Module Name:    Shifter 
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
module shifter1b(
    input [15:0] INPUT,
    output [15:0] OUTPUT
    );
	 assign OUTPUT [15:1]  = INPUT[14:0];
	 assign OUTPUT [0]= 0;


endmodule

