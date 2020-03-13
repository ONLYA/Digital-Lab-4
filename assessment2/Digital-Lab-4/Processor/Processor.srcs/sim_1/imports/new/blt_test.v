`timescale 1ns / 1ps
// test used to check load mem into register A works

// -- ROM.txt --
/*
// Program Memory, start from pc=0
00000000
00000000 // lwa 0h00
00000001
00000001 // lwb 0h01
10110110
00000000 // blt 0h00
00000000
00000011 // lwa 0h03
00001000 // ji

*/
////////////////

// -- RAM.txt -- 
/*
01
05
FF
*/
///////////////


module blt_test(
    
);
    reg CLK, RESET;
    wire [7:0] LED_OUT;
    
    Processor_wrapper uut (
        .CLK(CLK),
        .RESET(RESET),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] RAM_DATA, 
               CurrProgCounter,
               CurrRegA;
    
    assign RAM_DATA = uut.BUS_DATA;
    assign CurrRegA = uut.Processor.CurrRegA;
    assign CurrProgCounter = uut.Processor.CurrProgCounter;
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        $display("Starting Simulation!");
        
        RESET = 1;
        #4 RESET = 0;
        #124
        // check correct value
        if (CurrRegA != 8'h01) begin
            $display("Reg A is not loaded with '01'!");
        end
        $display("Ending Simulation!");
        $finish;
    end
endmodule
