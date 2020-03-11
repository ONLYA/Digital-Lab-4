`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2018 15:47:42
// Design Name: 
// Module Name: flashing
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


module flashing(
    input CLK,
    input RESET,
    input ENABLE,
    output one_second_counter
    );
 
    // define registers
    reg [3:0] one_second_counter_r,one_second_counter_nxt;
    
    // define wires
    wire time_change;
 
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
              .COUNTER_WIDTH(4),
              .COUNTER_MAX(9)//4095
        )
        counter_4 (
          .CLK(CLK),
          .RESET(RESET),
          .ENABLE(counter_3_trig),
          .TRIG_OUT(counter_4_trig),
          .COUNT(time_change)
        );
     
     always@(posedge CLK or posedge RESET)
     begin
        if (RESET == 1'b1)
            one_second_counter_r <= 4'd0;
        else
            one_second_counter_r <= one_second_counter_nxt;
     end
     
     always@(*)
     begin
        one_second_counter_nxt = time_change;
     end
     
    assign one_second_counter = one_second_counter_r;
    
endmodule
