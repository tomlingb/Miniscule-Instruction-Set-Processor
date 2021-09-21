////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 12.2
//  \   \         Application : ISE
//  /   /         Filename : io_block.tfw
// /___/   /\     Timestamp : Thu Aug 19 19:46:00 2010
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: io_block_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

module io_block_tb_0;
    reg CLK = 1'b0;
    reg RESET = 1'b0;
    reg [3:0] switch = 4'b0000;
    reg writeOutput = 1'b0;
    wire [3:0] lcd_D;
    wire lcd_E;
    wire lcd_rs;
    wire lcd_rw;
    wire led0;
    wire led1;
    wire led2;
    wire led3;
    wire sf_ce;
    wire sf_oe;
    wire sf_we;
    wire V;

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

    io_block UUT (
        .CLK(CLK),
        .RESET(RESET),
        .switch(switch),
        .writeOutput(writeOutput),
        .lcd_D(lcd_D),
        .lcd_E(lcd_E),
        .lcd_rs(lcd_rs),
        .lcd_rw(lcd_rw),
        .led0(led0),
        .led1(led1),
        .led2(led2),
        .led3(led3),
        .sf_ce(sf_ce),
        .sf_oe(sf_oe),
        .sf_we(sf_we),
        .V(V));

    initial begin
        #99;
        RESET = 1'b1;
        #20;
        RESET = 1'b0;
        writeOutput = 1'b1;
        switch = 4'b0100;
    end

endmodule

