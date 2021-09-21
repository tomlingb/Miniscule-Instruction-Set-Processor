// Verilog test fixture created from schematic C:\Users\zhangx8\OneDrive\Documents\Rose-Hulman courses\CS\CSSE232\project\1920b-csse232-Blue\implementation\integration3\integration3.sch - Wed Feb 12 15:55:16 2020

//uses acc_tests_a.coe

`timescale 1ns / 1ps

module integration3_integration3_sch5_tb();

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
		FPGAIn = 0;
		reset = 1;
		#205
		reset = 0;
		#180
		if(ACCTest == 'b1111111111111011) begin
			$display("li pass");
		end else begin
			$display("li fail");
		end
		#90;
		$display("sw executed");
		#180
		if(ACCTest == 3) begin
			$display("li pass");
		end else begin
			$display("li fail");
		end

		#90
		if(ACCTest == 5) begin
			$display("addi pass");
		end else begin
			$display("addi fail");
		end


		#120
		if(ACCTest == 0) begin
			$display("and pass");
		end else begin
			$display("and fail");
		end

		#90
		if(ACCTest == 100) begin
			$display("ori pass");
		end else begin
			$display("ori fail");
		end


		#90
		if(ACCTest == 4) begin
			$display("andi pass");
		end else begin
			$display("andi fail");
		end


		#90
		if(ACCTest == 'b1111111111111011) begin
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
