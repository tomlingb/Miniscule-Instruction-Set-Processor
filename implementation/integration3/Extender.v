`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:11 02/03/2020 
// Design Name: 
// Module Name:    Extender 
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
module Extender(
    input [7:0] Immediate,
    output reg [15:0] o,
    input t	 
    );
	 
	 always @ (t or Immediate) begin
		 if(t == 1 && Immediate[7] == 1) begin
			o = {8'b11111111,Immediate};
		 end else begin
			o = {8'b00000000,Immediate};
		 end
	 end

endmodule
