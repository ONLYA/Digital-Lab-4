`timescale 1ns / 1ps

// This module deals with getting the mouse into stream mode,
// note that the mouse automatically enters this after restart

module Stream_Mode(
    // inputs
    input CLK,
    input RESET,
    input [7:0] BYTE_READ,
    input [1:0] BYTE_ERROR_CODE,
    input BYTE_READY,
    input RESEND_DATA,
    input BYTE_SENT,
    input ENABLE,
    // outputs
    output SEND_BYTE,
    output [7:0] BYTE_TO_SEND,
    output READ_ENABLE,
    output SUCCESS,
    output READY,
    output [3:0] STATE
);

    // local paamaters for resetting mouse command
    localparam  STATE_STREAM_SEND = 1,
                STATE_STREAM_SENT_CONFIRMATION = 2,
                STATE_STREAM_ACKNOWLEDGE = 3,
                STATE_STREAM_SUCCESS = 4,
                STATE_STREAM_FAILED = 5;
                
    // all the constant variables used
    localparam  STREAM_ACKNOWLEDGED = 8'hFA,
                STREAM_COMMAND = 8'hEA;
    
    // Registers
    reg [3:0] state_current, state_next;
    reg [7:0] byte_to_send_current, byte_to_send_next; 
    reg send_byte_current, send_byte_next;
    reg enable_read_current, enable_read_next;
    reg success_current, success_next;
    reg complete_current, complete_next;
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1 || ENABLE == 1'b0) begin
            state_current <= STATE_STREAM_SEND;
            send_byte_current <= 1'b0;
            byte_to_send_current <= 8'h00;
            enable_read_current <= 1'b0;
            success_current <= 1'b0;
            complete_current <= 1'b0;
        end
        else if (ENABLE == 1'b1) begin
            state_current <= state_next;
            send_byte_current <= send_byte_next;
            byte_to_send_current <= byte_to_send_next;
            enable_read_current <= enable_read_next;
            success_current <= success_next;
            complete_current <= complete_next;
        end
    end
                
    // traverse through states
    always@(*) begin
        state_next = state_current;
        send_byte_next = send_byte_current;
        byte_to_send_next = byte_to_send_current;
        enable_read_next = enable_read_current;
        success_next = success_current;
        complete_next = complete_current;
        
        case(state_current)
        
            // starts to send the enter STREAM command to the device
            STATE_STREAM_SEND: begin
                state_next = STATE_STREAM_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = STREAM_COMMAND;
            end
            
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_STREAM_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_STREAM_ACKNOWLEDGE;
                end
                
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_STREAM_ACKNOWLEDGE: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == STREAM_ACKNOWLEDGED)
                        state_next = STATE_STREAM_SUCCESS;
                    else
                        state_next = STATE_STREAM_FAILED;
                end
                enable_read_next = 1'b1;
            end
            
        // -- STATE SUCCESS --
            STATE_STREAM_SUCCESS: begin
                success_next = 1'b1;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
            end
        // -- STATE SUCCESS --
        
        // -- STATE FAILED --
            STATE_STREAM_FAILED: begin
                success_next = 1'b0;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
            end
        // -- STATE FAILED --  
        endcase
    end
    
    assign SEND_BYTE = send_byte_current;
    assign BYTE_TO_SEND = byte_to_send_current;
    assign READ_ENABLE = enable_read_current;
    assign SUCCESS = success_current;
    assign READY = complete_current;
    assign STATE = state_current;
    
endmodule

