`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2018 14:01:10
// Design Name: 
// Module Name: Generic_counter
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


module Generic_counter(
        CLK,
        RESET,
        ENABLE,
        TRIG_OUT,
        COUNT
    );
    
    parameter COUNTER_WIDTH = 4;    // 4 COUNTERS
    parameter COUNTER_MAX = 9;      // count up to 9
    
    
    // define types and sizes for variables
    input CLK;
    input RESET;
    input ENABLE;
    output TRIG_OUT;
    output [COUNTER_WIDTH - 1: 0] COUNT;    
    
    // define reg to be used in always loop
    reg [COUNTER_WIDTH - 1:0] counter_value_r, counter_value_nxt;
    reg Trigger_out_r, Trigger_out_nxt;
    
    // deals with updating the registers
    always@(posedge CLK or posedge RESET) begin
        if (RESET == 1'b1) begin
            counter_value_r <= 0;
            Trigger_out_r <= 0;
            end
        else begin
            counter_value_r <= counter_value_nxt;
            Trigger_out_r <= Trigger_out_nxt;
            end
    end
    
    // delas with incrementing the counter and checking if it has fully counted
    // if so then output trigger out as high
    always@(*) begin
        counter_value_nxt = counter_value_r;
        if (ENABLE == 1'b1) begin
            if (counter_value_r == COUNTER_MAX)
                counter_value_nxt = 0;
            else 
                counter_value_nxt = counter_value_r + 1;
            end
        if ((ENABLE == 1'b1) && (counter_value_r == COUNTER_MAX))
            Trigger_out_nxt = 1'd1;
        else    
            Trigger_out_nxt = 1'd0;
        
    end
    
    // assignment values for always@ block
    assign COUNT = counter_value_r;
    assign TRIG_OUT = Trigger_out_r;
    
    
    
endmodule
