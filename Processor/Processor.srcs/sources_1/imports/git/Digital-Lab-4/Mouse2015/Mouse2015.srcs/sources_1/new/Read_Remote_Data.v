`timescale 1ns / 1ps

// This module will tell the mouse to enter the READ_DATA state

module Read_Remote_Data(
    // inputs
    input CLK,
    input RESET,
    input [7:0] BYTE_READ,
    input [1:0] BYTE_ERROR_CODE,
    input BYTE_READY,
    input BYTE_SENT,
    input ENABLE,
    // outputs
    output SEND_BYTE,
    output [7:0] BYTE_TO_SEND,
    output READ_ENABLE,
    output SUCCESS,
    output READY,
    // debug info
    output [2:0] STATE
);

    // local paamaters for resetting mouse command
    localparam  STATE_IDLE = 0,
                STATE_READ_DATA_SEND = 1,
                STATE_READ_DATA_SENT_CONFIRMATION = 2,
                STATE_READ_DATA_ACKNOWLEDGE = 3,
                STATE_READ_DATA_SUCCESS = 4,
                STATE_READ_DATA_FAILED = 5;
                
    // all the constant variables used
    localparam  READ_DATA_ACKNOWLEDGED_FA = 8'hFA,
                READ_DATA_ACKNOWLEDGED_F4 = 8'hF4,
                READ_DATA_COMMAND = 8'hEB;
    
    // Registers
    reg [2:0] state_current, state_next;
    reg [7:0] byte_to_send_current, byte_to_send_next; 
    reg send_byte_current, send_byte_next;
    reg enable_read_current, enable_read_next;
    reg success_current, success_next;
    reg complete_current, complete_next;
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1) begin
            state_current <= STATE_IDLE;
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
        send_byte_next = 1'b0;
        byte_to_send_next = byte_to_send_current;
        enable_read_next = 1'b0;
        success_next = success_current;
        complete_next = complete_current;
        
        case(state_current)
        
            STATE_IDLE: begin
                if (ENABLE == 1'b1)
                    state_next = STATE_READ_DATA_SEND;
            end
        
            // starts to send the enter READ_DATA command to the device
            STATE_READ_DATA_SEND: begin
                state_next = STATE_READ_DATA_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = READ_DATA_COMMAND;
            end
            
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_READ_DATA_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_READ_DATA_ACKNOWLEDGE;
                end
                
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_READ_DATA_ACKNOWLEDGE: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == READ_DATA_ACKNOWLEDGED_FA || BYTE_READ == READ_DATA_ACKNOWLEDGED_F4)
                        state_next = STATE_READ_DATA_SUCCESS;
                    else
                        state_next = STATE_READ_DATA_FAILED;
                end
                enable_read_next = 1'b1;
            end
            
        // -- STATE SUCCESS --
            STATE_READ_DATA_SUCCESS: begin
                success_next = 1'b1;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
                state_next = STATE_IDLE;
            end
        // -- STATE SUCCESS --
        
        // -- STATE FAILED --
            STATE_READ_DATA_FAILED: begin
                success_next = 1'b0;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
                state_next = STATE_IDLE;
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
