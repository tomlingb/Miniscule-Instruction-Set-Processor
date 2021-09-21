`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:47 02/05/2020
// Design Name:   Left_Shift_1b
// Module Name:   C:/Users/tomlingb/Desktop/Xilinx projects/Left_shift_1b/Left_Shift_1bt.v
// Project Name:  Left_shift_1b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Left_Shift_1b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Left_Shift_1bt;

	// Inputs
	reg [15:0] immediate;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	Left_Shift_1b uut (
		.immediate(immediate), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		immediate = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		immediate = 16'b 1111111111111111;
		#10;
		
		immediate = 12;
		#10;
		
		immediate = -5;
		#10;

	end
      
endmodule

