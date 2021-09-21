`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:39 02/02/2020 
// Design Name: 
// Module Name:    ALU1b 
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
module alu1b(
    input [2:0] op,
    input a,
    input b,
    input ci,
	 input less,
    output r,
    output co,
	 output set
    );
	 
	 wire b_i;
	 wire and_o;
	 wire or_o;
	 wire add_o;
	 
	 assign b_i = op[2]? ~b : b;
	 
	 add1b add (
	   .a(a),
		.b(b_i),
		.ci(ci),
		.r(add_o),
		.co(co)
	 );
	 
	 assign and_o = a & b;
	 assign or_o = a | b;
	 assign set = add_o;
	 
	 mux4b mux_out (
    .op(op[1:0]), 
    .add_o(add_o), 
    .and_o(and_o), 
    .or_o(or_o), 
    .less(less), 
    .r(r)
    );
endmodule
