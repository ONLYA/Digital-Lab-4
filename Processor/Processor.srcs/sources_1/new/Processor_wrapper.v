`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2020 20:20:48
// Design Name: 
// Module Name: Processor_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// Need to think about how to compose the VGA with Bus
module Processor_wrapper(
    input           CLK,
    input           RESET,
    
//    // BUS signals
//    output  [7:0]   BUS_ADDR,
//    output  BUS_WE
    output  [7:0]   LED_OUT
    );
    // BUS
    wire [7:0]   BUS_DATA;
    wire [7:0]   BUS_ADDR;
    wire         BUS_WE;
    // ROM
    wire [7:0]   ROM_ADDR;
    wire [7:0]   ROM_DATA;
    
    // Interrupt
    wire [1:0]   BUS_INTERRUPTS_RAISE;
    wire [1:0]   BUS_INTERRUPTS_ACK;
    
    ROM ROM (
        .CLK(CLK),
        .DATA(ROM_DATA),
        .ADDR(ROM_ADDR)
    );
    
    RAM RAM (
        .CLK(CLK),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE)
    );
    
    Timer Timer (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .BUS_INTERRUPT_RAISE(BUS_INTERRUPTS_RAISE[0]),   // Interrupt Request A
        .BUS_INTERRUPT_ACK(BUS_INTERRUPTS_ACK[0])
    );
    
    LEDs LEDs (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .LED_OUT(LED_OUT)
    );
    
    Processor Processor (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .ROM_ADDRESS(ROM_ADDR),
        .ROM_DATA(ROM_DATA),
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK)
    );
endmodule
