`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:23 01/29/2020
// Design Name:   Mux_2x1
// Module Name:   C:/Users/tomlingb/Desktop/Xilinx projects/Mux_2x1/Mux_2x1t.v
// Project Name:  Mux_2x1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_2x1t;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg S;

	// Outputs
	wire [15:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Mux_2x1 uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 3;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		S = 0;
		#10;
		
		S = 1;
		#10;

	end
	
      
endmodule

