`timescale 1ns / 1ps

// this module connects the Mouse: Receiver, Transmitter, StateMachine and coordinates together 

module Transceiver(
        //Standard Inputs
        input RESET,
        input CLK,
        // user input
        input enter_microsoft_mode,                 // 1 = enter microsoft mouse
        input enter_wrap_mode,                      // 1 = enter wrap mode
        input enable_remote_data_retrieval,         // 1 = get the data when in remote mode
        input enter_stream_mode,                    // 1 = enter stream mode
        input enter_reset_mode,                     // 1 = enter reset mode and reset the mouse
        input disable_data_reporting,               // 1 = stop recieveing data by disabelling 
        input enter_remote_mode,            
        input resend_data,                          // 1 = resend the last packet
        //IO - Mouse side
        inout CLK_MOUSE,
        inout DATA_MOUSE,
        // Mouse data information
        output [5:0] MouseStatus,
        output [7:0] MouseDxRaw,
        output [7:0] MouseDyRaw,
        output [7:0] MouseDzRaw,
        // mouse positional info
        output [7:0] Mouse_x_position,
        output [7:0] Mouse_y_position,
        output [7:0] Mouse_z_position,
        output [7:0] MouseStatusReduced,
        // mouse buttons
        output LEFT_BUTTON,
        output RIGHT_BUTTON,
        // debug info
        output BYTE_RECIEVED
    );
    
    /////////////////////////////////////////////////////////////////////
    //TriState Signals
    //Clk
    reg ClkMouseIn;
    wire ClkMouseOutEnTrans;
    //Data
    wire DataMouseIn;
    wire DataMouseOutTrans;
    wire DataMouseOutEnTrans;
    //Clk Output - can be driven by host or device
    assign CLK_MOUSE = ClkMouseOutEnTrans ? 1'b0 : 1'bz;    // change 1'b0 to 10 Khz clock?
    //Clk Input
    assign DataMouseIn = DATA_MOUSE;
    //Clk Output - can be driven by host or device
    assign DATA_MOUSE = DataMouseOutEnTrans ? DataMouseOutTrans : 1'bz;
    
    // define the MouseX, MouseY
    reg [7:0] MouseX, MouseY, MouseZ;
    
    /////////////////////////////////////////////////////////////////////
    //This section filters the incoming Mouse clock to make sure that
    //it is stable before data is latched by either transmitter
    //or receiver modules
    reg [7:0]MouseClkFilter;
    always@(posedge CLK) begin
        if(RESET)
            ClkMouseIn <= 1'b0;
        else begin
            //A simple shift register
            MouseClkFilter[7:1] <= MouseClkFilter[6:0];
            MouseClkFilter[0] <= CLK_MOUSE;
            //falling edge
            if(ClkMouseIn & (MouseClkFilter == 8'h00))
                ClkMouseIn <= 1'b0;
            //rising edge
            else if(~ClkMouseIn & (MouseClkFilter == 8'hFF))
                ClkMouseIn <= 1'b1;
        end
    end
        
    ///////////////////////////////////////////////////////
    //Instantiate the Transmitter module
    wire SendByteToMouse;
    wire ByteSentToMouse;    
    wire [7:0] ByteToSendToMouse;
    wire [3:0] TRANSMITTER_STATE;
    MouseTransmitter T(
        //Standard Inputs
        .RESET(RESET),
        .CLK(CLK),
        .CLK_MOUSE_IN(ClkMouseIn),
        .CLK_MOUSE_OUT_EN(ClkMouseOutEnTrans),  //output
        //Mouse IO - DATA
        .DATA_MOUSE_IN(DataMouseIn),
        .DATA_MOUSE_OUT(DataMouseOutTrans), //output
        .DATA_MOUSE_OUT_EN(DataMouseOutEnTrans), //output
        //Control
        .SEND_BYTE(SendByteToMouse),
        .BYTE_TO_SEND(ByteToSendToMouse),
        .BYTE_SENT(ByteSentToMouse),
        .STATE(TRANSMITTER_STATE)
    );
    ///////////////////////////////////////////////////////
    
    ///////////////////////////////////////////////////////
    //Instantiate the Receiver module
    wire ReadEnable;
    wire [7:0] ByteRead;
    wire [1:0] ByteErrorCode;
    wire ByteReady;
    wire [2:0] RECIEVER_STATE;
    wire [7:0] BYTE_REGISTER_NEXT;
    MouseReceiver R(
        //Standard Inputs
        .RESET(RESET),
        .CLK(CLK),
        //Mouse IO - CLK
        .CLK_MOUSE_IN(ClkMouseIn),
        //Mouse IO - DATA
        .DATA_MOUSE_IN(DataMouseIn),
        //Control
        .READ_ENABLE(ReadEnable),
        .BYTE_READ(ByteRead),
        .BYTE_ERROR_CODE(ByteErrorCode),
        .BYTE_READY(ByteReady),
        // debug info
        .STATE(RECIEVER_STATE),
        .BYTE_REGISTER_NEXT(BYTE_REGISTER_NEXT)
    );
    ///////////////////////////////////////////////////////
    
    ///////////////////////////////////////////////////////
    //Instantiate the Mouse State Machine module
    wire [7:0] MouseStatusRaw;
    wire [7:0] MouseDxRaw;
    wire [7:0] MouseDyRaw;
    wire [7:0] MouseDzRaw;
    wire [2:0] counter_count;
    wire SendInterrupt;
    wire [3:0] MasterStateCode;
    wire Interrupt;
    
    // Debug Info
    wire [4:0] MICROSOFT_STATE;
    wire [3:0] RESET_STATE;
    wire [2:0] ENABLE_DATA_REPORTING_STATE;
    wire [2:0] DATA_STATE;
    wire [2:0] READ_DATA_STATE;
    wire [2:0] REMOTE_STATE;
    
    MouseMasterSM MSM(
        //Standard Inputs
        .RESET(RESET),
        .CLK(CLK),
        //Transmitter Interface
        .SEND_BYTE(SendByteToMouse),
        .BYTE_TO_SEND(ByteToSendToMouse),
        .BYTE_SENT(ByteSentToMouse),
        // user defined input 
        .enter_microsoft_mode(enter_microsoft_mode),
        .enter_remote_mode(enter_remote_mode),
        .enable_remote_data_retrieval(enable_remote_data_retrieval),
        //Receiver Interface
        .READ_ENABLE (ReadEnable),
        .BYTE_READ(ByteRead),
        .BYTE_ERROR_CODE(ByteErrorCode),
        .BYTE_READY(ByteReady),
        //Data Registers
        .MOUSE_STATUS(MouseStatusRaw),
        .MOUSE_DX(MouseDxRaw),
        .MOUSE_DY(MouseDyRaw),
        .MOUSE_DZ(MouseDzRaw),
        .SEND_INTERRUPT(Interrupt),
        .CURRENT_STATE(MasterStateCode),
        .MICROSOFT_STATE(MICROSOFT_STATE),
        .RESET_STATE(RESET_STATE),
        .DATA_STATE(DATA_STATE),
        .REMOTE_STATE(REMOTE_STATE),
        .ENABLE_DATA_REPORTING_STATE(ENABLE_DATA_REPORTING_STATE),
        .READ_DATA_STATE(READ_DATA_STATE)
    );
    ///////////////////////////////////////////////////////
   
   
    ///////////////////////////////////////////////////////
    //Instantiate the Mouse_Coordinates module
    wire [7:0]  Mouse_x_position_new, Mouse_y_position_new, Mouse_z_position_new;
    wire [5:0]  Mouse_status;
    
    Mouse_Coordinates coordinates(
        //inputs
        .CLK(CLK),
        .RESET(RESET), 
        // mouse data
        .MouseStatusRaw(MouseStatusRaw),
        .MouseDxRaw(MouseDxRaw),
        .MouseDyRaw(MouseDyRaw),
        .MouseDzRaw(MouseDzRaw),
        .Interrupt(Interrupt),
        // outputs
        .Mouse_x_position_new(Mouse_x_position_new),
        .Mouse_y_position_new(Mouse_y_position_new),
        .Mouse_z_position_new(Mouse_z_position_new),
        .Mouse_status(Mouse_status)
    );
    ///////////////////////////////////////////////////////
    
    ///////////////////////////////////////////////////////
    //Instantiate the ILA Debugger Module
//    ila_2 ila(
//        .clk(CLK),//clk
//        .probe0(RESET),//1
//        .probe1(CLK_MOUSE),//1
//        .probe2(DATA_MOUSE),//1
//        .probe3(READ_DATA_STATE),//4
//        .probe4({RECIEVER_STATE, MasterStateCode}), //8
//        .probe5(ByteRead), //8
//        .probe6({ReadEnable, enable_remote_data_retrieval}) //4
//    );
    ///////////////////////////////////////////////////////
    
    assign LEFT_BUTTON = MouseStatusRaw[0];
    assign RIGHT_BUTTON = MouseStatusRaw[1];
    assign BYTE_RECIEVED = ByteReady;
    // raw mouse data
    assign MouseStatus = MouseStatusRaw;
    assign MouseDxRaw = MouseDxRaw;
    assign MouseDyRaw = MouseDyRaw;
    assign MouseDzRaw = MouseDzRaw;
    // coordinates info
    assign Mouse_y_position = Mouse_y_position_new;
    assign Mouse_x_position = Mouse_x_position_new;
    assign Mouse_z_position = Mouse_z_position_new;
    assign MouseStatusReduced = Mouse_status;
    
endmodule
