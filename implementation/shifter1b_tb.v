`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:05:13 02/02/2020
// Design Name:   shifter1b
// Module Name:   C:/RuoqingOuyang/CSSE/CSSE232/1920b-csse232-Blue/implementation/shifter1b_tb.v
// Project Name:  ALU16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shifter1b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shifter1b_tb;

	// Inputs
	reg [15:0] INPUT;

	// Outputs
	wire [15:0] OUTPUT;

	// Instantiate the Unit Under Test (UUT)
	shifter1b uut (
		.INPUT(INPUT), 
		.OUTPUT(OUTPUT)
	);

	initial begin
		// Initialize Inputs
		INPUT = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		INPUT = 0;
		#1;
		if (OUTPUT ==  0)  $display("PASS shift zero");
		else         $display("FAIL shift zero");
		#10;
		INPUT = 100;
		#10;
		if (OUTPUT ==  200)  $display("PASS shift hundred");
		else         $display("FAIL shift hundred");
		#10;
		INPUT = 16'b1111111111111111;
		#10;
		if (OUTPUT ==  16'b1111111111111110)  $display("PASS shift MAX");
		else         $display("FAIL shift MAX");


	end
      
endmodule

