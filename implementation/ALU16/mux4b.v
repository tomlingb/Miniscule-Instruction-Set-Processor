`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:10 02/02/2020 
// Design Name: 
// Module Name:    mux4b 
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
module mux4b(
    input [1:0] op,
    input and_o,
    input or_o,
    input add_o,
    input less,
    output r
    );
	 
	 assign r = (op[0])? ((op[1])? and_o: less) : ((op[1]) ? add_o: or_o );

endmodule
