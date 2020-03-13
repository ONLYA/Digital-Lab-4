`timescale 1ns / 1ps
// This module is the bus connection to the seven seg display
//
module SEVEN_SEG_BUS_INTERFACE(
    //standard signals
    input           CLK,
    //BUS signals
    inout   [7:0]   BUS_DATA,
    input   [7:0]   BUS_ADDR,
    input           BUS_WE,
    // outputs 
   output [3:0] SEG_SELECT_OUT,
   output [7:0] HEX_OUT
);

    parameter base_address = 8'hD0;
    parameter seven_seg_addr_width = 2; // 128 x 8-bits memory
    
    
    
    // -- Seven Seg Module --
    wire [3:0]  digit0,
                digit1,
                digit2,
                digit3;
                
    wire [3:0] seg_select_out;
    wire [7:0] hex_out;
    Wrapper_SevenSeg seven_seg(
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(1'b1),      // always want to show seven seg
        .digit0(digit0),
        .digit1(digit1),
        .digit2(digit2),
        .digit3(digit3),
        .SEG_SELECT_OUT(SEG_SELECT_OUT),
        .HEX_OUT(HEX_OUT)
    );
    // ----------------------
        
    
    //Tristate
    wire [7:0] BufferedBusData;
    
    reg [7:0] Out;
    assign digit0 = SevenSegMemory[0][3:0];
    assign digit1 = SevenSegMemory[0][7:4];
    assign digit2 = SevenSegMemory[1][3:0];
    assign digit3 = SevenSegMemory[1][7:4];
    
    reg SevenSegBusWE;
    
    //Only place data on the bus if the processor is NOT writing, and it is addressing this memory
    assign BUS_DATA = (SevenSegBusWE) ? Out : 8'hZZ; 
    assign BufferedBusData = BUS_DATA;
    
    //Memory
    reg [7:0] SevenSegMemory [seven_seg_addr_width - 1:0];
    
    //  Initialise  the  memory  for  data  preloading,  initialising  variables,  and  declaring  constants
    initial $readmemh("Seven_Seg.txt", SevenSegMemory); // Hex
    
    //single port ram
    always@(posedge CLK) 
    begin
        // check that the data bus address is pointing to us
        if((BUS_ADDR >= base_address) && (BUS_ADDR < (base_address + seven_seg_addr_width) )) 
        begin
        // if the cpu wants to store something into our Seven Seg Memory
            if(BUS_WE)
            begin
                SevenSegMemory[BUS_ADDR[0]] <= BufferedBusData;
                SevenSegBusWE <= 1'b0;
            end else
                SevenSegBusWE <= 1'b1;
        end else
            SevenSegBusWE <= 1'b0;
            
        Out <= seven_seg_addr_width[BUS_ADDR[0]];
    end

endmodule
