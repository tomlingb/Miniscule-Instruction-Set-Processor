`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:17:35 01/28/2020
// Design Name:   MIPS_control_unit
// Module Name:   C:/git/1920b-csse232-Blue/implementation/memory/BlockMemoryControl_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS_control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockMemoryControl_tb;

	// Inputs
	reg [5:0] Opcode;
	reg CLK;
	reg Reset;

	// Outputs
	wire ALUSrc;
	wire MemtoReg;
	wire RegDst;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;

	// Instantiate the Unit Under Test (UUT)
	MIPS_control_unit uut (
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.Opcode(Opcode), 
		.CLK(CLK), 
		.Reset(Reset)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;
		CLK = 0;
		Reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Opcode = 0;
		#50
		CLK = 1;
		#100
		CLK = 0;
		#50
		if (  RegDst == 1 &&
				ALUSrc == 0 &&
				MemtoReg == 0 &&
				RegWrite == 1 &&
				MemRead == 0 &&
				MemWrite == 0 &&
				Branch == 0) begin
			$display("R-format pass");
		end else begin
			$display("R-fromat fail");
		end
		Opcode = 'h23;
		#50
		CLK = 1;
		#100
		CLK = 0;
		#50
		if (  RegDst == 0 &&
				ALUSrc == 1 &&
				MemtoReg == 1 &&
				RegWrite == 1 &&
				MemRead == 1 &&
				MemWrite == 0 &&
				Branch == 0) begin
			$display("lw pass");
		end else begin
			$display("lw fail");
		end
		Opcode='h2b;
		#50
		CLK = 1;
		#100
		CLK = 0;
		#50
		if (  
				ALUSrc == 1 &&
				
				RegWrite == 0 &&
				MemRead == 0 &&
				MemWrite == 1 &&
				Branch == 0) begin
			$display("sw pass");
		end else begin
			$display("sw fail");
		end
		Opcode=4;
		#50
		CLK = 1;
		#100
		CLK = 0;
		#50
		if (  
				ALUSrc == 0 &&
				
				RegWrite == 0 &&
				MemRead == 0 &&
				MemWrite == 0 &&
				Branch == 1) begin
			$display("beq pass");
		end else begin
			$display("beq fail");
		end
		
				

	end
      
endmodule

