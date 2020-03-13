`timescale 1ns / 1ps
// test used to check load mem into register A works

// -- ROM.txt --
/*
// Program Memory, start from pc=0
00000001
00000000 // lwb 0h00
00000011
00000000 // swb 0h00
00001000 // ji

*/
////////////////

// -- RAM.txt -- 
/*
CD
*/
///////////////


module test_lwb(
    
);
    reg CLK, RESET;
    wire [7:0] LED_OUT;
    
    Processor_wrapper uut (
        .CLK(CLK),
        .RESET(RESET),
        .LED_OUT(LED_OUT)
    );
    
    wire [7:0] RAM_DATA,
               CurrRegA;
    
    assign RAM_DATA = uut.BUS_DATA;
    assign CurrRegA = uut.Processor.CurrRegA;
    
    initial begin
        CLK = 0;
        forever #1 CLK=~CLK;
    end
    
    initial begin
        $display("Starting Simulation!");
        
        RESET = 1;
        #4 RESET = 0;
        #112
        // check correct value
        if (RAM_DATA != 8'hCD) begin
            $display("RAM is not loaded with 'CD'!");
        end
        $display("Ending Simulation!");
        $finish;
    end
endmodule
