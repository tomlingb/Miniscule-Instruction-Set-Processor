`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:38:06 01/28/2020
// Design Name:   blockmemory16kx1
// Module Name:   C:/git/1920b-csse232-Blue/implementation/memory/blockmemory16kx1_tb.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blockmemory16kx1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blockmemory16kx1_tb;

	// Inputs
	reg clka;
	reg [0:0] wea;
	reg [9:0] addra;
	reg [15:0] dina;

	// Outputs
	wire [15:0] douta;

	// Instantiate the Unit Under Test (UUT)
	blockmemory16kx1 uut (
		.clka(clka), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		
		// Add stimulus here

		dina = 'hFFFF;
		addra = 1;
		#50
		clka = 1;
		#100
		clka = 0;
		
		#50
		if (douta == 'h1111) begin
				$display("1 Good");
		end else begin
				$display("1 Fail");
		end
		wea = 1;
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 'hFFFF) begin
				$display("2 Good");
		end else begin
				$display("2 Fail");
		end
		wea = 0;
		addra = 3;
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 'h2222) begin
				$display("3 Good");
		end else begin
				$display("3 Fail");
		end
		wea = 0;
		addra = 10;
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 'hefab) begin
				$display("4 Good");
		end else begin
				$display("4 Fail");
		end
		wea = 0;
		addra = 1;
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 'hffff) begin
				$display("5 Good");
		end else begin
				$display("5 Fail");
		end
		wea = 0;
		addra = 0;
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 0) begin
				$display("6 Good");
		end else begin
				$display("6 Fail");
		end
		#50
		clka = 1;
		#100
		clka = 0;
		#50
		if (douta == 0) begin
				$display("7 Good");
		end else begin
				$display("7 Fail");
		end
		
	end
      
endmodule

