`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:10 01/29/2020
// Design Name:   DistributedMemory
// Module Name:   C:/git/1920b-csse232-Blue/implementation/memory/DistributedMemorytb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DistributedMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DistributedMemorytb;

	// Inputs
	reg [9:0] a;
	reg [15:0] d;
	reg clk;
	reg we;

	// Outputs
	wire [15:0] spo;

	// Instantiate the Unit Under Test (UUT)
	DistributedMemory uut (
		.a(a), 
		.d(d), 
		.clk(clk), 
		.we(we), 
		.spo(spo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		a = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		// Add stimulus here

		d = 'hFFFF;
		a = 1;
		#50
		clk = 1;
		#100
		clk = 0;
		
		#50
		if (d == 'h1111) begin
				$display("1 Good");
		end else begin
				$display("1 Fail");
		end
		we = 1;
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 'hFFFF) begin
				$display("2 Good");
		end else begin
				$display("2 Fail");
		end
		we = 0;
		a = 3;
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 'h2222) begin
				$display("3 Good");
		end else begin
				$display("3 Fail");
		end
		we = 0;
		a = 11;
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 'hefab) begin
				$display("4 Good");
		end else begin
				$display("4 Fail");
		end
		we = 0;
		a = 1;
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 'hffff) begin
				$display("5 Good");
		end else begin
				$display("5 Fail");
		end
		we = 0;
		a = 0;
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 0) begin
				$display("6 Good");
		end else begin
				$display("6 Fail");
		end
		#50
		clk = 1;
		#100
		clk = 0;
		#50
		if (d == 0) begin
				$display("7 Good");
		end else begin
				$display("7 Fail");
		end

	end
      
endmodule

