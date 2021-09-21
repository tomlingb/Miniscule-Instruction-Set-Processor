`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:16 02/05/2020 
// Design Name: 
// Module Name:    BLU 
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
module BLU(
    input [15:0] Acc,
    input BranchCycle,
    input [1:0] BranchCond,
    output reg DoBranch
    );

	always @ (Acc or BranchCycle or BranchCond) begin
		if (BranchCycle == 1) begin
			case(BranchCond)
				2'b00 :	begin //bin
								if (Acc[15] == 1) begin
									DoBranch <= 1;
								end else begin
									DoBranch <= 0;
								end
							end
				2'b01 :  begin //bifz
								if (Acc == 0) begin
									DoBranch <= 1;
								end else begin
									DoBranch <= 0;
								end
							end
				2'b10 :	begin //binz
								if(Acc == 0) begin
									DoBranch <= 0;
								end else begin
									DoBranch <= 1;
								end
							end
				2'b11 : 	begin //bip
								if(Acc[15] == 0 && Acc > 0) begin
									DoBranch <= 1;
								end else begin
									DoBranch <= 0;
								end
							end
			endcase
		end else begin
			DoBranch <= 0;
		end
	end

endmodule
