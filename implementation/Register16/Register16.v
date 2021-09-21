`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:39 01/28/2020 
// Design Name: 
// Module Name:    Register16 
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
module Register16(
    input [15:0] d,
    output reg [15:0] r,
	 input reset,
	 input [15:0] initialdata,
    input CLK,
    input RegWrite
    );
	
	//declare a storage space
	reg [15:0] data;
	 
	always @(negedge CLK, posedge reset)
	begin
			if(reset)
			begin
				data <= initialdata;
			end
			else begin
				if(RegWrite)
				begin
					data <= d;	
				end 
			end
			
			
	end
	
	always @(data) begin
		r <= data;
	end
	

	
	
	
	

endmodule
