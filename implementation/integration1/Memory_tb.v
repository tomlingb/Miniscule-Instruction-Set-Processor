`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:55:08 02/03/2020
// Design Name:   Memory
// Module Name:   C:/git/1920b-csse232-Blue/implementation/integration1/Memory_tb.v
// Project Name:  integration1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_tb;

	// Inputs
	reg [15:0] din;
	reg we;
	reg [15:0] addr;
	reg clk;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	Memory uut (
		.din(din), 
		.we(we), 
		.addr(addr), 
		.clk(clk), 
		.dout(dout)
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
		din = 0;
		we = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#101;
		din = 'h1234;
		we = 1;
		#10
		addr = 10;
		din = 'h4321;
		#10
		addr = 1022;
		din = 'habcd;
		#10
		addr = 0;
		we = 0;
		#10
		if (dout == 'h1234) begin
			$display("pass 1");
		end else begin
			$display("fail 1");
		end
		#10
		if (dout == 'h1234) begin
			$display("pass 2");
		end else begin
			$display("fail 2");
		end
		addr = 10;
		#10
		if (dout == 'h4321) begin
			$display("pass 3");
		end else begin
			$display("fail 3");
		end
		addr = 1022;
		#10
		if (dout == 'habcd) begin
			$display("pass 4");
		end else begin
			$display("fail 4");
		end
		
        
		

	end
      
endmodule

