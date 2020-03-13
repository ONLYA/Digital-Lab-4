`timescale 1ns / 1ps

// This module deals with obtaining the x, y, z and status values from the device

module Mouse_Data(
    // inputs
    input CLK,
    input RESET, 
    input ENABLE,
    input BYTE_READY,       // are we ready to read the byte
    input [1:0] BYTE_ERROR_CODE,
    input [7:0] BYTE_READ,  // byte we have read
    input [0:0] MODE,       // 0 = 3 BYTES, 1 = 4 BYTES, 2 = REMOTE MODE (3 BYTES)
    //outputs
    output READ_ENABLE,         // shall we read the next byte?
    output [7:0] STATUS,
    output [7:0] X,         // raw x value
    output [7:0] Y,         // raw y value
    output [7:0] Z,         // raw z value
    output READY,            //have we recieved all the data needed?
    output [2:0] STATE,
    output Interrupt
    );
    
    
    // different states
    localparam  STATE_GET_STATUS_BYTE = 0,
                STATE_GET_DX_BYTE = 1, 
                STATE_GET_DY_BYTE = 2, 
                STATE_GET_DZ_BYTE = 3,
                STATE_INTERRUPT = 4,
                STATE_IDLE = 5;
    
    // values we are looking for
    reg [7:0]   status_current, status_next,
                x_current, x_next,
                y_current, y_next,
                z_current, z_next;
    
    reg ready_current, ready_next;
    reg [2:0] state_current, state_next;
    reg send_interrupt_current, send_interrupt_next;
    reg read_byte_current, read_byte_next; // shall we read the next byte?
    
    always@(posedge CLK) begin
        if (RESET == 1'b1) begin
            state_current <= STATE_IDLE;
            status_current <= 8'd0;
            x_current <= 8'd0;
            y_current <= 8'd0;
            z_current <= 8'd0;
            ready_current <= 1'b0;
            read_byte_current <= 1'b0;
            send_interrupt_current <= 1'b0;
        end
        else begin
            state_current <= state_next;
            status_current <= status_next;
            x_current <= x_next;
            y_current <= y_next;
            z_current <= z_next;
            ready_current <= ready_next; 
            read_byte_current <= read_byte_next;
            send_interrupt_current = send_interrupt_next;
        end
    end
    
    always@(*) begin
        state_next = state_current;
        status_next = status_current;
        x_next = x_current;
        y_next = y_current;
        z_next = z_current;
        ready_next = ready_current; 
        read_byte_next = 1'b0;
        send_interrupt_next = 1'b0;
        
        case(state_current)
        
            STATE_IDLE: begin
                if (ENABLE == 1'b1)
                    state_next = STATE_GET_STATUS_BYTE;
            end
        
            STATE_GET_STATUS_BYTE: begin
                if(BYTE_READY) begin   // remove error codes -> BYTE_ERROR_CODE == 2'b00)  
                    // ensure we have the status byte in the beginning
                    if (BYTE_READ[2] == 1'b0 && BYTE_READ[3] == 1'b1) begin
                        state_next = STATE_GET_DX_BYTE;
                        status_next = BYTE_READ;
                    end
                end
                read_byte_next = 1'b1;
            end
                
            //Wait for confirmation of a byte being received
            //This byte will be the second of three, the Dx byte.
            //10
            STATE_GET_DX_BYTE: begin
                if(BYTE_READY) begin
                    x_next = BYTE_READ;
                    state_next = STATE_GET_DY_BYTE;
                end
                read_byte_next = 1'b1;
                
            end
                
            //Wait for confirmation of a byte being received
            //This byte will be the third of three, the Dy byte.
            //11
            STATE_GET_DY_BYTE: begin
                if(BYTE_READY) begin
                    y_next = BYTE_READ;
                    // check whether we are in mode to read Dz byte
                    if (MODE == 1'd1)
                        state_next = STATE_GET_DZ_BYTE;
                    else begin
                        state_next = STATE_INTERRUPT;
                        ready_next = 1'b1;
                    end
                end
                read_byte_next = 1'b1;
            end
            
            STATE_GET_DZ_BYTE: begin
                if(BYTE_READY) begin
                    z_next = BYTE_READ;
                    state_next = STATE_INTERRUPT;
                    ready_next = 1'b1;
                end
                read_byte_next = 1'b1;
            end
            
            //12
            //Send Interrupt State
            STATE_INTERRUPT: begin
                state_next = STATE_GET_STATUS_BYTE;
                send_interrupt_next = 1'b1;
                ready_next = 1'b1;
            end
            
            default: begin
                state_next = state_current;
                status_next = status_current;
                x_next = x_current;
                y_next = y_current;
                z_next = z_current;
                ready_next = ready_current; 
                read_byte_next = read_byte_current;
                send_interrupt_next = 1'b0;
            end
            
        endcase
    end
    
    assign STATUS = status_current; // raw status value
    assign X = x_current;           // raw x value
    assign Y = y_current;           // raw y value
    assign Z = z_current;           // raw z value
    assign READY = ready_current;
    assign READ_ENABLE = read_byte_current;
    assign STATE = state_current;
    assign Interrupt = send_interrupt_current;
   
endmodule
