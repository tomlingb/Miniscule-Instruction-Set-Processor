`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:06 01/29/2020
// Design Name:   Mux_4x2
// Module Name:   C:/Users/tomlingb/Desktop/Xilinx projects/Mux_4x2/Mux_4x2t.v
// Project Name:  Mux_4x2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_4x2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_4x2t;

	integer i;
	integer j;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] S;

	// Outputs
	wire [15:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Mux_4x2 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.S(S), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 2;
		B = 3;
		C = 4;
		D = 10000;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		for(i = 0; i < 2; i = i + 1) begin
			for(j = 0; j < 2; j = j + 1) begin
				S[1] <= i;
				S[0] <= j;
				#10;
			end
		end
		
	end
      
endmodule

