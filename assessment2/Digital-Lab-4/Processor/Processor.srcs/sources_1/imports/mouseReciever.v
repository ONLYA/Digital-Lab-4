`timescale 1ns / 1ps

// This Module deals with recieving data from the device

module MouseReceiver(
     //Standard Inputs
    input RESET,
    input CLK,
    //Mouse IO - CLK
    input CLK_MOUSE_IN,
    //Mouse IO - DATA
    input DATA_MOUSE_IN,
    //Control
    input READ_ENABLE,
    output [7:0] BYTE_READ,
    output [1:0] BYTE_ERROR_CODE,
    output BYTE_READY,
    // debug info
    output [2:0] STATE,
    output [7:0] BYTE_REGISTER_NEXT
 );
 
//////////////////////////////////////////////////////////
// Clk Mouse delayed to detect clock edges
    reg ClkMouseInDly;
    always@(posedge CLK)
        ClkMouseInDly <= CLK_MOUSE_IN;
//////////////////////////////////////////////////////////
    //A simple state machine to handle the incoming 11-bit codewords
    reg [2:0] Curr_State, Next_State;
    reg [7:0] Curr_MSCodeShiftReg, Next_MSCodeShiftReg;
    reg [3:0] Curr_BitCounter, Next_BitCounter;
    reg Curr_ByteReceived, Next_ByteReceived;
    reg [1:0] Curr_MSCodeStatus, Next_MSCodeStatus;
    reg [16:0] Curr_TimeoutCounter, Next_TimeoutCounter;
    
    // parameters
    localparam  STATE_CHECK_PARITY = 3'd2, 
                STATE_CHECK_START_BIT = 3'd0,
                STATE_CHECK_BYTE = 3'd1,
                STATE_CHECK_STOP_BIT = 3'd3,
                STATE_ACKNOWLEDGEMENT = 3'd4;
                
//Sequential
    always@(posedge CLK) begin
    if(RESET == 1'b1) begin
        Curr_State <= STATE_CHECK_START_BIT;
        Curr_MSCodeShiftReg <= 8'h00;
        Curr_BitCounter <= 4'd0;
        Curr_ByteReceived <= 1'b0;
        Curr_MSCodeStatus <= 2'b00;
        Curr_TimeoutCounter <= 17'd0;
    end else begin
        Curr_State <= Next_State;
        Curr_MSCodeShiftReg <= Next_MSCodeShiftReg;
        Curr_BitCounter <= Next_BitCounter;
        Curr_ByteReceived <= Next_ByteReceived;
        Curr_MSCodeStatus <= Next_MSCodeStatus;
        Curr_TimeoutCounter <= Next_TimeoutCounter;
        end
    end
    
    //Combinatorial
    always@* begin
        //defaults to make the State Machine more readable
        Next_State = Curr_State;
        Next_MSCodeShiftReg = Curr_MSCodeShiftReg;  // MS = MOUSE
        Next_BitCounter = Curr_BitCounter;
        Next_ByteReceived = 1'b0;   // set true when whople byte rec ieved
        Next_MSCodeStatus = Curr_MSCodeStatus;
        Next_TimeoutCounter = Curr_TimeoutCounter;
        
        //The states
        case (Curr_State)
            //0
            STATE_CHECK_START_BIT: begin
                //Falling edge of Mouse clock and MouseData is low i.e. start bit
                if(READ_ENABLE & ClkMouseInDly & ~CLK_MOUSE_IN & ~DATA_MOUSE_IN) begin
                    Next_State = STATE_CHECK_BYTE;
                    Next_MSCodeStatus = 2'b00;
                    Next_TimeoutCounter = 17'd0;
                end
                Next_MSCodeShiftReg = 8'd0;
                Next_BitCounter = 4'd0;
            end
            
            //1
            // Read successive byte bits from the mouse here
            STATE_CHECK_BYTE: begin
                //if(Curr_TimeoutCounter == 17'd100_000) // 1ms timeout
                    //Next_State = STATE_CHECK_START_BIT;
                if(Curr_BitCounter == 4'd8) begin // if last bit go to parity bit check
                    Next_State = STATE_CHECK_PARITY;
                    Next_BitCounter = 4'd0;
                    Next_TimeoutCounter = 17'd0;
                end else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin //Shift Byte bits in
                    Next_MSCodeShiftReg[6:0] = Curr_MSCodeShiftReg[7:1];
                    Next_MSCodeShiftReg[7] = DATA_MOUSE_IN;
                    Next_BitCounter = Curr_BitCounter + 4'd1;
                    Next_TimeoutCounter = 17'd0;
                end
            end
            
            //Check Parity Bit
            //2
            STATE_CHECK_PARITY: begin
            //Falling edge of Mouse clock and MouseData is odd parity
                if(Curr_TimeoutCounter == 17'd100_000)
                    Next_State = STATE_CHECK_START_BIT;
                else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin
                    if (DATA_MOUSE_IN != ~^Curr_MSCodeShiftReg[7:0]) // Parity bit error
                        Next_MSCodeStatus[0] = 1'b1;
                    Next_BitCounter = 4'd0;    // dupliacted code from state_check_byte
                    Next_State = STATE_CHECK_STOP_BIT;
                    Next_TimeoutCounter = 17'd0;
                    end
            end

            // Check Stop Bit
            //3
            STATE_CHECK_STOP_BIT: begin
                if(Curr_TimeoutCounter == 17'd100_000)
                    Next_State = STATE_CHECK_START_BIT;
                else if(ClkMouseInDly & ~CLK_MOUSE_IN) begin
                    if (DATA_MOUSE_IN == 1'b1) begin    // Stop bit is when data is high
                        Next_MSCodeStatus[1] = 1'b0; // WHAT TO SET TOO?
                        Next_TimeoutCounter = 17'd0;    // always auto incrimenting
                        Next_State = STATE_ACKNOWLEDGEMENT;
                    end
                end
                Next_TimeoutCounter = Curr_TimeoutCounter + 17'd1;
            end
            
            //set byte recieved = true
            //4
            STATE_ACKNOWLEDGEMENT: begin
                    Next_State = STATE_CHECK_START_BIT;
                    Next_ByteReceived = 1'b1;
            end
                
            default: begin
                Next_State = Curr_State;
                Next_MSCodeShiftReg = Curr_MSCodeShiftReg;  // MS = MOUSE
                Next_BitCounter = Curr_BitCounter;
                Next_ByteReceived = 1'b0;   // set true when whople byte rec ieved
                Next_MSCodeStatus = Curr_MSCodeStatus;
                Next_TimeoutCounter = Curr_TimeoutCounter + 17'b1;  
            end
        endcase
    end
    
    assign BYTE_READY = Curr_ByteReceived;
    assign BYTE_READ = Curr_MSCodeShiftReg;
    assign BYTE_ERROR_CODE = Curr_MSCodeStatus;
    assign STATE = Curr_State;
    assign BYTE_REGISTER_NEXT = Next_MSCodeShiftReg;
endmodule