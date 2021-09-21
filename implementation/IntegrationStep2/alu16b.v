`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:14 02/02/2020 
// Design Name: 
// Module Name:    alu16b 
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
//////////////////////////////////////////////////////////////////////////////////`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:57 01/21/2019 
// Design Name: 
// Module Name:    alu16b 
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
module alu16b(
    input [15:0] a,
    input [15:0] b,
    input [2:0] op,
    output reg [15:0] r,
    output zero,
    output ovfl
    );
	 
	wire [16:0]tmp;
	assign zero = ~(|r);
	assign tmp = {1'b0, a} + {1'b0, b};
	assign ovfl = tmp[16];

	always @(a, b, op) 
	begin
		case (op)
			3'b000: r <= a + b;
			3'b001: r <= a - b;
			3'b010: r <= a | b;
			3'b011: r <= a & b;
			3'b100: r <= a << b;
			3'b101: r <= a >> b;
			3'b110: r <= {a[15], 15'b000000000000000} | {1'b0, (a[14:0] >> b)};
		default: r <= a;
		endcase
	end

endmodule
