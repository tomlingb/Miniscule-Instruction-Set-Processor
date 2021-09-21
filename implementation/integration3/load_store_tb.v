// Verilog test fixture created from schematic C:\Users\zhangx8\OneDrive\Documents\Rose-Hulman courses\CS\CSSE232\integration3\integration3.sch - Mon Feb 10 15:37:02 2020

//For use with load_store.coe

`timescale 1ns / 1ps 

module integration3_integration3_sch3_tb();

// Inputs
   reg CLK;
   reg [15:0] FPGAIn;
   reg reset;

// Output
   wire [15:0] IROutBranch;
   wire [15:0] PCOutTest;
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
	wire [15:0] ALUOutTest; 
	wire [15:0] DataOut;
	wire [15:0] MeminTest;
	wire [15:0] ALUDirectOutTest;

// Bidirs

// Instantiate the UUT
   integration3 UUT (
		.CLK(CLK), 
		.IROutBranch(IROutBranch), 
		.PCOutTest(PCOutTest), 
		.MemoutTest(MemoutTest), 
		.InTest(InTest), 
		.FPGAIn(FPGAIn), 
		.PCWriteTest(PCWriteTest), 
		.IRWriteTest(IRWriteTest), 
		.ACCTest(ACCTest), 
		.SPTest(SPTest), 
		.reset(reset), 
		.FPGAOut(FPGAOut), 
		.MemWriteTest(MemWriteTest), 
		.MemAddrTest(MemAddrTest), 
		.AluZeroTest(AluZeroTest), 
		.ALUovflTest(ALUovflTest),  
		.ALUOutTest(ALUOutTest),
		.DataOut(DataOut),
		.MeminTest(MeminTest),
		.ALUDirectOutTest(ALUDirectOutTest)
   );
// Initialize Inputs
  
      initial begin
		FPGAIn = 0;
		reset = 1;
		#205
		reset = 0;
		#90
		if(ACCTest == 'b0000101000000000) begin
			$display("lui pass");
		end else begin
			$display("lui fail");
		end
		#180
		if(ACCTest == 'b0000101000000001) begin
			$display("addi pass");
		end else begin
			$display("addi fail");
		end
		#90
		if(ACCTest == 'b0000101000000000) begin
			$display("lw pass");
		end else begin
			$display("lw fail");
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


