`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:43 02/05/2020 
// Design Name: 
// Module Name:    Left_Shift_1b 
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
module Left_Shift_1b(
    input [15:0] immediate,
    output reg [15:0] o
    );
	 
	 integer i;
	 always @ (immediate) begin
	 o[0] <= 0; 
		for (i = 1; i < 16; i = i + 1) begin
			o[i] <= immediate[i - 1];
		end
	 end


endmodule
