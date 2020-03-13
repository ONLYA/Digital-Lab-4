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
// /
//////////////////////////////////////////////////////////////////////////////////

// Need to think about how to compose the VGA with Bus
module Processor_wrapper(
    input           CLK,
    input           RESET,
    // debug inputs
//    input mouse_interrupt,
    //IO - Mouse side
    inout CLK_MOUSE,
    inout DATA_MOUSE,
//    // 7 SEG
    output [3:0] SEG_SELECT_OUT,
    output [7:0] HEX_OUT,
    // outputs
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
    wire    BUS_INTERRUPTS_RAISE_MOUSE,
            BUS_INTERRUPTS_RAISE_TIMER;
    
    wire    BUS_INTERRUPTS_ACK_TIMER,
            BUS_INTERRUPTS_ACK_MOUSE;
            
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
        .BUS_INTERRUPT_RAISE(BUS_INTERRUPTS_RAISE_TIMER),   // Interrupt Request A
        .BUS_INTERRUPT_ACK(BUS_INTERRUPTS_ACK_TIMER)
    );
    
    LEDs LEDs (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] PROCESSOR_STATE;
    
    Processor Processor (
        .CLK(CLK),
        .RESET(RESET),
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        .ROM_ADDRESS(ROM_ADDR),
        .ROM_DATA(ROM_DATA),
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK),
        .STATE(PROCESSOR_STATE)
    );
    
    // -- Mouse Interface --
    MouseBusInterface mouse_interface(
        //Standard Inputs
        .RESET(RESET),
        .CLK(CLK),
        //IO - Mouse side
        .CLK_MOUSE(CLK_MOUSE),
        .DATA_MOUSE(DATA_MOUSE),
        // bus 
        .BUS_DATA(BUS_DATA),       
        .BUS_ADDR(BUS_ADDR),       
        .BUS_WE(BUS_WE),               
        .INTERRUPT_ACK(BUS_INTERRUPTS_ACK_MOUSE),        // acknowledgment of interrupt being serviced
        // outpus
        .INTERRUPT(BUS_INTERRUPTS_RAISE_MOUSE)            // interrupt when the mouse is moved
        );
    // ---------------------
    
    // -- Seven Seg Display --
    SEVEN_SEG_BUS_INTERFACE seven_seg(
        //standard signals
        .CLK(CLK),
        //BUS signals
        .BUS_DATA(BUS_DATA),
        .BUS_ADDR(BUS_ADDR),
        .BUS_WE(BUS_WE),
        // outputs 
       .SEG_SELECT_OUT(SEG_SELECT_OUT),
       .HEX_OUT(HEX_OUT)
    );
    // -----------------------
    
    // -- ILA --

    // ---------
    
    assign BUS_INTERRUPTS_RAISE = {1'b0, (BUS_INTERRUPTS_RAISE_MOUSE)};
    assign BUS_INTERRUPTS_ACK = {BUS_INTERRUPTS_ACK_TIMER, BUS_INTERRUPTS_ACK_MOUSE};
    
endmodule
