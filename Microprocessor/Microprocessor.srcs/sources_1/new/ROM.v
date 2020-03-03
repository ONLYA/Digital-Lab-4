`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2020 13:39:41
// Design Name: 
// Module Name: ROM
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
// This memory is for program
//////////////////////////////////////////////////////////////////////////////////


module ROM(
    //standard signals
    input               CLK,
    //BUS signals
    output  reg [7:0]   DATA,
    input       [7:0]   ADDR
);
    parameter RAMAddrWidth= 8;
    
    //Memory
    reg [7:0] ROM [2**RAMAddrWidth-1:0];
    
    // Load program (Binary)
    initial $readmemb("Complete_Demo_ROM.txt", ROM);
    
    //single port ram
    always@(posedge CLK)
        DATA <= ROM[ADDR];

endmodule