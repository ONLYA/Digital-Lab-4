`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2018 14:47:51
// Design Name: 
// Module Name: Mux_4_bit
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


module Mux_4_bit(
    input [4:0] IN1,
    input [4:0] IN2,
    input [4:0] IN3,
    input [4:0] IN4,
    input [1:0] SEL,
    output reg [4:0] OUT
    );
    
    always@(*) begin
        case(SEL)
            2'b00: OUT<= IN1;
            2'b01: OUT<= IN2;
            2'b10: OUT<= IN3;
            2'b11: OUT<= IN4;
            default: OUT <= 5'd0; 
        endcase
    end
    
endmodule
