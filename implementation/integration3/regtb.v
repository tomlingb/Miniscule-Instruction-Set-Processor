`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:08:44 02/11/2020
// Design Name:   Register16
// Module Name:   C:/git/1920b-csse232-Blue/implementation/integration3/regtb.v
// Project Name:  integration3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regtb;

	// Inputs
	reg [15:0] d;
	reg reset;
	reg [15:0] initialdata;
	reg CLK;
	reg RegWrite;

	// Outputs
	wire [15:0] r;

	// Instantiate the Unit Under Test (UUT)
	Register16 uut (
		.d(d), 
		.r(r), 
		.reset(reset), 
		.initialdata(initialdata), 
		.CLK(CLK), 
		.RegWrite(RegWrite)
	);

initial begin
 CLK = 0;
 forever begin
	#5
	CLK = ~CLK;
	end
	end

	initial begin
		// Initialize Inputs
		d = 0;
		reset = 1;
		initialdata = 10;
		
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#2
		if(r == 10)
		begin
		$display("Pass reset");
		end
		else begin
		$display("fail reset");
		end
		d = 1;
		RegWrite = 1;
		#10
		if(r == 10)
		begin
		$display("Pass reset");
		end
		else begin
		$display("fail reset");
		end
		reset = 0;
		#10
		if(r == 1)
		begin
		$display("write pass");
		end
		else begin
		$display("write fail");
		end

	end
      
endmodule

