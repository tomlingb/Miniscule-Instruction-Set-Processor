// Verilog test fixture created from schematic C:\Users\zhangx8\OneDrive\Documents\Rose-Hulman courses\CS\CSSE232\project\1920b-csse232-Blue\implementation\integration3\integration3.sch - Sun Feb 16 17:33:14 2020

// uses branches.coe


`timescale 1ns / 1ps

module integration3_integration3_sch15_tb();

// Inputs
   reg CLK;
   reg [15:0] FPGAIn;
   reg reset;

// Output
   wire [15:0] IROutBranch;
   wire [15:0] ALUOutTest;
   wire [15:0] PCOutTest;
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

// Bidirs

// Instantiate the UUT
   integration3 UUT (
		.CLK(CLK), 
		.IROutBranch(IROutBranch), 
		.ALUOutTest(ALUOutTest), 
		.PCOutTest(PCOutTest), 
		.DataOut(DataOut), 
		.MemoutTest(MemoutTest), 
		.InTest(InTest), 
		.FPGAIn(FPGAIn), 
		.PCWriteTest(PCWriteTest), 
		.IRWriteTest(IRWriteTest), 
		.ACCTest(ACCTest), 
		.SPTest(SPTest), 
		.FPGAOut(FPGAOut), 
		.MemWriteTest(MemWriteTest), 
		.MemAddrTest(MemAddrTest), 
		.AluZeroTest(AluZeroTest), 
		.ALUovflTest(ALUovflTest), 
		.reset(reset), 
		.MeminTest(MeminTest), 
		.ALUDirectOutTest(ALUDirectOutTest)
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
		#107.5
		reset = 0;
		
		#360
		if(PCOutTest == 'ha) $display("pass");
		else $display("fail"); //test pc
		
		#90
		if(PCOutTest == 'he) $display("pass");
		else $display("fail"); //test pc
		
		#450
		if(PCOutTest == 'h1a) $display("pass");
		else $display("fail"); //test pc
		
		#360
		if(PCOutTest == 'h24) $display("pass");
		else $display("fail"); //test pc
		
		#90
		if(PCOutTest == 'h28) $display("pass");
		else $display("fail"); //test pc
	end
endmodule
