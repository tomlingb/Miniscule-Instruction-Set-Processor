`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:37:44 02/05/2020 
// Design Name: 
// Module Name:    integrateStep1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module integrateStep1(
    input [15:0] PCin,
    input [15:0] SPOut,
    input [15:0] ALUOut,
	 input reset,
	 input [15:0] din,
	 input DoBranch,
    output reg [15:0] DataOut,
    output wire [15:0] IROut,
	 output wire [15:0] PCOut,
	 output wire MemOutWrite,
	 output reg MemWrite,
	 output wire ACCWrite,
	 output wire SPWrite,
	 output wire SignExt,
	 output wire [1:0] ALUSrcA,
	 output wire [1:0] ALUSrcB,
	 output wire [1:0] PCSrc,
	 output reg PCWrite,
	 output wire [2:0] ALUOp,
	 output reg IRWrite,
	 output wire [1:0] ACCSrc,
	 output wire SPSrc,
	 output wire [1:0] BranchCond,
	 output wire BranchCycle,
	 output reg [1:0] MemAddr,
	 output wire MemData,
	 output wire OutWrite,
	 input clk
    );
	 
	 wire [15:0] muxout;
	 wire [15:0] dout;
	 wire WriteEnable;
    wire [1:0] MemAddrIn;
	 wire IRWriteIn;
	 reg PCEnable;
	 wire PCWriteIn;
	 
	 
	 Register16 pc (.in(PCin), .out(PCOut), .CLK(clk), .RegWrite(PCEnable));
	 Mux_4x2 mux (.A(PCOut), .B(ALUOut), .C(SPOut), .D(SPOut), .S(MemAddrIn), .Out(muxout));
	 Memory mem (.din(din), .we(WriteEnable), .clk(clk), .addr(muxout), .dout(dout));
	 Register16 ir (.in(dout), .out(IROut), .CLK(clk), .RegWrite(IRWriteIn));
	 Control control (.opcode(IROut[15:8]), 
		.clk(clk), 
		.reset(reset), 
		.MemOutWrite(MemOutWrite), 
		.MemWrite(WriteEnable), 
		.ACCWrite(ACCWrite), 
		.SPWrite(SPWrite), 
		.SignExt(SignExt), 
		.ALUSrcA(ALUSrcA), 
		.ALUSrcB(ALUSrcB), 
		.PCSrc(PCSrc), 
		.PCWrite(PCWriteIn), 
		.ALUOp(ALUOp), 
		.IRWrite(IRWriteIn), 
		.ACCSrc(ACCSrc), 
		.SPSrc(SPSrc), 
		.BranchCond(BranchCond), 
		.BranchCycle(BranchCycle), 
		.MemAddr(MemAddrIn), 
		.MemData(MemData), 
		.OutWrite(OutWrite)
		);
		
		always @ (dout)
		begin
		 DataOut = dout;
		 end
		 
		always @ (WriteEnable)
		begin
			MemWrite = WriteEnable;
		end
			
		always @ (MemAddrIn)
		begin
			MemAddr = MemAddrIn;
		end
			
		always @ (IRWriteIn)
		begin
			IRWrite = IRWriteIn;
		end
		
		always @ (DoBranch, PCWriteIn)
		begin
			PCEnable = PCWriteIn || DoBranch;
		end
		
		always @ (PCWriteIn)
		begin
			PCWrite = PCWriteIn;
		end


endmodule
