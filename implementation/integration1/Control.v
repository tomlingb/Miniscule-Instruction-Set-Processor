`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:57 02/03/2020 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [7:0] opcode,
    input clk,
	 input reset,
	 output reg MemOutWrite,
	 output reg MemWrite,
	 output reg ACCWrite,
	 output reg SPWrite,
	 output reg SignExt,
	 output reg [1:0] ALUSrcA,
	 output reg [1:0] ALUSrcB,
	 output reg [1:0] PCSrc,
	 output reg PCWrite,
	 output reg [2:0] ALUOp,
	 output reg IRWrite,
	 output reg [1:0] ACCSrc,
	 output reg SPSrc,
	 output reg [1:0] BranchCond,
	 output reg BranchCycle,
	 output reg [1:0] MemAddr,
	 output reg MemData,
	 output reg OutWrite
    );
	 
	 
	 
	 parameter addi = 0;
	 parameter ori = 1;
	 parameter andi = 2;
	 parameter lui = 3;
	 parameter sli = 4;
	 parameter sri = 5;
	 parameter srai = 6;
	 parameter lw = 7;
	 parameter sw = 8;
	 parameter add = 9;
	 parameter sub = 10;
	 parameter Or = 11;
	 parameter And = 12;
	 parameter jal = 13;
	 parameter j = 14;
	 parameter bin = 15;
	 parameter bifz = 16;
	 parameter binz = 17;
	 parameter bip = 18;
	 parameter in = 19;
	 parameter out = 20;
	 parameter spi = 21;
	 parameter spc1 = 22;
	 parameter lwa1 = 23;
	 parameter Decode = 24;
	 parameter Fetch = 25;
	 parameter AddOrSubAnd = 26;
	 parameter spc2 = 27;
	 
	 reg [4:0] currentState;
	 reg [4:0] nextState;
	 
	 always @(posedge clk, posedge reset)
	 begin
        if (reset)
          currentState <= Fetch;
        else 
          currentState <= nextState;
     end
	  
	 always @ (currentState)
	 begin
	 MemOutWrite <= 'b0;
	 MemWrite <= 'b0;
	 ACCWrite <= 'b0;
	 IRWrite <= 'b0;
	 SPWrite <= 'b0;
	 PCWrite <= 'b0;
	 BranchCycle <= 'b0;
	 OutWrite <= 'b0;
	 ALUSrcA <= 0;
	 ALUSrcB <= 0;
	 ALUOp <=0;
	 PCSrc <= 0;
	 MemAddr<= 0;
	 MemData <= 0;
			SignExt <= 0;
			ACCSrc <= 0;
		SPSrc <= 0;
		BranchCond <= 0;
	 
		case(currentState)
		Fetch:
		begin
			PCWrite <= 'b1;
			ALUSrcA <= 'b00;
			ALUSrcB <= 'b10;
			ALUOp <= 'b000;
			PCSrc <= 'b01;
			IRWrite <= 'b1;
			MemAddr <= 'b00;
//			MemData <= 0;
//			SignExt <= 0;
//			ACCSrc <= 0;
//			SPSrc <= 0;
	//		BranchCond <= 0;
		end
		Decode:
		begin
			ALUSrcA <= 'b01;
			ALUSrcB <= 'b01;
			SignExt <= 'b1;
		end
		addi:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b1;
			ALUOp <= 'b000;
		end
		ori:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b010;
		end
		andi:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b011;
		end
		lui:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b111;//fix this later!!!
		end
		sli:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b100;
		end
		sri:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b101;
		end
		srai:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b00;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b00;
			SignExt <= 'b0;
			ALUOp <= 'b110;
		end
		lw:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b10;
			MemAddr <= 'b01;
		end
		sw:
		begin
			MemAddr <= 'b01;
			MemData <= 'b0;
			MemWrite <= 'b1;
		end
		AddOrSubAnd:
		begin
			MemOutWrite <= 'b1;
			MemAddr <= 'b01;
		end
		add:
		begin
			ACCWrite <= 'b1;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b11;
			ACCSrc <= 'b0;
			ALUOp <= 'b000;
		end
		sub:
		begin
			ACCWrite <= 'b1;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b11;
			ACCSrc <= 'b0;
			ALUOp <= 'b001;
		end
		Or:
		begin
			ACCWrite <= 'b1;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b11;
			ACCSrc <= 'b0;
			ALUOp <= 'b010;
		end
		And:
		begin
			ACCWrite <= 'b1;
			ALUSrcA <= 'b10;
			ALUSrcB <= 'b11;
			ACCSrc <= 'b0;
			ALUOp <= 'b011;
		end
		jal:
		begin
			PCWrite <= 'b1;
			PCSrc <= 'b00;
			MemData <= 'b1;
			MemWrite <= 'b1;
			MemAddr <= 'b10;
		end
		j:
		begin
			PCWrite <= 'b1;
			PCSrc <= 'b00;
		end
		bin:
		begin
			BranchCycle <= 'b1;
			PCSrc <= 'b10;
			BranchCond <= 'b00;
		end
		bifz:
		begin
			BranchCycle <= 'b1;
			PCSrc <= 'b10;
			BranchCond <= 'b01;
		end
		binz:
		begin
			BranchCycle <= 'b1;
			PCSrc <= 'b10;
			BranchCond <= 'b10;
		end
		bip:
		begin
			BranchCycle <= 'b1;
			PCSrc <= 'b10;
			BranchCond <= 'b11;
		end
		in:
		begin
			ACCWrite <= 'b1;
			ACCSrc <= 'b01;
		end
		out:
		begin
			OutWrite <= 'b1;
		end
		spi:
		begin
			SPWrite <= 'b1;
			SPSrc <= 'b0;
		end
		spc1:
		begin
			MemOutWrite <= 'b1;
			MemAddr <= 'b01;
		end
		spc2:
		begin
			SPSrc <= 'b1;
			ALUSrcA <= 'b01;
			ALUSrcB <= 'b11;
			SPWrite <= 'b1;
		end
		lwa1:
		begin
			ALUSrcA <= 'b01;
			ALUSrcB <= 'b01;
			SignExt <= 1;
		end
		default:
		begin
			
		end
		endcase
	end
	 
	  
	 always @ (currentState, nextState, opcode)
	 begin 
		case(currentState)
		Fetch:
			begin
				
				nextState <= Decode;
				
			end
		Decode:
			begin
			if(opcode[6])
				begin
					nextState <= AddOrSubAnd;
				end else begin
					nextState <= opcode[4:0];
				end
			end
		AddOrSubAnd:
			begin
				nextState <= opcode[4:0];
			end
		spc1:
			begin
				nextState <= spc2;
			end
		lwa1:
			begin
				nextState <= lw;
			end
		default:
			begin
				nextState <= Fetch;
			end
		endcase
	end
	


endmodule
