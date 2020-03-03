`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2018 14:09:34
// Design Name: 
// Module Name: BGA_Interface
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


module VGA_Interface(
    input CLK,
    input [11:0] COLOUR_IN,
    output [9:0] ADDRH,
    output [8:0] ADDRV,
    output [11:0] COLOUR_OUT,
    output HS,
    output VS, 
    //sim purposes
    output [9:0] HS_Value,
    output [9:0] VS_Value,
    input RESET
);

    // defining registers
    reg HS_r,HS_nxt,
        VS_r,VS_nxt;
    
    reg [9:0] Address_Horizontal_r, Address_Horizontal_nxt;
    reg [8:0] Address_Vertical_r, Address_Vertical_nxt;
    reg [11:0] COLOUR_OUT_r, COLOUR_OUT_nxt;
       
    // Time is vertical line
    parameter VertTimeToPulseWidthEnd = 10'd2;
    parameter VertTimeToBackPorchEnd = 10'd31;
    parameter VertTimeToDisplayTimeEnd = 10'd511;
    parameter VertTimeToFrontPorchEnd = 10'd521;
    
    // Time is Front Horizontal
    parameter HorzTimeToPulseWidthEnd = 10'd96;
    parameter HorzTimeToBackPorchEnd = 10'd144;
    parameter HorzTimeToDisplayTimeEnd = 10'd784;
    parameter HorzTimeToFrontPorchEnd = 10'd800;
        
    // define wires for output of counters
    wire [9:0] HS_VALUE, VS_VALUE, Horizontal_address;
    wire [8:0] Vertical_address;
    wire RESET = 1'b0;
    
    // connecting modules for counters
    Synch synch_counters (
            .CLK(CLK),
            .RESET(RESET),
            .HS_OUT(HS_OUT),  // DONT THINK I'LL NEED THIS
            .VS_OUT(VS_OUT), // DONT THINK I'LL NEED THIS
            .HS_VALUE(HS_VALUE),
            .VS_VALUE(VS_VALUE),
            .Horizontal_address(Horizontal_address),
            .Vertical_address(Vertical_address)  
    );

    // this sequential sensitivity list deals with the registers and their assignments
    always@(posedge CLK) begin
        HS_r <= HS_nxt;
        VS_r <= VS_nxt;
        Address_Horizontal_r <= Address_Horizontal_nxt;
        Address_Vertical_r <= Address_Vertical_nxt;
        COLOUR_OUT_r <= COLOUR_OUT_nxt; 
    end
    
    
    // this block determines the signals of HS and VS
    always@(*) begin       
        // code to define if HS is logic 1 through if its counter is bigger than HorzTimeToPulseWidthEnd
        if (HS_VALUE < HorzTimeToPulseWidthEnd)
            HS_nxt = 1'b0;
        else
            HS_nxt = 1'b1;
        
         // code to define if VS is logic 1 through if its counter is bigger than VertTimeToPulseWidthEnd
        if (VS_VALUE < VertTimeToPulseWidthEnd)
           VS_nxt = 1'b0;
        else
           VS_nxt = 1'b1;      
    end
    
    // This always block determines the value of COLOUR_OUT
    always@(*) begin
        if ((HS_VALUE < HorzTimeToDisplayTimeEnd && HS_VALUE > HorzTimeToBackPorchEnd) &&  (VS_VALUE < VertTimeToDisplayTimeEnd && VS_VALUE > VertTimeToBackPorchEnd))
            //COLOUR_OUT_nxt = COLOUR_IN;
            if (
                ((ADDRH_w >= 9'd0 && ADDRH_w < 9'd10) && (ADDRV_w >= 9'd0 && ADDRV_w < 9'd10))
                ||
                ((ADDRH_w >= 9'd0 && ADDRH_w < 9'd10) && (ADDRV_w >= 9'd470  && ADDRV_w < 9'd480))
                ||
                ((ADDRH_w >= 9'd630  && ADDRH_w < 9'd640) && (ADDRV_w >= 9'd0 && ADDRV_w < 9'd10))
                || 
                ((ADDRH_w >= 9'd630  && ADDRH_w < 9'd640) && (ADDRV_w >= 9'd470  && ADDRV_w < 9'd480))
               )
                    // i now need to invert all the bits 
                    COLOUR_OUT_nxt = ~COLOUR_IN;
            else
                    COLOUR_OUT_nxt = COLOUR_IN; 
        else
            COLOUR_OUT_nxt = 12'd0;
    end
    
    /*
    // this always@ block will deal with the pixel address and if their counters are within the displayable range will be decoded
    always@(*) begin      
        if ((Horizontal_address < HorzTimeToDisplayTimeEnd) && (Horizontal_address > HorzTimeToBackPorchEnd)) // hoorizontal address within display range
            // DECODE
        else
            Address_Horizontal_nxt = 10'd0; // set it = 0 since its not displayable      
    end
    */
     
    // Assign statements to current register values
    assign HS = HS_r;
    assign VS = VS_r;
    assign ADDRH = Address_Horizontal_r;
    assign ADDRV = Address_Vertical_r;
    assign COLOUR_OUT = COLOUR_OUT_r;

endmodule
