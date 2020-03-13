`timescale 1ns / 1ps

// connects all the modules up together
// includes MouseTransciever, Seven Seg display and Button clicker

module MouseWrapper(
    //Standard Inputs
    input RESET,
    input CLK,
    //IO - Mouse side
    inout CLK_MOUSE,
    inout DATA_MOUSE,
    // outpus
    output [5:0] status,
    output [7:0] x_coordinate,
    output [7:0] y_coordinate,
    output [7:0] z_value,
    output interrupt            // interrupt when the mouse is moved
    );
    
    // define connection wires between modules
    
    wire [7:0] mouse_x, mouse_y;
    
    // -- Mouse Transceiver Module --
    wire [5:0] mouse_status_reduced;
    wire [7:0] mouse_status_raw_byte;
    wire [7:0] mouse_x_coordinate_original, mouse_x_coordinate, 
               mouse_y_coordinate_original, mouse_y_coordinate,
               mouse_z_coordinate_original, mouse_z_coordinate;
               
    wire [7:0] mouse_x_raw_byte, mouse_y_raw_byte, mouse_z_raw_byte;
    wire byte_recieved;

    Transceiver T(
            //Standard Inputs
            .RESET(RESET),
            .CLK(CLK),
            // user input
            .enter_microsoft_mode(1'b0),                 // 1 = enter microsoft mouse
            .enter_remote_mode(1'b0),                    // 1 = enter remote mode
            .enable_remote_data_retrieval(1'b0),         // 1 = get the data when in remote mode
            .enter_stream_mode(1'b0),                    // 1 = enter stream mode
            .enter_reset_mode(1'b0),                     // 1 = enter reset mode and reset the mouse
            .disable_data_reporting(1'b0),               // 1 = stop recieveing data by disabelling     
            .resend_data(1'b0),                          // 1 = resend last transmission packet from device
            .enter_wrap_mode(1'b0),                      // 1 = enter wrap mode
            //Mouse IO - mouse side
            .CLK_MOUSE(CLK_MOUSE),
            .DATA_MOUSE(DATA_MOUSE),
            //outputs
            .MouseStatus(mouse_status_reduced),                         // raw mouse status byte
            .MouseDxRaw(mouse_x_raw_byte),                        
            .MouseDyRaw(mouse_y_raw_byte),
            .MouseDzRaw(mouse_z_raw_byte),
            // coordinates
            .Mouse_x_position(mouse_x_coordinate_original),
            .Mouse_y_position(mouse_y_coordinate_original),
            .Mouse_z_position(mouse_z_coordinate_original),
            .INTERRUPT(interrupt),
            // buttons
            .LEFT_BUTTON(left_button_clicked),
            .RIGHT_BUTTON(right_button_clicked),
            // debug info
            .BYTE_RECIEVED(byte_recieved)
        );
    // -- Mouse Transceiver Module --
    
    
    // -- Mouse position Module --
    MousePosition mouse_position(
        .CLK(CLK),
        .RESET(RESET),
        .Mouse_x(mouse_x_coordinate_original),
        .Mouse_y(mouse_y_coordinate_original),
        .byte_recieved(byte_recieved),
        .Mouse_x_out(mouse_x_coordinate),
        .Mouse_y_out(mouse_y_coordinate)
    );
    // -- Mouse position Module -- 
    
    assign x_coordinate = mouse_x_coordinate_original;
    assign y_coordinate = mouse_y_coordinate_original;
    assign z_value      = mouse_z_coordinate_original;
    assign status       = mouse_status_reduced;
       
endmodule
