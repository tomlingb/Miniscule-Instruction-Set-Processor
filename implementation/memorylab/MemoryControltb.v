// Verilog test fixture created from schematic C:\git\1920b-csse232-Blue\implementation\memory\MemoryControl.sch - Thu Jan 30 20:36:21 2020

`timescale 1ns / 1ps

module MemoryControl_MemoryControl_sch_tb();

// Inputs
   reg [9:0] addra;
   reg [15:0] dina;
   reg [0:0] wea;
   reg clk;

// Output
   wire ALUSrc;
   wire MemtoReg;
   wire RegDst;
   wire RegWrite;
   wire MemRead;
   wire MemWrite;
   wire Branch;

// Bidirs

// Instantiate the UUT
   MemoryControl UUT (
		.addra(addra), 
		.dina(dina), 
		.wea(wea), 
		.clk(clk), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch)
   );
// Initialize Inputs

initial begin
	clk = 0;
	forever begin
	#10
	clk = ~clk;
	end
	end


 //  `ifdef auto_init
       initial begin
		addra = 11;
		dina = 0;
		wea = 0;
		#100
		 if (RegDst == 1 &&
		 ALUSrc == 0 &&
		 MemtoReg == 0 &&
		 RegWrite == 1 &&
		 MemRead == 0 &&
		 MemWrite == 0 &&
		 Branch == 0)
		 begin
		 $display("pass r-format");
		 end else begin
		 $display("fail r-format");
		 end
		 addra = 12;
		
		 #100
		 if (RegDst == 0 &&
		 ALUSrc == 1 &&
		 MemtoReg == 1 &&
		 RegWrite == 1 &&
		 MemRead == 1 &&
		 MemWrite == 0 &&
		 Branch == 0)
		 begin
		 $display("pass lw");
		 end else begin
		 $display("fail lw");
		 end
		 addra = 13;
		
		 #100
		 if (
		 ALUSrc == 1 &&
		 
		 RegWrite == 0 &&
		 MemRead == 0 &&
		 MemWrite == 1 &&
		 Branch == 0)
		 begin
		 $display("pass sw");
		 end else begin
		 $display("fail sw");
		 end
		 addra = 14;
		
		 #100
		 if (
		 ALUSrc == 0 &&
		 
		 RegWrite == 0 &&
		 MemRead == 0 &&
		 MemWrite == 0 &&
		 Branch == 1)
		 begin
		 $display("pass beq");
		 end else begin
		 $display("fail beq");
		 end
		 end
		
		
  // `endif
	
	
	
endmodule
