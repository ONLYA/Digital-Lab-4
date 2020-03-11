`timescale 1ns / 1ps

//    This module is an adaptation to the MouseMasterSM 
//    which will allow integration of extra features, It controls how the device talks to the mouse.

module MouseStateMachine(
    // inputs
    input CLK,                      // host CLK
    input RESET,                    // reset the host
    input BYTE_SENT,                // have we sent the byte to device?
    input [7:0] BYTE_READ,          // what byte have we read from device
    input [1:0] BYTE_ERROR_CODE,    // what errors have we recieved
    input BYTE_READY,               // are we ready to read the byte recived from host         
    // user defined inputs
    input enter_microsoft_mode,     // 1 = enter microsoft mouse
    input enter_wrap_mode,          // 1 = enter wrap mode
    input get_remote_data,          // 1 = get the data when in remote mode
    input enter_stream_mode,        // 1 = enter stream mode
    input enter_reset_mode,         // 1 = enter reset mode and reset the mouse
    input disable_data_reporting,   // 1 = stop recieveing data by disabelling 
    input enter_remote_mode,        // 1 = enter remote mode
    input resend_data,              // 1 = resend the last packet
    // outputs
    output SEND_BYTE,               //  shall we send byte to device?
    output [7:0] BYTE_TO_SEND,      // byte to send to host    
    output READ_ENABLE,             // allow reciever to start reading
    output [7:0] MOUSE_DX,          // MouseDx value
    output [7:0] MOUSE_DY,          // MouseDy value
    output [7:0] MOUSE_DZ,          // MouseDz value
    output [7:0] MOUSE_STATUS,      // Mouse status value
    output SEND_INTERRUPT,          // interrput to be sent
    // debug info
    output [4:0] CURRENT_STATE,     // the current state of master machine
    output [3:0] REMOTE_STATE,
    output [3:0] RESET_STATE,
    output [3:0] RESEND_STATE,
    output [3:0] DATA_STATE,
    output [3:0] STREAM_STATE
);
    
    localparam  STATE_IDLE = 0,
                STATE_RESET = 8,
                STATE_CHOOSE_MODE = 1,
                
                STATE_ENTRE_STREAM_MODE = 2,
                STATE_ENTER_MICROSOFT_MOUSE = 3,
                STATE_ENTER_WRAP_MODE = 4,
                STATE_ENTER_REMOTE_MODE = 5,            
                
                STATE_3_BYTE_CONTINUOUS_DATA = 5,    // continuously get 3 byte data
                STATE_4_BYTE_CONTINUOUS_DATA = 6,    // continuously get 4 byte data
                STATE_REMOTE_CONTINUOUS_DATA = 7;  // here we will only get the data when 'get_wrap_data' == 1'b1
    
    // state registers            
    reg [3:0] state_current, state_next;
    
    // successes that comes from modules completing
    wire    reset_success, stream_success, wrap_success, 
            micro_success, remote_success,
            cont_3_success, cont_4_success, remote_data_success;
    
    // send bytes?, if yes then the module allows the host to read mouse bytes 
    reg     send_byte;  // outputted data form this module 
    wire    send_byte_reset, 
            send_byte_stream,
            send_byte_wrap,
            send_byte_micro;
    
    //enable read, allows the module to read bytes recieved from the mouse
    reg     enable_read;            // outputted data form this module
    wire    enable_read_reset,
            enable_read_stream,
            enable_read_wrap,
            enable_read_micro,
            enable_data_read;
    
    // byte to send that come from the bytes themsleves modules want to send
    reg [7:0]   byte_to_send;   // outputted data form this module                       
    wire [7:0]  byte_to_send_reset, 
                byte_to_send_stream,
                byte_to_send_wrap,
                byte_to_send_micro,
                byte_to_send_resend;
    
    // data from continuous data
    reg [7:0]   mouse_status, mouse_x, mouse_y, mouse_z;                // outputted data form this module
    wire [7:0]  mouse_status_3, mouse_x_3, mouse_y_3,                   // for 3 byte data
                mouse_status_4, mouse_x_4, mouse_y_4, mouse_z_4,        // for 4 byte data
                mouse_status_remote, mouse_x_remote, mouse_y_remote;    // for remote data
    
    // what the resent packet was
    wire [7:0] resent_packet;
    
    // enable registers, where if its 1 then the module will work as intended
    reg reset_enable_current, reset_enable_next,
        stream_enable_current, stream_enable_next,
        wrap_enable_current, wrap_enable_next,
        remote_enable_current, remote_enable_next,
        micro_enable_current, micro_enable_next,
        continuous_3_enable_current, continuous_3_enable_next,
        continuous_4_enable_current, continuous_4_enable_next;
    
    // tells us whether the sub-modules have completed    
    wire    ready_remote, ready_reset, ready_resend,
            ready_stream ,ready_microsoft,
            ready_cont_3, ready_cont_4,
            ready_remote_data;
    
    // mode that determines what data the data module gives us
    reg [1:0]   mode_current, mode_next;
    
    // states for sub-modules
    wire [3:0]  reset_state,    remote_state,
                stream_state,   resend_state,
                data_state;
    
    // -- Modules --     
    Reset_Mouse reset(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(reset_enable_current),
        // outputs
        .SEND_BYTE(send_byte_reset),
        .BYTE_TO_SEND(byte_to_send_reset),
        .READ_ENABLE(enable_read_reset),
        .SUCCESS(reset_success),
        .READY(ready_reset),
        .STATE(reset_state)
    );
    
    Stream_Mode stream(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .RESEND_DATA(RESEND_DATA),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(stream_enable_current),
        // outputs
        .SEND_BYTE(send_byte_stream),
        .BYTE_TO_SEND(byte_to_send_stream),
        .READ_ENABLE(enable_read_stream),
        .SUCCESS(stream_success),
        .READY(ready_stream),
        .STATE(stream_state)
    );
    
    Remote_Mode remote(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .RESEND_DATA(RESEND_DATA),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(remote_enable_current),
        // outputs
        .SEND_BYTE(send_byte_remote),
        .BYTE_TO_SEND(byte_to_send_remote),
        .READ_ENABLE(enable_read_remote),
        .SUCCESS(remote_success),
        .READY(ready_remote),
        .STATE(remote_state)
    );
    
    Resend resend(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .RESEND_DATA(RESEND_DATA),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(resend_enable_current),
        // outputs
        .SEND_BYTE(send_byte_resend),
        .BYTE_TO_SEND(byte_to_send_resend),
        .READ_ENABLE(enable_read_resend),
        .SUCCESS(resend_success),
        .RESENT_PACKET(resent_packet),
        .READY(ready_resend),
        .STATE(resend_state)
    );
    
    Microsoft_Mode microsoft(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .RESEND_DATA(RESEND_DATA),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(micro_enable_current),
        // outputs
        .SEND_BYTE(send_byte_micro),
        .BYTE_TO_SEND(byte_to_send_micro),
        .READ_ENABLE(enable_read_micro),
        .SUCCESS(microsoft_success),
        .READY(ready_microsoft)
    );
    
    Mouse_Data data(
        // inputs
        .CLK(CLK),
        .RESET(RESET), 
        .ENABLE(continuous_3_enable_current),
        .BYTE_READY(BYTE_READY),       // are we ready to read the byte
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READ(BYTE_READ),  // byte we have read
        .MODE(mode_current),
        //outputs
        .READ_ENABLE(enable_data_read),
        .STATUS(mouse_status_3),
        .X(mouse_x_3),         // raw x value
        .Y(mouse_y_3),         // raw y value
        .Z(mouse_z_3),         // raw z value
        .READY(ready_cont_3),  //have we recieved all the data needed?
        .STATE(data_state)
    );
    
    // -- Modules --     
    
    always@(posedge CLK) begin
        if (RESET == 1'b1) begin
            state_current <= STATE_IDLE;
            
            reset_enable_current <= 1'b0;
            wrap_enable_current <= 1'b0;
            remote_enable_current <= 1'b0;
            micro_enable_current <= 1'b0;        
        end 
        else begin
            state_current <= state_next;
            
            reset_enable_current <= reset_enable_next;
            wrap_enable_current <= wrap_enable_next;
            remote_enable_current <= remote_enable_next;
            micro_enable_current <= micro_enable_next;
        end
    end
            
    always@(*) begin
        state_next = state_current;
        reset_enable_next = 1'b0;
        wrap_enable_next = 1'b0;
        remote_enable_next = 1'b0;
        micro_enable_next = 1'b0;
        
        case(state_current)
            
            // 0
            STATE_IDLE: begin
                state_next = STATE_RESET;
            end
            
            STATE_RESET: begin
                reset_enable_next = 1'b1;
                                      
                byte_to_send = byte_to_send_reset;
                send_byte = send_byte_reset;
                enable_read = enable_read_reset;
                
                if (ready_reset == 1'b1) begin
                    if (reset_success == 1'b1) begin
                        state_next = STATE_CHOOSE_MODE;
                    end
                end
            end
            
            //1
            // choose a mode for the mouse to be in
            STATE_CHOOSE_MODE: begin
                // enter streaming mode
                if (enter_stream_mode == 1'b1) begin
                    state_next = STATE_3_BYTE_CONTINUOUS_DATA;
                    stream_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_stream;
                    send_byte = send_byte_stream;
                    enable_read = enable_read_stream;  
                end
                
                // enter the microsoft mode where we can use scroll wheel (Z-axis)
                else if (enter_microsoft_mode == 1'b1) begin
                    state_next = STATE_ENTER_MICROSOFT_MOUSE;    
                    micro_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_micro;
                    send_byte = send_byte_micro;
                    enable_read = enable_read_micro;                     
                end
                
                // reset the mouse
                else if (enter_reset_mode == 1'b1) begin
                    state_next = STATE_IDLE;   
                    reset_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_reset;
                    send_byte = send_byte_reset;
                    enable_read = enable_read_reset;
                end
                
                // enter remote mode of the mouse
                else if (enter_remote_mode == 1'b1) begin
                    state_next = STATE_ENTER_REMOTE_MODE;   
                    remote_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_remote;
                    send_byte = send_byte_remote;
                    enable_read = enable_read_remote;
                end
                
            end
            
            // -- MODES --
            // 2
            STATE_ENTRE_STREAM_MODE: begin
                if (stream_success == 1'b1 && ready_stream == 1'b1) begin
                    state_next = STATE_3_BYTE_CONTINUOUS_DATA;
                    stream_enable_next= 1'b0;
                    mode_next = 2'd0;
                    
                    enable_read = enable_data_read;
                end
            end
            
            //3
            STATE_ENTER_MICROSOFT_MOUSE: begin
                if (micro_success == 1'b1 && ready_microsoft == 1'b1) begin
                    state_next = STATE_4_BYTE_CONTINUOUS_DATA;
                    micro_enable_next = 1'b0;
                    mode_next = 2'd1;
                    
                    enable_read = enable_data_read;
                end
            end
            
            //4
            STATE_ENTER_REMOTE_MODE: begin
                if (remote_success ==  1'b1 && ready_remote == 1'b1) begin
                    state_next = STATE_REMOTE_CONTINUOUS_DATA;
                    remote_enable_next = 1'b0;
                    mode_next = 2'd2;
                    
                    enable_read = enable_data_read;
                end
            end
            // -- MODES --
            
            // -- DATA --
            //5
            STATE_3_BYTE_CONTINUOUS_DATA: begin
                if (ready_cont_3 == 1'b1) begin
                    mouse_status = mouse_status_3;
                    mouse_x = mouse_x_3;
                    mouse_y = mouse_y_3;
                    mouse_z = 8'd0;
                end    
            end
            
            //6
            STATE_4_BYTE_CONTINUOUS_DATA: begin
                if (ready_cont_3 == 1'b1) begin
                    mouse_status = mouse_status_4;
                    mouse_x = mouse_x_4;
                    mouse_y = mouse_y_4;
                    mouse_z = mouse_z_4;
                end    
            end
            
            //7
            STATE_REMOTE_CONTINUOUS_DATA: begin
                if (ready_remote_data == 1'b1) begin
                    mouse_status = mouse_status_remote;
                    mouse_x = mouse_x_remote;
                    mouse_y = mouse_y_remote;
                end    
            end
            // -- DATA --
            
        endcase  
    end

    assign SEND_BYTE = send_byte;                   //  shall we send byte to device?
    assign BYTE_TO_SEND = byte_to_send;             // byte to send to host    
    assign READ_ENABLE = enable_read;               // allow reciever to start reading
    assign MOUSE_DX = mouse_x;                      // MouseDx value
    assign MOUSE_DY = mouse_y;                      // MouseDy value
    assign MOUSE_STATUS = mouse_status;             // Mouse status value
    assign MOUSE_DZ = mouse_z;                      // MouseDz value
    assign SEND_INTERRUPT = 1'b0;                   // interrput to be sent
    // state assignments
    assign CURRENT_STATE = state_current;  
    assign REMOTE_STATE = remote_state;
    assign RESET_STATE = reset_state;
    assign RESEND_STATE = resend_state;
    assign DATA_STATE = data_state;
    assign STREAM_STATE = stream_state;
    
endmodule
