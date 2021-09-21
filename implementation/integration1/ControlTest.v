`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:41 02/04/2020
// Design Name:   Control
// Module Name:   C:/git/1920b-csse232-Blue/implementation/integration1/ControlTest.v
// Project Name:  integration1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlTest;

	// Inputs
	reg [7:0] opcode;
	reg clk;
	reg reset;

	// Outputs
	wire MemOutWrite;
	wire MemWrite;
	wire ACCWrite;
	wire SPWrite;
	wire SignExt;
	wire [1:0] ALUSrcA;
	wire [1:0] ALUSrcB;
	wire [1:0] PCSrc;
	wire PCWrite;
	wire [2:0] ALUOp;
	wire IRWrite;
	wire [1:0] ACCSrc;
	wire SPSrc;
	wire [1:0] BranchCond;
	wire BranchCycle;
	wire [1:0] MemAddr;
	wire MemData;
	wire OutWrite;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.opcode(opcode), 
		.clk(clk), 
		.reset(reset), 
		.MemOutWrite(MemOutWrite), 
		.MemWrite(MemWrite), 
		.ACCWrite(ACCWrite), 
		.SPWrite(SPWrite), 
		.SignExt(SignExt), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.PCSrc(PCSrc), 
		.PCWrite(PCWrite), 
		.ALUOp(ALUOp), 
		.IRWrite(IRWrite), 
		.ACCSrc(ACCSrc), 
		.SPSrc(SPSrc), 
		.BranchCond(BranchCond), 
		.BranchCycle(BranchCycle), 
		.MemAddr(MemAddr), 
		.MemData(MemData), 
		.OutWrite(OutWrite)
	);

	initial begin
		clk = 0;
		forever begin
			#5
			clk = ~clk;
		end
	end

	initial begin
		// Initialize Inputs
		opcode = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		// Add stimulus here
		#10
		#2
		reset = 1;
		#1
		reset = 0;
		opcode = 0;
		if (IRWrite == 1 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			PCWrite == 1 && 
			ALUSrcA == 'b00 &&
			ALUSrcB == 'b10 &&
			PCSrc == 'b01 &&
			ALUOp == 'b000 &&
			MemAddr == 'b00)
		begin
			$display("fetch pass");
		end else begin
			$display("fetch fail");
		end
		#10
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			PCWrite == 0 && 
			ALUSrcA == 'b01 &&
			ALUSrcB == 'b01 &&
			SignExt == 1 )
		begin
			$display("decode pass");
		end else begin
			$display("decode fail");
		end
		#10
		if (IRWrite == 0 &&
			ACCWrite == 1 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			PCWrite == 0 && 
			ALUSrcA == 'b10 &&
			ALUSrcB == 'b00 &&
			SignExt == 1 &&
			ALUOp == 'b000 &&
			ACCSrc == 'b00)
		begin
			$display("addi pass");
		end else begin
			$display("addi fail");
		end
		opcode = 8;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 1 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			PCWrite == 0 && 
			MemAddr == 'b01 &&
			MemData == 0
			)
		begin
			$display("sw pass");
		end else begin
			$display("sw fail");
		end
		opcode = 13;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 1 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			PCWrite == 1 && 
			PCSrc == 00 &&
			MemData == 1 &&
			MemAddr == 'b10
			)
		begin
			$display("jal pass");
		end else begin
			$display("jal fail");
		end
		opcode = 143;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 1 &&
			PCWrite == 0 && 
			PCSrc == 'b10 &&
			BranchCond == 00
			)
		begin
			$display("bin pass");
		end else begin
			$display("bin fail");
		end
		opcode = 75;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 1 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			MemAddr == 'b01
			)
		begin
			$display("or1 pass");
		end else begin
			$display("or1 fail");
		end
		#10
		if (IRWrite == 0 &&
			ACCWrite == 1 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			ALUSrcA == 'b10 &&
			ALUSrcB == 'b11 &&
			ACCSrc == 00 &&
			ALUOp == 'b010
			)
		begin
			$display("or2 pass");
		end else begin
			$display("or2 fail");
		end
		opcode = 22;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 1 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			MemAddr == 'b01
			)
		begin
			$display("spc1 pass");
		end else begin
			$display("spc1 fail");
		end
		#10
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 1 &&
			BranchCycle == 0 &&
			ALUSrcA == 'b01 &&
			ALUSrcB == 'b11 &&
			ALUOp == 'b000 &&
			SPSrc == 1
			)
		begin
			$display("spc2 pass");
		end else begin
			$display("spc2 fail");
		end
		opcode = 23;
		#30
		if (IRWrite == 0 &&
			ACCWrite == 0 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			ALUSrcA == 'b10 &&
			ALUSrcB == 'b01 &&
			SignExt == 1
			)
		begin
			$display("lwa1 pass");
		end else begin
			$display("lwa1 fail");
		end
		#10
		if (IRWrite == 0 &&
			ACCWrite == 1 &&
			MemWrite == 0 &&
			MemOutWrite == 0 &&
			OutWrite == 0 &&
			SPWrite == 0 &&
			BranchCycle == 0 &&
			MemAddr == 'b01 &&
			ACCSrc == 'b10
			)
		begin
			$display("lwa2 pass");
		end else begin
			$display("lwa2 fail");
		end
	end
      
endmodule

