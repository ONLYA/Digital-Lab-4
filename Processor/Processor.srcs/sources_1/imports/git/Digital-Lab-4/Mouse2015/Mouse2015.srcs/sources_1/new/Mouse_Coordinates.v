`timescale 1ns / 1ps

// This module deals with determining the new coordinates of the mouse pointer

module Mouse_Coordinates(
    input CLK,
    input RESET, 
    // mouse data
    input [7:0] MouseStatusRaw,
    input [7:0] MouseDxRaw,
    input [7:0] MouseDyRaw,
    input [7:0] MouseDzRaw,
    input Interrupt,
    // outputs
    output [7:0] Mouse_x_position_new,
    output [7:0] Mouse_y_position_new,
    output [7:0] Mouse_z_position_new,
    output [5:0] Mouse_status
);

    // X, Y Limits of Mouse Position e.g. VGA Screen with 160 x 120 resolution
    parameter MouseLimitMaxX = 160, MouseLimitMinX = 0;
    parameter MouseLimitMaxY = 120, MouseLimitMinY = 0;
    parameter MouseSensitivity = 10;
  
//Pre-processing - handling of overflow and signs.
    //More importantly, this keeps tabs on the actual X/Y
    //location of the mouse.
    wire signed [8:0] MouseDx;
    wire signed [8:0] MouseDy;
    wire signed [8:0] MouseNewX;
    wire signed [8:0] MouseNewY;
    
    reg [7:0] MouseY, MouseX, MouseZ; 
    reg [5:0] MouseStatus;
    
    //DX and DY are modified to take account of overflow and direction
    assign MouseDx = (MouseStatusRaw[6] == 1'b1) ? (MouseStatusRaw[4] ? {MouseStatusRaw[4],8'h00} : {MouseStatusRaw[4],8'hFF} ) : {MouseStatusRaw[4],MouseDxRaw[7:0]};  
    // if overflow then (if negative then mouseDx = 1_0000_0000 
    //                   else mouseDX = 0_1111_1111) 
    // else MouseDx = negativeBit_MouseDXRaw
    
    // assign the proper expression to MouseDy
    assign MouseDy = (MouseStatusRaw[7] == 1'b1) ? (MouseStatusRaw[5] ? {MouseStatusRaw[5],8'h00} : {MouseStatusRaw[5],8'hFF} ) : {MouseStatusRaw[5],MouseDyRaw[7:0]};
        
    // calculate new mouse position
    // assume MouseX = 0111,1111, MouseDx = 0,0111,1111
    assign MouseNewX = {1'd0,MouseX} + MouseDx; // MouseNewX = 0_0111_1111 + 0,0111,1111 =  0,1111,1110 (254)
    // assume MouseY = 0111,1000, MouseDy = 0,1111,1111
    assign MouseNewY = {1'd0,MouseY} - MouseDy; // SWAP NEGATIVE SIGN FOR '+' to invert Y direction
    // MouseNewY = 0,0111,1000 + 0,1111,1111 = 0|1,0111,0111 -> since this is only 9 bits the last bit will be ignored and treated as a negative 
    
        
    always@(posedge CLK) begin
        if(RESET) begin
            // centre the mouse
            MouseStatus <= 6'd0;
            MouseX <= MouseLimitMaxX/2;
            MouseY <= MouseLimitMaxY/2;
            MouseZ <= 8'd0;
            end
        else if (Interrupt == 1'b1) begin
            //Status is stripped of all unnecessary info
            MouseStatus <= {MouseStatusRaw[7:4],MouseStatusRaw[1:0]};
            //X is modified based on DX with limits on max and min
            if(MouseNewX < MouseLimitMinX)
                MouseX <= 8'd0;
            else if(MouseNewX > (MouseLimitMaxX-1))
                MouseX <= MouseLimitMaxX-1;
            else
                MouseX <= MouseNewX[7:0];
            
            //Y is modified based on DY with limits on max and min
            if(MouseNewY < MouseLimitMinY)
                MouseY <= 8'd0;
            else if(MouseNewY > (MouseLimitMaxY-1))
                MouseY <= MouseLimitMaxY-1;
            else
                MouseY <= MouseNewY[7:0];
            
            // modify Dz
            MouseZ = MouseDzRaw;   
        end
    end
    
    assign Mouse_x_position_new = MouseX;
    assign Mouse_y_position_new = MouseY;
    assign Mouse_z_position_new = MouseZ;
    assign Mouse_status         = MouseStatus;
   
endmodule
