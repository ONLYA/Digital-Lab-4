`timescale 1ns / 1ps
// test used to check load mem into register A works

// -- ROM.txt --
/*
// Program Memory, start from pc=0
00000000
00000000 // lwa 0h00
00000001
00000001 // lwb 0h01
00000101 // alub add
00001000 // ji
*/
////////////////

// -- RAM.txt -- 
/*
CD
01
*/
///////////////


module test_alub(
    
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
               CurrRegB;
    
    assign RAM_DATA = uut.BUS_DATA;
    assign CurrRegB = uut.Processor.CurrRegB;
    assign CurrProgCounter = uut.Processor.CurrProgCounter;
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        $display("Starting Simulation!");
        
        RESET = 1;
        #4 RESET = 0;
        #140
        // check correct value
        if (CurrRegB != 8'hCE) begin
            $display("Reg B is not loaded with 'CE'!");
        end
        $display("Ending Simulation!");
        $finish;
    end
endmodule
