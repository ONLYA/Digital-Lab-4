`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2020 19:20:49
// Design Name: 
// Module Name: LEDs
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


module LEDs(
    input               CLK,
    input               RESET,
    
    inout       [7:0]   BUS_DATA,
    input       [7:0]   BUS_ADDR,
    input               BUS_WE,
    
    output  reg [7:0]   LED_OUT
    );
    parameter [7:0] LEDBaseAddr = 0'hc0;
    
    always@(posedge CLK)
    begin
        if (RESET) LED_OUT <= 0;
        else if ((BUS_ADDR == LEDBaseAddr) && BUS_WE)
            LED_OUT <= BUS_DATA;
    end
endmodule
