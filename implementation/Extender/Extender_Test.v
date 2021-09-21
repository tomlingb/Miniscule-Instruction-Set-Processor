`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:09:38 02/03/2020
// Design Name:   Extender
// Module Name:   C:/Users/tomlingb/Desktop/Xilinx projects/Extender/Extender_Test.v
// Project Name:  Extender
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Extender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Extender_Test;

	// Inputs
	reg [7:0] Immediate;
	reg Type;
	integer i;

	// Outputs
	wire [15:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Extender uut (
		.Immediate(Immediate), 
		.Out(Out), 
		.Type(Type)
	);

	initial begin
		// Initialize Inputs
		Immediate = 7;
		Type = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		if(Out == {8'b00000000,Immediate}) begin
			$display("Zero Extended 7: Success");
		end else begin
			$display("Zero Extended 7: Failed");
		end
      #10;
		
		// Add stimulus here
		Type = 1;
		#10;
		if(Out == {8'b00000000,Immediate}) begin
			$display("Sign Extended 7: Success");
		end else begin
			$display("Sign Extended 7: Failed");
		end
		#10;
		
		Type = 0;
		Immediate = -9;
		#10;
		if(Out == {8'b00000000,Immediate}) begin
			$display("Zero Extended -9: Success");
		end else begin
			$display("Zero Extended -9: Failed");
		end
		#10;
		
		Type = 1;
		#10;
		if(Out == {8'b11111111,Immediate}) begin
			$display("Sign Extended -9: Success");
		end else begin
			$display("Sign Extended -9: Failed");
		end
		#10;
	end
      
endmodule

