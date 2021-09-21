////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 12.2
//  \   \         Application : ISE
//  /   /         Filename : lcd_driver.tfw
// /___/   /\     Timestamp : Thu Aug 19 19:46:10 2010
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: lcd_driver_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

module lcd_driver_tb_0;
    reg CLK = 1'b0;
    reg [15:0] out_D = 16'b0000000000000000;
    reg RESET = 1'b0;
    reg writeOutput = 1'b0;
    wire [3:0] lcd_D;
    wire lcd_E;
    wire lcd_rs;
    wire lcd_rw;
    wire sf_ce;

    parameter PERIOD = 20;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 10;

    initial    // Clock process for CLK
    begin
        #OFFSET;
        forever
        begin
            CLK = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) CLK = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    lcd_driver UUT (
        .CLK(CLK),
        .out_D(out_D),
        .RESET(RESET),
        .writeOutput(writeOutput),
        .lcd_D(lcd_D),
        .lcd_E(lcd_E),
        .lcd_rs(lcd_rs),
        .lcd_rw(lcd_rw),
        .sf_ce(sf_ce));

    initial begin
        // -------------  Current Time:  99ns
        #99;
        RESET = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  119ns
        #20;
        RESET = 1'b0;
        writeOutput = 1'b1;
        out_D = 16'b0001001000110100;
        // -------------------------------------
    end

endmodule

