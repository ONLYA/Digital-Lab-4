`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2018 15:28:15
// Design Name: 
// Module Name: Synch
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


module Synch(
    input CLK,
    input RESET,
    output HS_OUT,  // DONT THINK I'LL NEED THIS
    output VS_OUT , // DONT THINK I'LL NEED THIS
    output [9:0] HS_VALUE,
    output [9:0] VS_VALUE,
    output [9:0] Horizontal_address,
    output [8:0] Vertical_address,
    output colour_change       
);
    
    wire [9:0] H_Address;
    wire [8:0] V_Address;
    
    wire VS_out, HS_out, Address_H_out, Address_V_out, Enable_Horz, colour_change;
    reg Enable_VS;
    reg Enable_2;
    
    //#------------------------------------------#//
    //          STEP DOWN Counter
    //#------------------------------------------#//
    Generic_counter # (
        .COUNTER_WIDTH(2),
        .COUNTER_MAX(3)
    )
    Step_Down (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(1'b1),
        .TRIG_OUT(Enable_Horz)
    );

    //#-------------------------------------------#//
    //              Generic Counters               //
    //#-------------------------------------------#//
    
    // HS  counter AKA Counter 1
    Generic_counter # (
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(799)
    )
    HS_Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Enable_Horz),
        .TRIG_OUT(HS_out),
        .COUNT(HS_VALUE)
    );
    
    // VS  counter AKA Counter 2, only countrs when HS has reached its max
    Generic_counter # (
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(520)
    )
    VS_Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Enable_VS),
        .TRIG_OUT(VS_out),
        .COUNT(VS_VALUE)
    );

    // Address Horizontal counter 
    Generic_counter # (
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(799)
    )
    Address_Horizontal_Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Enable_Horz),
        .TRIG_OUT(Address_H_out),
        .COUNT(H_Address)
    );
    
    // Address vertical counter 
    Generic_counter # (
        .COUNTER_WIDTH(10),
        .COUNTER_MAX(520)
    )
    Address_Vertical_Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Enable_2),
        .TRIG_OUT(Address_V_out),
        .COUNT(V_Address)
    );
    
    // 60 Hz counter
    Generic_counter # (
        .COUNTER_WIDTH(27),
        .COUNTER_MAX(1000)   // should be 4,250,000
    )
    sixty_hertz_Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(Enable_Horz),
        .TRIG_OUT(colour_change)
    );
    
    //#------------------------------------------#//
    //              Sensitivity List              //
    //#------------------------------------------#//       
    
    // this sensitivity list deals with counter 2 for VS counting when counter 1 (HS) has reset to 0
    always@(*) begin
        if (HS_out == 1'b1)
            Enable_VS = 1'b1;
        else
            Enable_VS = 1'b0;
            
        if (Address_H_out == 1'b1)
            Enable_2 = 1'b1;
        else
            Enable_2 = 1'b0;
    end
    
    //#-------------------------------------------#//
    //              Assignments                    // 
    //#-------------------------------------------#//

    // assign statements
    assign Horizontal_address = H_Address;
    assign Vertical_address = V_Address;
    assign HS_OUT = HS_out;
    assign VS_OUT = VS_out;
    
endmodule
