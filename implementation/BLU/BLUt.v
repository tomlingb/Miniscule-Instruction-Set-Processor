`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:02 02/05/2020
// Design Name:   BLU
// Module Name:   C:/Users/tomlingb/Desktop/Xilinx projects/BLU/BLUt.v
// Project Name:  BLU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BLU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BLUt;

	// Inputs
	reg [15:0] Acc;
	reg BranchCycle;
	reg [1:0] BranchCond;
	integer i;
	integer j;

	// Outputs
	wire DoBranch;

	// Instantiate the Unit Under Test (UUT)
	BLU uut (
		.Acc(Acc), 
		.BranchCycle(BranchCycle), 
		.BranchCond(BranchCond), 
		.DoBranch(DoBranch)
	);

	initial begin
		// Initialize Inputs
		Acc = 0;
		BranchCycle = 0;
		BranchCond = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Acc <= -3;
		for(j = 0; j < 2; j = j + 1) begin
			for(i = 0; i < 4; i = i + 1) begin
				BranchCycle <= j;
				BranchCond <= i;
				#10;
				if(BranchCycle == 1) begin
					case(BranchCond)
						2'b00 : 	if (DoBranch == 1) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b01 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b10 : 	if (DoBranch == 1) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b11 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
					endcase
				end
			end
		end
		
		#10;
		
		Acc <= 0;
		for(j = 0; j < 2; j = j + 1) begin
			for(i = 0; i < 4; i = i + 1) begin
				BranchCycle <= j;
				BranchCond <= i;
				#10;
				if(BranchCycle == 1) begin
					case(BranchCond)
						2'b00 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b01 : 	if (DoBranch == 1) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b10 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b11 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
					endcase
				end
			end
		end
		
		#10;
		
		Acc <= 12;
		for(j = 0; j < 2; j = j + 1) begin
			for(i = 0; i < 4; i = i + 1) begin
				BranchCycle <= j;
				BranchCond <= i;
				#10;
				if(BranchCycle == 1) begin
					case(BranchCond)
						2'b00 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b01 : 	if (DoBranch == 0) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b10 : 	if (DoBranch == 1) begin
										$display("pass");
									end else begin
										$display("fail");
									end
						2'b11 : 	if (DoBranch == 1) begin
										$display("pass");
									end else begin
										$display("fail");
									end
					endcase
				end
			end
		end

	end
      
endmodule

