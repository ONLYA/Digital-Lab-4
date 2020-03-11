`timescale 1ns / 1ps

// This module deals with sending data to the device

module MouseTransmitter(
    //Standard Inputs
    input RESET,
    input CLK,
    //Mouse IO - CLK
    input CLK_MOUSE_IN,
    output CLK_MOUSE_OUT_EN, // Allows for the control of the Clock line
    //Mouse IO - DATA
    input DATA_MOUSE_IN,
    output DATA_MOUSE_OUT,
    output DATA_MOUSE_OUT_EN,
    //Control
    input SEND_BYTE,
    input [7:0] BYTE_TO_SEND,
    output BYTE_SENT,
    output [3:0] STATE
 );
    //////////////////////////////////////////////////////////
    // Clk Mouse delayed to detect clock edges
    reg ClkMouseInDly;
    always@(posedge CLK)
        ClkMouseInDly <= CLK_MOUSE_IN;
    
    //////////////////////////////////////////////////////////
    //Now a state machine to control the flow of write data
    reg [3:0] Curr_State, Next_State;
    reg Curr_MouseClkOutWE, Next_MouseClkOutWE;
    reg Curr_MouseDataOut, Next_MouseDataOut;
    reg Curr_MouseDataOutWE, Next_MouseDataOutWE;
    reg [16:0] Curr_SendCounter, Next_SendCounter;  // need to accomidate for 100,000 so set to 17 bits
    reg Curr_ByteSent, Next_ByteSent;
    reg [7:0] Curr_ByteToSend, Next_ByteToSend;
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET == 1'b1) begin
            Curr_State <= 4'h0;
            Curr_MouseClkOutWE <= 1'b0;
            Curr_MouseDataOut <= 1'b0;
            Curr_MouseDataOutWE <= 1'b0;
            Curr_SendCounter <= 17'd0;
            Curr_ByteSent <= 1'b0;
            Curr_ByteToSend <= 8'd0;
        end 
        else begin
            Curr_State <= Next_State;
            Curr_MouseClkOutWE <= Next_MouseClkOutWE;
            Curr_MouseDataOut <= Next_MouseDataOut;
            Curr_MouseDataOutWE <= Next_MouseDataOutWE;
            Curr_SendCounter <= Next_SendCounter;
            Curr_ByteSent <= Next_ByteSent;
            Curr_ByteToSend <= Next_ByteToSend;
        end
    end
    
    localparam          STATE_IDLE = 0,
                        STATE_BRING_CLK_LINE_LOW = 1,
                        STATE_BRING_DATA_LINE_LOW = 2,
                        STATE_START_SEND_DATA = 3,
                        STATE_SEND_DATA = 4,
                        STATE_SEND_PARITY_BIT = 5,
                        STATE_RELEASE_DATA_LINE = 6,
                        STATE_WAIT_FOR_LOW_DATA_LINE = 7 ,
                        STATE_WAIT_FOR_LOW_CLK_LINE = 8,
                        STATE_WAIT_FOR_DATA_CLK_RELEASE = 9;
                
                
    
//Combinatorial
    always@* begin
        //default values
        Next_State = Curr_State;
        Next_MouseClkOutWE = 1'b0;
        Next_MouseDataOut = 1'b0;
        Next_MouseDataOutWE = Curr_MouseDataOutWE;
        Next_SendCounter = Curr_SendCounter;
        Next_ByteSent = 1'b0;
        Next_ByteToSend = Curr_ByteToSend;
    
        case(Curr_State)
            //IDLE
            STATE_IDLE : begin  //0
                if(SEND_BYTE) begin
                    Next_State = STATE_BRING_CLK_LINE_LOW;
                    Next_ByteToSend = BYTE_TO_SEND;
                end
                Next_MouseDataOutWE = 1'b0;
            end
            
            //Bring Clock line low for at least 100 microsecs i.e. 5000 clock cycles @ 50MHz, pretty sure our clock is 100MHz -> 10,000, but are we working on 100MHz clock or 10MHz for mouse 
            STATE_BRING_CLK_LINE_LOW : begin    //1
            // test
            //if(Curr_SendCounter >= 17'd1) begin
                if(Curr_SendCounter >= 17'd10_000) begin
                    Next_State = STATE_BRING_DATA_LINE_LOW;
                    Next_SendCounter = 0;
                end 
                else begin
                    Next_SendCounter = Curr_SendCounter + 1'b1;
                    Next_MouseClkOutWE = 1'b1;
                end
            end
            
            //Bring the Data Line Low and release the Clock line
            STATE_BRING_DATA_LINE_LOW : begin //2
                Next_State = STATE_START_SEND_DATA;
                Next_MouseDataOutWE = 1'b1;
            end
            
            //Start Sending //3
            STATE_START_SEND_DATA : begin // change data at falling edge of clock, start bit = 0
                if(ClkMouseInDly & ~CLK_MOUSE_IN)
                    Next_State = STATE_SEND_DATA;
            end
            
            //4
            //Send Bits 0 to 7 - We need to send the byte
            STATE_SEND_DATA : begin // change data at falling edge of clock
                if(ClkMouseInDly & ~CLK_MOUSE_IN) begin // check for neg edge of mouse clk
                    if(Curr_SendCounter == 7) begin
                        Next_State = STATE_SEND_PARITY_BIT;
                        Next_SendCounter = 0;
                        //Next_ByteSent = 1'b1; //should this be here
                    end else
                        Next_SendCounter = Curr_SendCounter + 1'b1;
                end
                Next_MouseDataOut = Curr_ByteToSend[Curr_SendCounter];
            end
            //5
            //Send the parity bit
            STATE_SEND_PARITY_BIT : begin // change data at falling edge of clock
                if(ClkMouseInDly & ~CLK_MOUSE_IN)
                    Next_State = STATE_RELEASE_DATA_LINE;
                Next_MouseDataOut = ~^Curr_ByteToSend[7:0];
            end
            //6
            //Release Data line
            STATE_RELEASE_DATA_LINE : begin
                Next_State = STATE_WAIT_FOR_LOW_DATA_LINE;
                Next_MouseDataOutWE = 1'b0;
            end
            
            // 7
            STATE_WAIT_FOR_LOW_DATA_LINE: begin
                if (DATA_MOUSE_IN == 1'b0)
                    Next_State = STATE_WAIT_FOR_LOW_CLK_LINE;
                else
                    Next_State = STATE_WAIT_FOR_LOW_DATA_LINE;
            end
                
            // 8    
            STATE_WAIT_FOR_LOW_CLK_LINE: begin
                if (CLK_MOUSE_IN == 1'b0)
                    Next_State = STATE_WAIT_FOR_DATA_CLK_RELEASE;
                else
                    Next_State = STATE_WAIT_FOR_LOW_CLK_LINE;  
            end
            
            // 9
            STATE_WAIT_FOR_DATA_CLK_RELEASE: begin
            // how do we know when the lines have been released by the device?
                if (CLK_MOUSE_IN == 1'b1 && DATA_MOUSE_IN == 1'b1) begin // does b0 mean device has released
                    Next_State = STATE_IDLE;
                    Next_ByteSent = 1'b1;
                    end
                else
                    Next_State = STATE_WAIT_FOR_DATA_CLK_RELEASE;
            end
            
            default: begin
                Next_State = Curr_State;
                Next_MouseClkOutWE = 1'b0;
                Next_MouseDataOut = 1'b0;
                Next_MouseDataOutWE = Curr_MouseDataOutWE;
                Next_SendCounter = Curr_SendCounter;
                Next_ByteSent = 1'b0;
                Next_ByteToSend = Curr_ByteToSend;      
            end
        endcase
    end
    
    ///////////////////////////////////////////////////////////////
    //Assign OUTPUTs
    //Mouse IO - CLK
    assign CLK_MOUSE_OUT_EN = Curr_MouseClkOutWE;
    //Mouse IO - DATA
    assign DATA_MOUSE_OUT = Curr_MouseDataOut;
    assign DATA_MOUSE_OUT_EN = Curr_MouseDataOutWE;
    //Control
    assign BYTE_SENT = Curr_ByteSent;
    assign STATE = Curr_State;
    
endmodule

