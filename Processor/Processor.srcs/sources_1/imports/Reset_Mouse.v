`timescale 1ns / 1ps
// -- INFO --

/*
    This module is used to reset the device
*/

// -- INFO --

module Reset_Mouse(
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
    output [3:0] STATE
);

    // local paamaters for resetting mouse command
    localparam  STATE_INITIALISE = 0,
                STATE_RESET_SEND = 1,
                STATE_RESET_SENT_CONFIRMATION = 2,
                STATE_RESET_ACKNOWLEDGE = 3,
                STATE_SELF_TEST_PASSED = 4,
                STATE_MOUSE_ID = 5,
                STATE_RESET_SUCCESS = 6,
                STATE_RESET_FAILED = 7,
                STATE_IDLE = 8;
    
    // all the constant variables used
    localparam  RESET_ACKNOWLEDGED_FA = 8'hFA,
                RESET_ACKNOWLEDGED_F4 = 8'hF4,
                RESET_SELF_PASS = 8'hAA,
                RESET_COMMAND = 8'hFF,
                MOUSE_ID = 8'h00;      
    
    reg [3:0] state_current, state_next;
    reg [7:0] byte_to_send_current, byte_to_send_next; 
    reg send_byte_current, send_byte_next;
    reg read_enable_current, read_enable_next;
    reg success_current, success_next;
    reg [23:0] counter_current, counter_next;
    reg complete_current, complete_next;
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1) begin
            state_current <= STATE_IDLE;
            send_byte_current <= 1'b0;
            byte_to_send_current <= 8'h00;
            read_enable_current <= 1'b0;
            success_current <= 1'b0;
            counter_current <= 24'd0;
            complete_current <= 1'b0;
        end
        else if (ENABLE == 1'b1) begin
            state_current <= state_next;
            send_byte_current <= send_byte_next;
            byte_to_send_current <= byte_to_send_next;
            read_enable_current <= read_enable_next;
            success_current <= success_next;
            counter_current <= counter_next;
            complete_current <= complete_next;
        end
    end

    // traverse through states
    always@(*) begin
        state_next = state_current;
        send_byte_next = 1'b0;
        byte_to_send_next = byte_to_send_current;
        read_enable_next = 1'b0;
        success_next = success_current;
        counter_next = counter_current;
        complete_next = complete_current;
        
        case(state_current)
        
            STATE_IDLE: begin
                if (ENABLE == 1'b1)
                    state_next = STATE_INITIALISE;
            end
        
        // -- STATE INITIALISE --
            // 0
            STATE_INITIALISE: begin
                if(counter_current >= 24'd1_000_000) begin // 1/100th sec at 50MHz clock = 500,000 100MHZ -> 25'd1_000_000
                    state_next = STATE_RESET_SEND;
                    counter_next = 24'd0;
                end else
                    counter_next = counter_current + 24'd1;
            end
        // -- STATE INITIALISE --
            
        // -- STATE SEND RESET --
            //1
            // starts to send the reset command to the device
            STATE_RESET_SEND: begin
                state_next = STATE_RESET_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = RESET_COMMAND;
            end
        // -- STATE SEND RESET --
            
        // -- STATE SEND REQUEST SENT --
            // 2
            STATE_RESET_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_RESET_ACKNOWLEDGE;
                end
        // -- STATE SEND REQUEST SENT --
        
        // -- STATE_RESET_ACKNOWLEDGE --
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            //3
            STATE_RESET_ACKNOWLEDGE: begin
                read_enable_next = 1'b1;
                if(BYTE_READY) begin
                    if(BYTE_READ == RESET_ACKNOWLEDGED_FA || BYTE_READ == RESET_ACKNOWLEDGED_F4) //skip error checking
                        state_next = STATE_SELF_TEST_PASSED;
                    else
                        state_next = STATE_RESET_SENT_CONFIRMATION;
                end
            end
        // -- STATE_RESET_ACKNOWLEDGE --
        
        // -- STATE SELF PASSED --
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            //4
            STATE_SELF_TEST_PASSED: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == RESET_SELF_PASS)
                        state_next = STATE_MOUSE_ID;
                    else
                        state_next = STATE_RESET_FAILED;
                end
                read_enable_next = 1'b1;
            end
        // -- STATE SELF PASSED --
        
        // -- STATE MOUSE ID --
        // Get the mouse ID and check it is what is expected
            //5
            STATE_MOUSE_ID: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == MOUSE_ID)
                        state_next = STATE_RESET_SUCCESS;
                    else
                        state_next = STATE_RESET_FAILED;
                end
                read_enable_next = 1'b1;
            end
        // -- STATE MOUSE ID --
        
        // -- STATE SUCCESS --
            //6
            STATE_RESET_SUCCESS: begin
                success_next = 1'b1;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
                state_next = STATE_IDLE;
            end
        // -- STATE SUCCESS --
        
        // -- STATE FAILED --
            //7
            STATE_RESET_FAILED: begin
                success_next = 1'b0;
                byte_to_send_next = 8'd0;    // not needing to send a byte
                complete_next = 1'b1;
                state_next = STATE_IDLE;
            end
        // -- STATE FAILED --
        
            default: begin
                state_next = state_current;
                send_byte_next = 1'b0;
                byte_to_send_next = byte_to_send_current;
                read_enable_next = 1'b0;
                success_next = 1'b0;
                counter_next = 24'd0;
                complete_next = 1'b0;
            end 
        endcase
    end

    assign SEND_BYTE = send_byte_current;
    assign BYTE_TO_SEND = byte_to_send_current;
    assign READ_ENABLE = read_enable_current;
    assign SUCCESS = success_current;
    assign READY = complete_current;
    assign STATE = state_current;

endmodule
