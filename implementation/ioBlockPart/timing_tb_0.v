////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2003 Xilinx, Inc.
// All Right Reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 12.2
//  \   \         Application : ISE
//  /   /         Filename : timing.tfw
// /___/   /\     Timestamp : Sat Aug 21 09:02:35 2010
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: 
//Design Name: timing_tb_0
//Device: Xilinx
//
`timescale 1ns/1ps

module timing_tb_0;
    reg CLK = 1'b0;
    reg DoCount = 1'b0;
    reg ResetCount = 1'b0;
    wire [19:0] CNT;
    wire Wait1us;
    wire Wait2ms;
    wire Wait4ms;
    wire Wait15ms;
    wire Wait40ns;
    wire Wait40us;
    wire Wait100us;
    wire Wait240ns;

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

    timing UUT (
        .CLK(CLK),
        .DoCount(DoCount),
        .ResetCount(ResetCount),
        .CNT(CNT),
        .Wait1us(Wait1us),
        .Wait2ms(Wait2ms),
        .Wait4ms(Wait4ms),
        .Wait15ms(Wait15ms),
        .Wait40ns(Wait40ns),
        .Wait40us(Wait40us),
        .Wait100us(Wait100us),
        .Wait240ns(Wait240ns));

    initial begin
        // -------------  Current Time:  99ns
        #99;
        ResetCount = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  119ns
        #20;
        DoCount = 1'b1;
        ResetCount = 1'b0;
        // -------------------------------------
    end

endmodule

