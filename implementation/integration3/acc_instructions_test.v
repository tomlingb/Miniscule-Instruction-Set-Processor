// Verilog test fixture created from schematic C:\Users\zhangx8\OneDrive\Documents\Rose-Hulman courses\CS\CSSE232\integration3\integration3.sch - Mon Feb 10 15:37:02 2020

//For use with acc_instructions.coe

`timescale 1ns / 1ps

module integration3_integration3_sch2_tb();

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
		#990
		if(ACCTest == 2) begin
			$display("lw pass");
		end else begin
			$display("lw fail");
		end
		#120
		if(ACCTest == 3) begin
			$display("add pass");
		end else begin
			$display("add fail");
		end
		#120
		if(ACCTest == 2) begin 
			$display("sub pass");
		end else begin
			$display("sub fail");
		end
		#120
		if(ACCTest == 3) begin
			$display("or pass");
		end else begin
			$display("or fail");
		end
		#120
		if(ACCTest == 1) begin
			$display("and pass");
		end else begin
			$display("and fail");
		end
		#180
		if(ACCTest == 1 &&
		SPTest == 'hFFFC) begin
			$display("spi pass");
		end else begin
			$display("spi fail");
		end
		#210
		if(ACCTest == 2 &&
		SPTest == 'hFFFA) begin
			$display("spc pass");
		end else begin
			$display("spc fail");
		end
		#210
		if(ACCTest == 'b0000000100000001) begin
			$display("lwa pass");
		end else begin
			$display("lwa fail");
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
