`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:32 02/09/2020
// Design Name:   Mux_4x2
// Module Name:   C:/git/1920b-csse232-Blue/implementation/integration1/muxtb.v
// Project Name:  integration1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_4x2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxtb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] S;

	// Outputs
	wire [15:0] Out;

	// Instantiate the Unit Under Test (UUT)
	Mux_4x2 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.S(S), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 2;
		C = 3;
		D = 4;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		if(Out == 1)
		begin
		$display("pass A");
		end else begin
		$display("fail A");
		end
		S = 1;
		#10
		  if(Out == 2)
		begin
		$display("pass B");
		end else begin
		$display("fail B");
		end
		S = 2;
		#10
		if(Out == 3)
		begin
		$display("pass C");
		end else begin
		$display("fail C");
		end
		S = 3;
		#10
		if(Out == 4)
		begin
		$display("pass D");
		end else begin
		$display("fail D");
		end
		
		
		// Add stimulus here

	end
      
endmodule

