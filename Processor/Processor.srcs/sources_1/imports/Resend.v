`timescale 1ns / 1ps

// This module deals with re-tranmission of last packet from the mouse

module Resend(
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
    output [7:0] RESENT_PACKET,
    output READY,
    output [3:0] STATE
);
    
    
    
    // states for resending last packet -> Not sure if you need to disable data reporting
    localparam  STATE_DISABLE_DATA_REPORTING = 0,
                STATE_DISABLE_DATA_REPORTING_SENT_CONFIRMATION = 1,
                STATE_DISABLE_DATA_REPORTING_ACKOWLEDGMENT = 2,
                // -- NOW SEND RESET COMMAND
                STATE_RESEND = 3,
                STATE_RESEND_SENT_CONFIRMATION = 4,
                STATE_RESEND_PACKET = 5,
                STATE_RESEND_PACKET_SUCCESS = 6,
                STATE_DISABLE_FAILED = 7,
                STATE_RESEND_FAILED = 8;
                
    // all the constant variables used
    localparam  DISABLE_DATA_ACKNOWLEDGED = 8'hFA,
                RESEND_COMMAND = 8'hFA,
                DISABEL_DATA_COMMAND = 8'hF5;
                
    
    // Registers
    reg [3:0] state_current, state_next;
    reg [7:0] byte_to_send_current, byte_to_send_next; 
    reg send_byte_current, send_byte_next;
    reg enable_read_current, enable_read_next;
    reg success_current, success_next;
    reg [7:0] resent_packet_current, resent_packet_next;
    reg complete_current, complete_next;
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1 || ENABLE == 1'b0) begin
            state_current <= STATE_DISABLE_DATA_REPORTING;
            send_byte_current <= 1'b0;
            byte_to_send_current <= 8'h00;
            enable_read_current <= 1'b0;
            success_current <= 1'b0;
            resent_packet_current <= 8'd0;
            complete_current <= 1'b0;
        end
        else if (ENABLE == 1'b1) begin
            state_current <= state_next;
            send_byte_current <= send_byte_next;
            byte_to_send_current <= byte_to_send_next;
            enable_read_current <= enable_read_next;
            success_current <= success_next;
            resent_packet_current <= resent_packet_next;
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
        resent_packet_next = resent_packet_current;
        complete_next = complete_current;
        
        case(state_current)
        
            // starts to send the enter remote command to the device
            STATE_DISABLE_DATA_REPORTING: begin
                state_next = STATE_DISABLE_DATA_REPORTING_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = DISABEL_DATA_COMMAND;
            end
            
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_DISABLE_DATA_REPORTING_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_DISABLE_DATA_REPORTING_ACKOWLEDGMENT;
                end
                
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_DISABLE_DATA_REPORTING_ACKOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == DISABLE_DATA_ACKNOWLEDGED)
                        state_next = STATE_RESEND;
                    else
                        state_next = STATE_DISABLE_FAILED;
                end
                enable_read_next = 1'b1;
            end
            
           // ask device to resend last packet
            STATE_RESEND: begin
                state_next = STATE_RESEND_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = RESEND_COMMAND;
            end
            
            // wait for confirmation of asking device to resend last packet
            STATE_RESEND_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_RESEND_PACKET;
                end
                
            //this byte could be a bunch of nonsense not sure yet
            STATE_RESEND_PACKET: begin
                if(BYTE_READY) begin
                    resent_packet_next = BYTE_READ;
                    state_next = STATE_RESEND_PACKET_SUCCESS;
                end
                enable_read_next = 1'b1;
            end 
            
        // -- STATE SUCCESS --
            STATE_RESEND_PACKET_SUCCESS: begin
                success_next = 1'b1;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_current = 1'b1;
            end
        // -- STATE SUCCESS --
        
        // -- STATE FAILED --
            STATE_RESEND_FAILED: begin
                success_next = 1'b0;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
            end
            
            STATE_DISABLE_FAILED: begin
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
    assign RESENT_PACKET = resent_packet_current;
    assign READY = complete_current;
    assign STATE = state_current;
    
endmodule
