`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2020 14:56:08
// Design Name: 
// Module Name: wrapper_tb
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


module wrapper_tb(

    );
    
    reg CLK, RESET;
    wire [7:0] LED_OUT;
    
    Processor_wrapper uut (
        .CLK(CLK),
        .RESET(RESET),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] CurrProgCounter, ROM_DATA,
               CurrRegA, CurrRegB;
    
    assign CurrProgCounter = uut.Processor.CurrProgCounter;
    assign ROM_DATA = uut.ROM_DATA;
    assign CurrRegA = uut.Processor.CurrRegA;
    assign CurrRegB = uut.Processor.CurrRegB;
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        RESET = 1;
        #4 RESET = 0;
    end
endmodule
