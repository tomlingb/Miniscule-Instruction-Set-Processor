// Verilog test fixture created from schematic C:\Users\zhangx8\OneDrive\Documents\Rose-Hulman courses\CS\CSSE232\project\1920b-csse232-Blue\implementation\IntegrationStep2\integrationStep2.sch - Sat Feb 08 18:15:35 2020

`timescale 1ns / 1ps

module integrationStep2_integrationStep2_sch_tb();

// Inputs
   reg [15:0] Memout;
   reg [1:0] ALUSrcB;
   reg SIGNExt;
   reg [7:0] IROut;
   reg [15:0] SP;
   reg IR15;
   reg ALUSrcA [1:0];
   reg BranchCycle;
   reg [1:0] BranchCond;
   reg [2:0] ALUOp;
   reg CLK;
   reg [15:0] PC;
   reg [15:0] ACC;
   reg [1:0] PCSrc;

// Output
   wire DOBRANCH;
   wire Zero;
   wire ovfl;
   wire [15:0] PCout;
   wire [15:0] ALUOut;
	wire [15:0] ALUDirectOut;

// Bidirs

// Instantiate the UUT
   integrationStep2 UUT (
		.Memout(Memout), 
		.ALUSrcB(ALUSrcB), 
		.SIGNExt(SIGNExt), 
		.IROut(IROut), 
		.SP(SP), 
		.IR15(IR15), 
		.ALUSrcA(ALUSrcA), 
		.BranchCycle(BranchCycle), 
		.BranchCond(BranchCond), 
		.DOBRANCH(DOBRANCH), 
		.ALUOp(ALUOp), 
		.Zero(Zero), 
		.CLK(CLK), 
		.ovfl(ovfl), 
		.PC(PC), 
		.ACC(ACC), 
		.PCSrc(PCSrc), 
		.PCout(PCout), 
		.ALUOut(ALUOut),
		.ALUDirectOut(ALUDirectOut)
   );
// Initialize Inputs
initial begin
	CLK <= 0;
		forever begin
		#20;
		CLK = ~CLK;
		end
	end
   initial begin
		Memout = 0;
		ALUSrcB = 0;
		SIGNExt = 0;
		IROut = 0;
		SP = 0;
		IR15 = 0;
		ALUSrcA = 0;
		BranchCycle = 0;
		BranchCond = 0;
		ALUOp = 0;
		CLK = 0;
		PC = 0;
		ACC = 0;
		PCSrc = 0;

	//test starts from here
		//add ACC to a imm
		SP <= 15;
		ACC <= 20;
		ALUSrcA <= 2;
		IR15 <= 0;
		ALUOp <= 0; //add
		IROut <= 5;
		ALUSrcB <= 0;
		
		#20;
		if(ALUOut != 25 | ALUDirectOut != 25) $display("failed");
		else $display("pass");
		
	
			//add SP to a imm
		SP <= 15;
		ACC <= 20;
		ALUSrcA <= 1;
		IR15 <= 0;
		ALUOp <= 0; //add
		IROut <= 5;
		ALUSrcB <= 0;
		
		#20;
		if(ALUOut != 20 | ALUDirectOut != 20) $display("failed");
		else $display("pass");	


		//Shift the value stored in ACC by 2 bits 
		SP <= 15;
		ACC <= 16'b1010001110110001;
		ALUSrcA <= 2;
		IR15 <= 0;
		ALUOp <= 100; //shift left arbitrary amount
		IROut <= 2; //by 2 bits
		ALUSrcB <= 0;
		
		#20;
		if(ALUOut !=  16'b1000111011000100| ALUDirectOut != 16'b1000111011000100) $display("failed");
		else $display("pass");	
		
		end
endmodule
