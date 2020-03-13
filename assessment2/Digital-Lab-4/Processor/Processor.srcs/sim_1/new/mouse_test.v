`timescale 1ns / 1ps

// -- ROM.txt --
/*
// Program Memory, start from pc=0
00001000 // ji
00000000
00000000 // lwa 0h00
00000010
11000000 // swa 0hC0
00001000 // ji
.
.
.
00000001    // line 255
*/
////////////////

// -- RAM.txt -- 
/*
FF
*/
///////////////

module mouse_test(

    );
    
    reg CLK, RESET;
    reg mouse_interrupt;
    wire [7:0] LED_OUT;
    
    Processor_wrapper uut (
        .CLK(CLK),
        .RESET(RESET),
//        .mouse_interrupt(mouse_interrupt),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] CurrProgCounter, ROM_DATA,
               CurrRegA, CurrRegB, BUS_ADDR;
    
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        RESET = 1;
        mouse_interrupt = 0;
        #4 RESET = 0;
        # 500
        mouse_interrupt = 1;
        # 4
        mouse_interrupt = 0;
        #1000
        $finish;
    end
endmodule
