`timescale 1ns / 1ps

// This module deals with tidying up the mouse position
module MousePosition(
    input CLK,
    input RESET,
    input [7:0] Mouse_x,
    input [7:0] Mouse_y,
    input byte_recieved,
    output [8:0] Mouse_x_out,
    output [8:0] Mouse_y_out
    );
    
    localparam [2:0] STATE_IDLE = 3'd0,
                     STATE_x_CHANGED = 3'd1,
                     STATE_Y_CHANGED = 3'd2,
                     STATE_X_Y_CHANGED = 3'd3;
                     
    reg [2:0] STATE_CURRENT, STATE_NEXT;
    // the MouseX and MouseY positions
    reg [7:0] X_CURRENT, X_NEXT,
              Y_CURRENT, Y_NEXT;
    
    always@(posedge CLK) begin
         if (RESET == 1'b1) begin
               STATE_CURRENT <= STATE_IDLE;
               X_CURRENT <= 8'd0;
               Y_CURRENT <= 8'd0; 
           end 
           else if (byte_recieved == 1'b1) begin
               STATE_CURRENT <= STATE_NEXT;
               X_CURRENT <= X_NEXT;
               Y_CURRENT <= Y_NEXT;
           end
    end
    
    always@(*) begin
        STATE_NEXT = STATE_CURRENT;
        X_NEXT = X_CURRENT;
        Y_NEXT = Y_CURRENT;
        
        case(STATE_CURRENT)
        
            // in idle state waiting for different X, Y coordnates. we also stay here if we recieve 0 since we dont care for displaying that
            STATE_IDLE: begin
                if (Mouse_x == X_CURRENT && Mouse_y == Y_CURRENT) begin
                    STATE_NEXT = STATE_IDLE;
                end else begin
                    X_NEXT = Mouse_x;
                    Y_NEXT = Mouse_y;
                end 
            end

            default: begin
                STATE_NEXT = STATE_CURRENT;
                X_NEXT = X_CURRENT;
                Y_NEXT = Y_CURRENT;
            end
            // end case(STATE_CURRENT)
        endcase
        // end always@(*)
    end
    
    assign Mouse_x_out = X_CURRENT;
    assign Mouse_y_out = Y_CURRENT;
    
endmodule
