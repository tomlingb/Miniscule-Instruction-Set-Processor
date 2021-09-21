// Verilog test fixture created from schematic C:\git\1920b-csse232-Blue\implementation\integration3\integration3.sch - Wed Feb 19 13:35:09 2020

//uses gcd.coe

`timescale 1ns / 1ps

module integration3_integration3_sch999_tb();

// Inputs
   reg CLK;
   reg [15:0] FPGAIn;
   reg reset;

// Output
   wire [15:0] FPGAOut;
   wire MemWriteTest;

// Bidirs

// Instantiate the UUT
   integration3 UUT (
		.CLK(CLK), 
		.FPGAIn(FPGAIn), 
		.FPGAOut(FPGAOut), 
		.MemWriteTest(MemWriteTest), 
		.reset(reset)
   );
// Initialize Inputs
   initial begin
	CLK = 0;
		forever begin
			#15
			CLK = ~CLK;
		end
	end
	initial begin
	reset = 1;
	FPGAIn = 15;
	#97
	reset = 0;
	#270
	FPGAIn = 32;
	#50000
	if(FPGAOut == 1)
	$display("gcd pass");
	else
	$display("gcd fail");
	end
endmodule
