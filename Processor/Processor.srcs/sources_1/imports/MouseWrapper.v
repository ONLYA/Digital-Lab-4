`timescale 1ns / 1ps

// connects all the modules up together
// includes MouseTransciever, Seven Seg display and Button clicker

module MouseWrapper(
    //Standard Inputs
    input RESET,
    input CLK,
    input [11:0] switches,
    input BTNR, // displays a J
    input BTNU, // MOves the J and changes it's colour
    input BTNL, // changes the J colour
    //IO - Mouse side
    inout CLK_MOUSE,
    inout DATA_MOUSE,
    // outpus
    output [3:0] SEG_SELECT_OUT,
    output [7:0] HEX_OUT,
    output [15:0] LEDS,
    output HS,
    output VS, 
    output [11:0] COLOUR_OUT
    );
    
    // define connection wires between modules
    
    wire [7:0] mouse_x, mouse_y;
    
    // -- Mouse Transceiver Module --
    wire left_button_clicked, right_button_clicked;
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
            .enter_microsoft_mode(switches[0]),                 // 1 = enter microsoft mouse
            .enter_remote_mode(switches[1]),                    // 1 = enter remote mode
            .enable_remote_data_retrieval(switches[2]),         // 1 = get the data when in remote mode
            .enter_stream_mode(switches[3]),                    // 1 = enter stream mode
            .enter_reset_mode(switches[4]),                     // 1 = enter reset mode and reset the mouse
            .disable_data_reporting(switches[5]),               // 1 = stop recieveing data by disabelling     
            .resend_data(switches[7]),                          // 1 = resend last transmission packet from device
            .enter_wrap_mode(switches[8]),                      // 1 = enter wrap mode
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
            .MouseStatusReduced(mouse_status_raw_byte_reduced),
            // buttons
            .LEFT_BUTTON(left_button_clicked),
            .RIGHT_BUTTON(right_button_clicked),
            // debug info
            .BYTE_RECIEVED(byte_recieved)
        );
    // -- Mouse Transceiver Module --
    
    
    // -- 7 Segment Module --
    wire [3:0] seg_select_out;
    wire ENABLE = 1'b1;  // enable always high because we want to always see 7 seg display
    wire [3:0] digit_0, digit_1, digit_2, digit_3;
    Wrapper_SevenSeg Seven_Segment(
        // inputs
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(ENABLE),
        .digit0(mouse_x_raw_byte[3:0]),
        .digit1(mouse_x_raw_byte[7:4]),
        .digit2(mouse_y_raw_byte[3:0]),
        .digit3(mouse_y_raw_byte[7:4]),
        // output
        .SEG_SELECT_OUT(SEG_SELECT_OUT),
        .HEX_OUT(HEX_OUT)
    );    
    // -- 7 Segment Module --
    
    // -- Button Clicking --
    wire [7:0] right_clicks, left_clicks;
    ButtonClicking btn_clicks(
        .CLK(CLK),
        .RESET(RESET),
        .left_btn_clicked(left_button_clicked), // boolean for it left button has been clicked
        .right_btn_clicked(right_button_clicked),
        .byte_recieved(byte_recieved),
        .left_btn_clicks(left_clicks[3:0]), // counter for how many times left button has been clicked
        .right_btn_clicks(right_clicks[3:0])    
    );
    // -- Button Clicking --
    
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
    
    // -- vga to see mouse --
    VGA_Wrapper vga(
        .CLK(CLK),      // clock at 100MHz
        .RESET(RESET),    // reset button, button down
        .switches(switches),  // input form slide switches
        .scroll_wheel(mouse_z_coordinate_original[3:0]),
        .BTNR(BTNR), // displays a J
        .BTNU(BTNU), // MOves the J and changes it's colour
        .BTNL(BTNL), // changes the J colour
        .BTNC(1'b0), // chnages the screens colour
        .Mouse_X_Coordinate(mouse_x_coordinate), //coordinate for X mouse cooridnate
        .Mouse_Y_Coordinate(mouse_y_coordinate), // coordinate for Y mouse coordinate
        // outpus
        .HS(HS),
        .VS(VS),
        .COLOUR_OUT(COLOUR_OUT)
        ); 
    // -- vage to see mouse --
    
    
    
    assign LEDS = {mouse_z_coordinate_original, right_clicks[1:0], left_clicks[1:0], mouse_status_reduced};
    
endmodule
