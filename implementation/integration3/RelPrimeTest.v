// Verilog test fixture created from schematic C:\git\1920b-csse232-Blue\implementation\integration3\integration3.sch - Tue Feb 18 13:09:43 2020

// uses relprimes.coe


`timescale 1ns / 1ps

module integration3_integration3_sch1111_tb();

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
	FPGAIn = 5040; //30030 -> long test Robert showed us
	#97
	reset = 0;
	#11000000
	if(FPGAOut == 'h000b)
	$display("relprime pass");
	else
	$display("relprime fail");
	end
endmodule
