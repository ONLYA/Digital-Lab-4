`timescale 1ns / 1ps

// This module controls how the device talks to the mouse.

module MouseMasterSM(
    input CLK,
    input RESET,
    //Transmitter Control
    output SEND_BYTE,
    output [7:0] BYTE_TO_SEND,
    input BYTE_SENT,
    // user defined input 
    input enter_microsoft_mode,
    input enter_remote_mode,
    input enable_remote_data_retrieval,
    //Receiver Control
    output READ_ENABLE,
    input [7:0] BYTE_READ,
    input [1:0] BYTE_ERROR_CODE,
    input BYTE_READY,
    input RESEND_DATA,
    //Data Registers
    output [7:0] MOUSE_DX,
    output [7:0] MOUSE_DY,
    output [7:0] MOUSE_DZ,
    output [7:0] MOUSE_STATUS,
    output SEND_INTERRUPT,
    // debug info
    output [2:0] CURRENT_STATE,
    output [4:0] MICROSOFT_STATE,
    output [3:0] RESET_STATE,
    output [2:0] DATA_STATE,
    output [2:0] REMOTE_STATE,
    output [2:0] ENABLE_DATA_REPORTING_STATE,
    output [2:0] READ_DATA_STATE
);

//  -- Operation of State Machine --
// 1. Reset the Device
// 2. Check if we want to enter microsoft mouse mode, if so then enter that state else enter enable data reporting state.
// 3. After successeful completion of enabeling microsoft mouse, enable data reporting.
// 4. After enabling data reporting, start getting the mouse data
// 5. Continuously retrieve the mouse data    
//  -- Operation of State Machine --
                
    // States for entering modules
    localparam  STATE_INITIALISE = 0,
                STATE_CHOOSE_MODE = 1,
                STATE_ENTER_RESET_MODE = 2,
                STATE_ENTER_REMOTE_MODE = 3,
                STATE_ENTER_MICROSOFT_MODE = 4,
                STATE_ENABLE_DATA_REPORTING = 5,
                STATE_GET_MOUSE_DATA = 6,
                STATE_ENTER_READ_DATA = 7;

    
    //State Control
    reg [3:0] state_current, state_next;
    reg [23:0] counter_current, counter_next;
    //Transmitter Control
    reg send_byte_current, send_byte_next;
    reg [7:0] byte_to_send_current, byte_to_send_next;
    //Receiver Control
    reg read_enable_current, read_enable_next;
    
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////// Moudles
    //send bytes?, if yes then the module allows the host to read mouse bytes 
    reg     send_byte;  // outputted data form this module 
    wire    send_byte_reset, 
            send_byte_stream,
            send_byte_wrap,
            send_byte_micro;
    
    //enable read, allows the module to read bytes recieved from the mouse
    reg     read_enable;            // outputted data form this module
    wire    read_enable_reset,
            read_enable_stream,
            read_enable_wrap,
            read_enable_micro,
            enable_data_read;
    
    // byte to send that come from the bytes themsleves modules want to send
    reg [7:0]   byte_to_send;   // outputted data form this module                       
    wire [7:0]  byte_to_send_reset, 
                byte_to_send_stream,
                byte_to_send_wrap,
                byte_to_send_micro,
                byte_to_send_resend;
                
// enable registers, where if its 1 then the module will work as intended
    
    // -- Microsoft Module --
    reg     micro_enable_current, micro_enable_next;
    wire    send_byte_micro, 
            read_enable_micro,
            microsoft_success,
            ready_Microsoft;
            
    wire [7:0] byte_to_send_micro;
    wire [4:0] micro_state;
    
    Microsoft_Mode microsoft(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(micro_enable_current),
        // outputs
        .SEND_BYTE(send_byte_micro),
        .BYTE_TO_SEND(byte_to_send_micro),
        .READ_ENABLE(read_enable_micro),
        .SUCCESS(microsoft_success),
        .READY(ready_microsoft),
        .STATE(micro_state)
    );
    // -- Microsoft Module --
    
    // -- Reset Module --
    reg     reset_enable_current, reset_enable_next;
    wire    send_byte_reset, 
            read_enable_reset,
            reset_success,
            ready_reset;
    wire [7:0] byte_to_send_reset;
    wire [3:0] reset_state;
        
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
        .READ_ENABLE(read_enable_reset),
        .SUCCESS(reset_success),
        .READY(ready_reset),
        .STATE(reset_state)
    );
    // -- Reset Module --
    
    // -- Mouse Data Handeling Module --
    wire [7:0] status, x_data, y_data, z_data;
    wire interrupt;
    
    reg     data_enable_current, data_enable_next;
    wire    send_byte_data, 
            read_enable_data,
            data_success,
            ready_data;
    wire [7:0] byte_to_send_data;
    wire [3:0] data_state;
    wire interrupt;
    Mouse_Data data(
            // inputs
            .CLK(CLK),
            .RESET(RESET), 
            .ENABLE(data_enable_current),
            .BYTE_READY(BYTE_READY),       // are we ready to read the byte
            .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
            .BYTE_READ(BYTE_READ),  // byte we have read
            .MODE(microsoft_success),
            //outputs
            .READ_ENABLE(read_enable_data),
            .STATUS(status),
            .X(x_data),         // raw x value
            .Y(y_data),         // raw y value
            .Z(z_data),         // raw z value
            .READY(ready_data),  //have we recieved all the data needed?
            .STATE(data_state),
            .Interrupt(interrupt)
        );
    // -- Mouse Data Handeling Module --
    
    // -- Remote Module --
    reg     remote_enable_current, remote_enable_next;
    wire    send_byte_remote, 
            read_enable_remote,
            remote_success,
            ready_remote;
    wire [7:0] byte_to_send_remote;
    wire [2:0] remote_state;
    Remote_Mode remote(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(remote_enable_current),
        // outputs
        .SEND_BYTE(send_byte_remote),
        .BYTE_TO_SEND(byte_to_send_remote),
        .READ_ENABLE(read_enable_remote),
        .SUCCESS(remote_success),
        .READY(ready_remote),
        .STATE(remote_state)
    );
    // -- Remote Module --
    
    // -- Enable Data Reporting Module --
    reg     enable_data_enable_current, enable_data_enable_next;
    wire    send_byte_enable_data, 
            read_enable_enable_data,
            enable_data_success,
            ready_enable_data;
    wire [7:0] byte_to_send_enable_data;
    wire [3:0] enable_data_state;
    Data_Reporting_Mode data_reporting(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(enable_data_enable_current),
        // outputs
        .SEND_BYTE(send_byte_enable_data),
        .BYTE_TO_SEND(byte_to_send_enable_data),
        .READ_ENABLE(read_enable_enable_data),
        .SUCCESS(enable_data_success),
        .READY(ready_enable_data),
        .STATE(enable_data_state)
    );
    // -- Enable Data Reporting Module --
    
    // -- Read Data Module --
    reg     read_data_enable_current, read_data_enable_next;
    wire    send_byte_read_data, 
            read_enable_read_data,
            read_data_success,
            ready_read_data;
    wire [7:0] byte_to_send_read_data;
    wire [3:0] read_data_state;
    Read_Remote_Data read_remote_data(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .BYTE_READ(BYTE_READ),
        .BYTE_ERROR_CODE(BYTE_ERROR_CODE),
        .BYTE_READY(BYTE_READY),
        .BYTE_SENT(BYTE_SENT),
        .ENABLE(read_data_enable_current),
        // outputs
        .SEND_BYTE(send_byte_read_data),
        .BYTE_TO_SEND(byte_to_send_read_data),
        .READ_ENABLE(read_enable_read_data),
        .SUCCESS(read_data_success),
        .READY(ready_read_data),
        .STATE(read_data_state)
    );
    // -- Read Data Module --
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    initial begin
        state_current <= STATE_INITIALISE;
    end
    
    //Sequential
    always@(posedge CLK) begin
        if(RESET) begin
            state_current <= STATE_INITIALISE;
            counter_current <= 0;
            send_byte_current <= 1'b0;
            byte_to_send_current <= 8'h00;
            read_enable_current <= 1'b0;
            // module integration
            micro_enable_current <= 1'b0;
            reset_enable_current <= 1'b0;
            data_enable_current <= 1'b0;
            remote_enable_current <= 1'b0;
            enable_data_enable_current <= 1'b0;
            read_data_enable_current <= 1'b0;
        end
        else begin
            state_current <= state_next;
            counter_current <= counter_next;
            send_byte_current <= send_byte_next;
            byte_to_send_current <= byte_to_send_next;
            read_enable_current <= read_enable_next;
            // modules
            micro_enable_current <= micro_enable_next;
            reset_enable_current <= reset_enable_next;
            data_enable_current <= data_enable_next;
            remote_enable_current <= remote_enable_next;
            enable_data_enable_current <= enable_data_enable_next;
            read_data_enable_current <= read_data_enable_next;
        end
    end

    //Combinatorial
    always@* begin
        state_next = state_current;
        counter_next = counter_current;
        send_byte_next = 1'b0;
        byte_to_send_next = byte_to_send_current;
        read_enable_next = 1'b0;        
        // module integration
        byte_to_send = byte_to_send_current;
        read_enable = read_enable_current;
        send_byte = send_byte_current;
        // ---- enabelling modules
        micro_enable_next = micro_enable_current;
        reset_enable_next = reset_enable_current;
        data_enable_next = data_enable_current;
        remote_enable_next = remote_enable_current;
        enable_data_enable_next = enable_data_enable_current;
        read_data_enable_next = read_data_enable_current;
        
        case(state_current)
            // 0
            //Initialise State - Wait here for 10ms before trying to initialise the mouse. -> FF is actaully to reset the mouse
            STATE_INITIALISE: begin
                if(counter_current >= 24'd1_000_000) begin // 1/100th sec at 50MHz clock = 500,000 100MHZ -> 25'd1_000_000
                    state_next = STATE_ENTER_RESET_MODE;
                    reset_enable_next = 1'b1;
                    byte_to_send = byte_to_send_reset;
                    read_enable = read_enable_reset;
                    send_byte = send_byte_reset;
                    counter_next = 20'd0;
                end 
                else
                    counter_next = counter_current + 20'd1;
            end
         // -- Choose A Mode  --     
            // 1
            // choose a mode for the mouse to be in
            STATE_CHOOSE_MODE: begin               
               // enter the microsoft mode where we can use scroll wheel (Z-axis)
                if (enter_microsoft_mode == 1'b1) begin
                    state_next = STATE_ENTER_MICROSOFT_MODE;    
                    micro_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_micro;
                    send_byte = send_byte_micro;
                    read_enable = read_enable_micro;                     
                end
                // enter remote mode of the mouse
                else if (enter_remote_mode == 1'b1) begin
                    state_next = STATE_ENTER_REMOTE_MODE;   
                    remote_enable_next = 1'b1;
                    
                    byte_to_send = byte_to_send_remote;
                    send_byte = send_byte_remote;
                    read_enable = read_enable_remote;
                end
                // Enable data transmitting
                else begin
                    state_next = STATE_ENABLE_DATA_REPORTING;
                    enable_data_enable_next = 1'b1;
                    byte_to_send = byte_to_send_enable_data;
                    read_enable = read_enable_enable_data;
                    send_byte = send_byte_enable_data;
                end
               
            end
        // -- Choose A Mode  --  
        
        // -- Enter Reset mode  --
            //2
            // enter reset mode
            STATE_ENTER_RESET_MODE: begin
                reset_enable_next = 1'b1;
                byte_to_send = byte_to_send_reset;
                read_enable = read_enable_reset;
                send_byte = send_byte_reset;
                
                if (ready_reset == 1'b1) begin
                    state_next = STATE_CHOOSE_MODE;
                    byte_to_send = byte_to_send_current;
                    read_enable = read_enable_current;
                    send_byte = send_byte_current;
                    reset_enable_next = 1'b0;
                end
            end 
        // -- Enter Reset mode  --  
        
        // -- Enter Remote mode  --
            //3
            STATE_ENTER_REMOTE_MODE: begin
                remote_enable_next = 1'b1;
                byte_to_send = byte_to_send_remote;
                read_enable = read_enable_remote;
                send_byte = send_byte_remote;
                
                if (ready_remote == 1'b1) begin
                // successfully entered microsoft mode
                    // determine if we are to enable microsoft mode
                    if (enter_microsoft_mode == 1'b1) begin
                        //state_next = STATE_SET_SAMPLE_RATE_200;
                        state_next = STATE_ENTER_MICROSOFT_MODE;
                        micro_enable_next = 1'b1;
                        byte_to_send = byte_to_send_micro;
                        read_enable = read_enable_micro;
                        send_byte = send_byte_micro;
                    end
                    else begin
//                        state_next = STATE_ENABLE_DATA_REPORTING;
//                        enable_data_enable_next = 1'b1;
//                        byte_to_send = byte_to_send_enable_data;
//                        read_enable = read_enable_enable_data;
//                        send_byte = send_byte_enable_data;
                        state_next = STATE_ENTER_READ_DATA;
                        read_data_enable_next = 1'b1;
                        byte_to_send = byte_to_send_read_data;
                        read_enable = read_enable_read_data;
                        send_byte = send_byte_read_data;
                    end
                end
            end 
        // -- Enter Remote mode  --
          
         
        // -- Enter Microsoft Mouse Mode  --
            //4
            STATE_ENTER_MICROSOFT_MODE: begin
                micro_enable_next = 1'b1;
                byte_to_send = byte_to_send_micro;
                read_enable = read_enable_micro;
                send_byte = send_byte_micro;
                
                if (ready_microsoft == 1'b1) begin
                    state_next = STATE_ENABLE_DATA_REPORTING;
                    enable_data_enable_next = 1'b1;
                    byte_to_send = byte_to_send_enable_data;
                    read_enable = read_enable_enable_data;
                    send_byte = send_byte_enable_data;
                end
            end 
        // -- Enter Microsoft Mouse Mode  --
        
       
        // -- ENABLE DATA REPORTING  --
            //5
            STATE_ENABLE_DATA_REPORTING: begin
                enable_data_enable_next = 1'b1;
                byte_to_send = byte_to_send_enable_data;
                read_enable = read_enable_enable_data;
                send_byte = send_byte_enable_data;
                
                if (ready_enable_data == 1'b1) begin
                    if (enable_data_success == 1'b1) begin
                        state_next = STATE_GET_MOUSE_DATA;
                        data_enable_next = 1'b1;
                        byte_to_send = byte_to_send_data;
                        read_enable = read_enable_data;
                        send_byte = send_byte_data;
                    end
                    else begin
                        state_next = STATE_INITIALISE;
                    end
                end
               
            end
            // -- ENABLE DATA REPORTING  --
           
            // -- Get Data --
            // 6
            STATE_GET_MOUSE_DATA: begin
                data_enable_next = 1'b1;
                byte_to_send = byte_to_send_data;
                read_enable = read_enable_data;
                send_byte = send_byte_data;
             
                // check if we are in remote mode
                if (ready_data == 1'b1) begin
                    if (enable_remote_data_retrieval == 1'b1) begin
                        state_next = STATE_ENTER_READ_DATA;
                        read_data_enable_next = 1'b1;
                        byte_to_send = byte_to_send_read_data;
                        read_enable = read_enable_read_data;
                        send_byte = send_byte_read_data;
                    end
                end             
            end
            // -- Get Data --
            
        // -- ENABLE DATA REPORTING --    
            // 7
            STATE_ENTER_READ_DATA: begin
                read_data_enable_next = 1'b1;
                byte_to_send = byte_to_send_read_data;
                read_enable = read_enable_read_data;
                send_byte = send_byte_read_data;
                
                if (ready_read_data == 1'b1) begin
                    if (read_data_success == 1'b1) begin
                        state_next = STATE_GET_MOUSE_DATA;
                        data_enable_next = 1'b1;
                        byte_to_send = byte_to_send_data;
                        read_enable = read_enable_data;
                        send_byte = send_byte_data;
                    end
                    else begin
                        state_next = STATE_INITIALISE;
                    end
                end
            end
        // -- ENABLE DATA REPORTING -- 
            
            //Default State
            default: begin
                state_next = state_current;
                counter_next = counter_current;
                send_byte_next = 1'b0;
                byte_to_send_next = byte_to_send_current;
                read_enable_next = 1'b0;                
                // module integration
                byte_to_send = byte_to_send_current;
                read_enable = read_enable_current;
                send_byte = send_byte_current;
                // ---- enabelling modules
                micro_enable_next = micro_enable_current;
                reset_enable_next = reset_enable_current;
                data_enable_next = data_enable_current;
                remote_enable_next = remote_enable_current;
                enable_data_enable_next = enable_data_enable_current;
                read_data_enable_next = read_data_enable_current;
            end
        endcase
    end
    
    ///////////////////////////////////////////////////
    //Tie the SM signals to the IO
    //Transmitter
    assign SEND_BYTE = send_byte;
    assign BYTE_TO_SEND = byte_to_send;
    //Receiver
    assign READ_ENABLE = read_enable;
    //Output Mouse Data
    assign MOUSE_DX = x_data;
    assign MOUSE_DY = y_data;
    assign MOUSE_DZ = z_data;
    assign MOUSE_STATUS = status;
    assign SEND_INTERRUPT = interrupt;
    assign CURRENT_STATE  = state_current;
    assign MICROSOFT_STATE = micro_state;
    assign RESET_STATE = reset_state;
    assign DATA_STATE = data_state;
    assign REMOTE_STATE = remote_state;
    assign ENABLE_DATA_REPORTING_STATE = enable_data_state;
    assign READ_DATA_STATE = read_data_state;
    
endmodule
