`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2018 14:54:17
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: This modules deals with lighting up the seven segmant display
// 
//////////////////////////////////////////////////////////////////////////////////


module Wrapper_SevenSeg(
    input CLK,
    input RESET,
    input ENABLE,
    input [3:0] digit0,
    input [3:0] digit1,
    input [3:0] digit2,
    input [3:0] digit3,
    output [3:0] SEG_SELECT_OUT,
    output [7:0] HEX_OUT
);
    wire [1:0] counter_2_bit_out;
    
    wire [4:0] MuxOut;
    
    wire [3:0] Counter_2_OUT, 
               Counter_3_OUT, 
               Counter_4_OUT,
               Counter_5_OUT; 
 
    wire Bit17TrigOut, 
        counter_1_trig, 
        counter_2_trig, 
        counter_3_trig, 
        counter_4_trig,
        counter_5_trig; 
    
    // 17 bit counter
    Generic_counter # (
        .COUNTER_WIDTH(17),
        .COUNTER_MAX(9999)
    )
    Bit17Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(ENABLE),
        .TRIG_OUT(Bit17TrigOut)
    );
    
    // 4 bit counter that ensures all 7 seg displays have had a chnage to light up 
    Generic_counter # (
            .COUNTER_WIDTH(5),
            .COUNTER_MAX(9)
    )
    counter_1 (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Bit17TrigOut & ENABLE),
        .TRIG_OUT(counter_1_trig)
    );
    
    // counter 2 
    Generic_counter # (
           .COUNTER_WIDTH(5),
           .COUNTER_MAX(9)
    )
    counter_2 (
       .CLK(CLK),
       .RESET(RESET),
       .ENABLE(counter_1_trig),
       .TRIG_OUT(counter_2_trig),
       .COUNT(Counter_2_OUT)
    );
    
    // counter 3 
    Generic_counter # (
           .COUNTER_WIDTH(5),
           .COUNTER_MAX(9)
    )
    counter_3 (
       .CLK(CLK),
       .RESET(RESET),
       .ENABLE(counter_2_trig),
       .TRIG_OUT(counter_3_trig),
       .COUNT(Counter_3_OUT)
    );
    
    // counter 4 
    Generic_counter # (
          .COUNTER_WIDTH(5),
          .COUNTER_MAX(9)
    )
    counter_4 (
      .CLK(CLK),
      .RESET(RESET),
      .ENABLE(counter_3_trig),
      .TRIG_OUT(counter_4_trig),
      .COUNT(Counter_4_OUT)
    );
    
    // counter 5 
    Generic_counter # (
          .COUNTER_WIDTH(5),
          .COUNTER_MAX(9)
    )
    counter_5 (
      .CLK(CLK),
      .RESET(RESET),
      .ENABLE(counter_4_trig),
      .TRIG_OUT(counter_5_trig),
      .COUNT(Counter_5_OUT)
    );
    
    
    
    // 2 bit counter that selects which display to light up
    Generic_counter # (
                .COUNTER_WIDTH(2),
                .COUNTER_MAX(4)
    )
    counter_2_bit(
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Bit17TrigOut),
        .COUNT(counter_2_bit_out)
    );
    
    // the mux
    Mux_4_bit mux(
        .IN1({1'b0,digit3}), 
        .IN2({1'b0,digit2}), 
        .IN3({1'b0,digit1}),
        .IN4({1'b0,digit0}),
        .SEL(counter_2_bit_out),
        .OUT(MuxOut)
    );
    
    // seven segment display
    DecodingTheWorld_case seg_display(
        .SEG_SELECT_IN(counter_2_bit_out),
        .BIN_IN(MuxOut[3:0]),
        .DOT_IN(MuxOut[4]),
        .SEG_SELECT_OUT(SEG_SELECT_OUT),
        .HEX_OUT(HEX_OUT)
    );

endmodule
