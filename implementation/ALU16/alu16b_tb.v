`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:11:19 02/02/2020
// Design Name:   alu16b
// Module Name:   C:/RuoqingOuyang/CSSE/CSSE232/1920b-csse232-Blue/implementation/ALU16/alu16b_tb.v
// Project Name:  ALU16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu16b_tb;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [2:0] op;

	// Outputs
	wire [15:0] r;
	wire ovfl;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu16b uut (
		.a(a), 
		.b(b), 
		.r(r), 
		.ovfl(ovfl), 
		.zero(zero),
		.op(op)
	);

	initial begin
		op = 3'b000;
		for(a = 0; a <= 5'b11111; a = a + 1)
		begin
			for(b = 0; b <= 5'b11111; b = b + 1)
			begin
				#20;
				if(r != a + b) $display("fail");
				
			end
		end
		#100
		a = 16'b1111111111111110;
		for(b = 0; b <= 3; b = b + 1)
		begin
			#20;
			if(r != a + b) $display("fail");
				$write("overflow: %b \n", ovfl);

		end
		#100;
		$display("previous tests past");
		// Initialize Inputs
		a = 0;
		b = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a= 10;
		b= 2;
		op = 0;
		#10;
		$display("ADD ");
		if (r == 12)  $display("PASS! ");
		else	$display("FAIL! ");

		// Add stimulus here
		#100;
		a= 10;
		b= 2;
		op = 1;
		#10;
		$display("SUB ");
		if (r == 8)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 1;
		b= 1;
		op = 3;
		#10;
		$display("OR ");
		if (r == 1)  $display("PASS! ");
		else	$display("FAIL! ");

		#100;
		a= 2;
		b= 1;
		op = 2;
		#10;
		$display("AND ");
		if (r == 3)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 4;
		b= 1;
		op = 4;
		#10;
		$display("Shift Left ");
		if (r == 8)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 16'b1111111111111111;
		b= 5;
		op = 4;
		#10;
		$display("Shift Left 5 bit ");
		if (r == 16'b1111111111100000)  $display("PASS! ");
		else	$display("FAIL! ");

		#100;
		a= 2;
		b= 1;
		op = 5;
		#10;
		$display("Shift Right ");
		if (r == 1)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 16'b1000000000111111;
		b= 2;
		op = 6;
		#10;
		$display("Shift Right Arithmetic");
		if (r == 16'b1000000000001111)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 16'b1111111111111111;
		b= 1;
		op = 0;
		#10;
		$display("Overflow ");
		if (r == 16'b0000000000000000 && ovfl == 1)  $display("PASS! ");
		else	$display("FAIL! ");
		
		#100;
		a= 1;
		b= 1;
		op = 1;
		#10;
		$display("Zero");
		if (r == 0 && zero == 1)  $display("PASS! ");
		else	$display("FAIL! ");
	end
      
endmodule

