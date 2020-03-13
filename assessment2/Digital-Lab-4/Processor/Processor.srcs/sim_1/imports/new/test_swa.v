`timescale 1ns / 1ps
// test used to check load mem into register A works

// -- ROM.txt --
/*
// Program Memory, start from pc=0
00000000
00000000 // swa 0h00
*/
////////////////

// -- RAM.txt -- 
/*
CD
*/
///////////////


module test_swa(
    
);
    reg CLK, RESET;
    wire [7:0] LED_OUT;
    
    Processor_wrapper uut (
        .CLK(CLK),
        .RESET(RESET),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] CurrProgCounter, ROM_DATA,
               CurrRegA, CurrRegB, CurrProgCounterOffset, CurrBusAddr;
    
//    assign CurrProgCounter = uut.Processor.CurrProgCounter;
//    assign ROM_DATA = uut.ROM_DATA;
    assign CurrRegA = uut.Processor.CurrRegA;
//    assign CurrRegB = uut.Processor.CurrRegB;
//    assign CurrProgCounterOffset = uut.Processor.CurrProgCounterOffset;
//    assign CurrBusAddr = uut.Processor.CurrBusAddr;
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        $display("Starting Simulation!");
        
        RESET = 1;
        #4 RESET = 0;
        #999
        // check correct value
        if (CurrRegA != 8'hCD) begin
            $display("Register A is not loaded with 'CD'!");
        end
        $display("Ending Simulation!");
        $finish;
    end
endmodule

