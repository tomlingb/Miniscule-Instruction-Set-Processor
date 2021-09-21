// Verilog test fixture created from schematic C:\git\1920b-csse232-Blue\implementation\integration3\integration3.sch - Mon Feb 17 15:13:59 2020

// Uses sumtest.coe

`timescale 1ns / 1ps

module integration3_integration3_sch123_tb();

// Inputs
   reg CLK;
   reg [15:0] FPGAIn;
   reg reset;

// Output
   wire [15:0] IROutBranch;
   wire [15:0] ALUOutTest;
   wire [15:0] DataOut;
   wire [15:0] MemoutTest;
   wire [15:0] InTest;
   wire PCWriteTest;
   wire IRWriteTest;
   wire [15:0] ACCTest;
   wire [15:0] SPTest;
   wire [15:0] FPGAOut;
   wire MemWriteTest;
   wire [1:0] MemAddrTest;
   wire AluZeroTest;
   wire ALUovflTest;
   wire [15:0] MeminTest;
   wire [15:0] ALUDirectOutTest;
   wire [15:0] PCOutTest;

// Bidirs

// Instantiate the UUT
   integration3 UUT (
		.CLK(CLK), 
		.FPGAIn(FPGAIn),  
		.FPGAOut(FPGAOut), 
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
		#127
		reset = 0;
		FPGAIn = 10;
		#25000
		if(FPGAOut == 55)
		$display("Sum pass");
		else
		$display("Sum fail");
		end
		
endmodule
