`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2018 14:23:09
// Design Name: 
// Module Name: implament_counter
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


module implament_counter(
    input CLK,
    input RESET,
    output Trig,
    output [8:0] Count    
    );
    
    
    // Simple counter 
    Generic_counter # (
        .COUNTER_WIDTH(9),
        .COUNTER_MAX(480)
    )
    SimpleCounter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(1'b1),
        .TRIG_OUT(Trig),
        .COUNT(Count)
    );
    
    
endmodule
