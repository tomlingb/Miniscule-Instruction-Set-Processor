`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:50 01/28/2020
// Design Name:   Register16
// Module Name:   C:/Users/zhangx8/OneDrive/Documents/Rose-Hulman courses/CS/CSSE232/Register16/test.v
// Project Name:  Register16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [15:0] in;
	reg CLK;
	reg RegWrite;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	Register16 uut (
		.in(in), 
		.out(out), 
		.CLK(CLK), 
		.RegWrite(RegWrite)
	);

	initial begin
			CLK = 0;

		// Initialize Inputs
	
		// Wait 100 ns for global reset to finish
		forever 
			begin
				#10; 
				CLK = ~CLK;
			end
	end 
	initial begin
		in = 0;
		RegWrite = 1;
		
		repeat(30)
		begin
			in = in + 20;
			#30;
		end

	end
      
endmodule

