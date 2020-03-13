`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2018 16:07:27
// Design Name: 
// Module Name: ColourChanging
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


module ColourChanging(
    input CLK,
    input RESET,
    input ENABLE,
    output colour_changing
    );  
      
     // define registers
    reg [11:0] colour_changing_r,colour_changing_nxt;
    
    // define wires
    wire time_change,
    Bit17TrigOut, 
    counter_1_trig,
    counter_2_trig,
    counter_3_trig,
    counter_4_trig;
    
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
       .ENABLE(Enable),
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
         .COUNTER_WIDTH(12),
         .COUNTER_MAX(4095)//4095
    )
    counter_4 (
     .CLK(CLK),
     .RESET(RESET),
     .ENABLE(counter_3_trig),
     .TRIG_OUT(counter_4_trig),
     .COUNT(time_change)
    );
    
    //this always block deals with updating the registers 
    always@(posedge CLK or posedge RESET)
    begin
       if (RESET == 1'b1)
           colour_changing_r <= 4'd0;
       else
           colour_changing_r <= colour_changing_nxt;
    end
    
    // this always block deals with updating the colour to be shown 
    always@(*)
    begin
       colour_changing_nxt = time_change;
    end
    
    assign colour_changing = colour_changing_r;

endmodule
