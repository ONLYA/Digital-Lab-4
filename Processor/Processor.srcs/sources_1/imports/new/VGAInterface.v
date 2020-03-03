`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2018 11:53:22
// Design Name: 
// Module Name: VGAInterface
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


module VGAInterface(
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
    output sixty_herz_trig,
    input RESET
);

    //#---------------------------------------------#//
    //              Definitions                      //               
    //#---------------------------------------------#//

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
    wire [9:0] HS_VALUE;
    wire [9:0] VS_VALUE;
    wire [9:0] Horizontal_address;
    wire [8:0] Vertical_address;
    wire colour_change;
    
    // connecting modules for counters
    Synch synch_counters (
            .CLK(CLK),
            .RESET(RESET),
            .HS_OUT(HS_OUT),  // DONT THINK I'LL NEED THIS
            .VS_OUT(VS_OUT), // DONT THINK I'LL NEED THIS
            .HS_VALUE(HS_VALUE),
            .VS_VALUE(VS_VALUE),
            .Horizontal_address(Horizontal_address),
            .Vertical_address(Vertical_address),
            .colour_change(sixty_herz_trig)  
    );
    
    //#---------------------------------------------#//
    //              Sequential List                  //               
    //#---------------------------------------------#//

    // this sequential sensitivity list deals with the registers and their assignments
    always@(posedge CLK or posedge RESET) begin
        if (RESET == 1'b1) begin
            HS_r <= 1'b0;
            VS_r <= 1'b0;;
            Address_Horizontal_r <= 10'd0;
            Address_Vertical_r <= 9'd0;
            COLOUR_OUT_r <= 12'd0; 
        end
        else begin
            HS_r <= HS_nxt;
            VS_r <= VS_nxt;
            Address_Horizontal_r <= Address_Horizontal_nxt;
            Address_Vertical_r <= Address_Vertical_nxt;
            COLOUR_OUT_r <= COLOUR_OUT_nxt; 
        end
    end
    
    
    //#---------------------------------------------#//       
    //              Combitorial List                 //               
    //#---------------------------------------------#//
    
    // this block determines the signals of HS and VS
    always@(*) 
    begin: Set_synch       
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
    always@(*) 
    begin: Set_Colour      
       if ((HS_VALUE < HorzTimeToDisplayTimeEnd && HS_VALUE > HorzTimeToBackPorchEnd) &&  (VS_VALUE < VertTimeToDisplayTimeEnd && VS_VALUE > VertTimeToBackPorchEnd))
            COLOUR_OUT_nxt = COLOUR_IN;
        else
            COLOUR_OUT_nxt = 12'd0;
    end
    
    
    // this always@ block will deal with the pixel address and if their counters are within the displayable range will be decoded
    always@(*) 
    begin: Set_Address      
        if (((Horizontal_address < HorzTimeToDisplayTimeEnd) && (Horizontal_address > HorzTimeToBackPorchEnd))) // hoorizontal address not within display range
            Address_Horizontal_nxt = Horizontal_address - 10'd144;
        else 
            Address_Horizontal_nxt = 10'd0; // set it = 0 since its not displayable
        
        if (((Vertical_address < VertTimeToDisplayTimeEnd) && (Vertical_address > VertTimeToBackPorchEnd))) // Vertical address not within display range
            Address_Vertical_nxt = Vertical_address - 9'd31;
        else
            Address_Vertical_nxt = 9'd0; // set it = 0 since its not displayable  
    end
     
    //#---------------------------------------------#//
    //              Assignments                      //               
    //#---------------------------------------------#//
     
     
    // Assign statements to current register values
    assign HS = HS_r;
    assign VS = VS_r;
    assign ADDRH = Address_Horizontal_r;
    assign ADDRV = Address_Vertical_r;
    assign COLOUR_OUT = COLOUR_OUT_r;
    assign HS_Value = HS_VALUE;
    assign VS_Value = VS_VALUE;

endmodule
