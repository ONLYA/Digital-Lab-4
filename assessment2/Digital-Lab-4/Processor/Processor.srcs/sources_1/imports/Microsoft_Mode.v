`timescale 1ns / 1ps

// This module deals with getting the mouse into stream mode,
// note that the mouse automatically enters this after restart

module Microsoft_Mode(
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
    output [4:0] STATE
);

    // states for entering Microsoft scrolling mode
    localparam  STATE_IDLE = 0,
                // -- SET 200 SAMPLE RATE
                STATE_SET_SAMPLE_RATE_200 = 1,
                STATE_SET_SAMPLE_RATE_200_SENT_CONFIRMATION = 2,
                STATE_SET_SAMPLE_RATE_200_ACKNOWLEDGMENT = 3,
                // have to send 200 decimal and wait for mouse to acknowledge it
                STATE_SEND_200_RATE = 4,
                STATE_SEND_200_RATE_SENT_CONFIRMATION = 5,
                STATE_SEND_200_RATE_ACKNOWLEDGMENT = 6,
                // -- SET 100 SAMPLE RATE
                STATE_SET_SAMPLE_RATE_100 = 7,
                STATE_SET_SAMPLE_RATE_100_SENT_CONFIRMATION = 8,
                STATE_SET_SAMPLE_RATE_100_ACKNOWLEDGMENT = 9,
                // send 100 to device
                STATE_SEND_100_RATE = 10,
                STATE_SEND_100_RATE_SENT_CONFIRMATION = 11,
                STATE_SEND_100_RATE_ACKNOWLEDGMENT = 12,
                // -- SET 80 SAMPLE RATE
                STATE_SET_SAMPLE_RATE_80 = 13,
                STATE_SET_SAMPLE_RATE_80_SENT_CONFIRMATION = 14,
                STATE_SET_SAMPLE_RATE_80_ACKNOWLEDGMENT = 15,
                // send 80 to device
                STATE_SEND_80_RATE = 16,
                STATE_SEND_80_RATE_SENT_CONFIRMATION = 17,
                STATE_SEND_80_RATE_ACKNOWLEDGMENT = 18,    
                // -- READ DEVICE TYPE
                STATE_READ_DEVICE_ID = 19,
                STATE_READ_DEVICE_ID_SENT_CONFIRMATION = 20,
                STATE_READ_DEVICE_ID_ACKNOWLEDGMENT = 21,
                STATE_READ_DEVICE_ID_RAW_ID = 22,
                // SUCCESS - FAILED
                STATE_MICROSOFT_FAILED = 23,    //CHECK IF MOUSE ID = 0X03
                STATE_MICROSOFT_SUCCESS = 24;

                
    // all the constant variables used
    localparam  SET_SAMPLE_ACKNOWLEDGED_FA = 8'hFA,
                SET_SAMPLE_ACKNOWLEDGED_F4 = 8'hF4, // change to F4
                SET_SAMPLE_COMMAND = 8'hF3,
                GET_MOUSE_ID_COMMAND = 8'hF2,
                MOUSE_ID_MICROSOFT = 8'h03,
                SAMPLE_200 = 8'd200,
                SAMPLE_100 = 8'd100,
                SAMPLE_80 = 8'd80;
    
    // Registers
    reg [4:0] state_current, state_next;
    reg [7:0] byte_to_send_current, byte_to_send_next; 
    reg send_byte_current, send_byte_next;
    reg read_enable_current, read_enable_next;
    reg success_current, success_next;
    reg complete_current, complete_next;
                
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1) begin
            state_current <= STATE_IDLE;
            send_byte_current <= 1'b0;
            byte_to_send_current <= 8'h00;
            read_enable_current <= 1'b0;
            success_current <= 1'b0;
            complete_current <= 1'b0;
        end
        else if (ENABLE == 1'b1) begin
            state_current <= state_next;
            send_byte_current <= send_byte_next;
            byte_to_send_current <= byte_to_send_next;
            read_enable_current <= read_enable_next;
            success_current <= success_next;
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
        complete_next = complete_current;
        
        case(state_current)
        
        // -- send 200 data rate --        
            // 0
            STATE_IDLE: begin
                if (ENABLE == 1'b1) begin
                    state_next = STATE_SET_SAMPLE_RATE_200;
                end
            end
            
            // starts to send the enter remote command to the device
            // 1
            STATE_SET_SAMPLE_RATE_200: begin
                state_next = STATE_SET_SAMPLE_RATE_200_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SET_SAMPLE_COMMAND;
            end
            
            // 2
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SET_SAMPLE_RATE_200_SENT_CONFIRMATION: begin
//                send_byte_next = 1'b1;
                if(BYTE_SENT)
                    state_next = STATE_SET_SAMPLE_RATE_200_ACKNOWLEDGMENT;
                end
            // 3  
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SET_SAMPLE_RATE_200_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_SEND_200_RATE;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
            
            // -- send 200 --
            // 4
            STATE_SEND_200_RATE: begin
                state_next = STATE_SEND_200_RATE_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SAMPLE_200;
            end
            // 5
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SEND_200_RATE_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_SEND_200_RATE_ACKNOWLEDGMENT;
                end
            // 6    
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SEND_200_RATE_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_SET_SAMPLE_RATE_100;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
        
        // -- send 200 data rate --
        
        // -- send 100 data rate --
            // 7
            // starts to send the enter remote command to the device
            STATE_SET_SAMPLE_RATE_100: begin
                state_next = STATE_SET_SAMPLE_RATE_100_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SET_SAMPLE_COMMAND;
            end
            
            // 8
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SET_SAMPLE_RATE_100_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_SET_SAMPLE_RATE_100_ACKNOWLEDGMENT;
                end
            // 9    
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SET_SAMPLE_RATE_100_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_SEND_100_RATE;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
            
            // -- send 100 --
            // 10
            STATE_SEND_100_RATE: begin
                state_next = STATE_SEND_100_RATE_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SAMPLE_100;
            end
            
            // 11
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SEND_100_RATE_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_SEND_100_RATE_ACKNOWLEDGMENT;
                end
            
            // 12    
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SEND_100_RATE_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_SET_SAMPLE_RATE_80;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
        
        // -- send 100 data rate --
        
        
        // -- send 80 data rate --
            
            // 13
            // starts to send the enter remote command to the device
            STATE_SET_SAMPLE_RATE_80: begin
                state_next = STATE_SET_SAMPLE_RATE_80_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SET_SAMPLE_COMMAND;
            end
            
            // 14
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SET_SAMPLE_RATE_80_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_SET_SAMPLE_RATE_80_ACKNOWLEDGMENT;
                end
            
            // 15    
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SET_SAMPLE_RATE_80_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_SEND_80_RATE;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
            
            // -- send 800 --
            
            // 16
            STATE_SEND_80_RATE: begin
                state_next = STATE_SEND_80_RATE_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = SAMPLE_80;
            end
            
            // 17
            // WAIT TO MAKE SURE WE HAVE CONFIRMED SENDING THE command to the mouse
            STATE_SEND_80_RATE_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_SEND_80_RATE_ACKNOWLEDGMENT;
                end
            // 18    
            //Wait for confirmation of a byte being received
            //If the byte is FA goto next state, else re-initialise.
            STATE_SEND_80_RATE_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_READ_DEVICE_ID;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end        
        
        // -- send 80 data rate --
            
        // -- check mouse ID --    
            // 19
            STATE_READ_DEVICE_ID: begin
                state_next = STATE_READ_DEVICE_ID_SENT_CONFIRMATION;
                send_byte_next = 1'b1;
                byte_to_send_next = GET_MOUSE_ID_COMMAND;
            end
                
            // 20    
            STATE_READ_DEVICE_ID_SENT_CONFIRMATION: begin
                if(BYTE_SENT)
                    state_next = STATE_READ_DEVICE_ID_ACKNOWLEDGMENT;
                end
                
            // 21    
            STATE_READ_DEVICE_ID_ACKNOWLEDGMENT: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_FA || BYTE_READ == SET_SAMPLE_ACKNOWLEDGED_F4)
                        state_next = STATE_READ_DEVICE_ID_RAW_ID;
                    else
                        state_next = STATE_MICROSOFT_FAILED;
                end
                read_enable_next = 1'b1;
            end
            
            // 22
            STATE_READ_DEVICE_ID_RAW_ID: begin
                if(BYTE_READY) begin
                    if(BYTE_READ == MOUSE_ID_MICROSOFT) begin
                        state_next = STATE_MICROSOFT_SUCCESS;
//                        microsoft_enabled_next = 1'b1;
                    end
                    else begin
                        state_next = STATE_MICROSOFT_FAILED;
//                        microsoft_enabled_next = 1'b0;
                    end
                end
                read_enable_next = 1'b1;
            end    
        // -- check mouse ID --   
        
        // -- STATE SUCCESS --
        // 23
        STATE_MICROSOFT_SUCCESS: begin
            state_next = STATE_IDLE;
//            microsoft_enabled_next = 1'b1;
            success_next = 1'b1;
            complete_next = 1'b1;
        end
    // -- STATE SUCCESS --
        
        // -- STATE FAILED --
        // 24
        STATE_MICROSOFT_FAILED: begin
            state_next = STATE_IDLE;
//            microsoft_enabled_next = 1'b0;
            success_next = 1'b0;
            complete_next = 1'b1;
        end
    // -- STATE FAILED --   
        endcase
    end
    
    assign SEND_BYTE = send_byte_current;
    assign BYTE_TO_SEND = byte_to_send_current;
    assign READ_ENABLE = read_enable_current;
    assign SUCCESS = success_current;
    assign READY = complete_next;
    assign STATE = state_current;
    
endmodule
