// Verilog test fixture created from schematic C:\git\1920b-csse232-Blue\implementation\integration3\integration3.sch - Wed Feb 12 15:51:21 2020

//uses inouttest.coe

`timescale 1ns / 1ps

module integration3_integration3_sch4_tb();

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
		FPGAIn = 99;
		reset = 1;
		#205
		reset = 0;
		#90
		if(ACCTest == 99)
		begin
		$display("in pass");
		end else begin
		$display("in fail");
		end
		#90
		if(FPGAOut == 99)
		begin
		$display("out pass");
		end else begin
		$display("out fail");
		end
		
		 
		
		
		
		
		end
		
		initial begin
		CLK = 0;
			forever begin
				#15;
				CLK = ~CLK;
			end
		end
endmodule
