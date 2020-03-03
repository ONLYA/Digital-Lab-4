`timescale 1ns / 1ps

// INFO --- USED FOR DEBUGGING THUS WILL NOT CONTAIN IN-DEPTH COMMENTS OR INFORMATION

// wrapper for the VGA display

module VGA_Wrapper(
    input CLK,      // clock at 100MHz
    input RESET,    // reset button, button down
    input [11:0] switches,  // input form slide switches
    input [3:0] scroll_wheel,
    input BTNR, // displays a J
    input BTNU, // MOves the J and changes it's colour
    input BTNL, // changes the J colour
    input BTNC, // chnages the screens colour
    input [7:0] Mouse_X_Coordinate, //coordinate for X mouse cooridnate
    input [7:0] Mouse_Y_Coordinate, // coordinate for Y mouse coordinate
    output HS,
    output VS,
    output [11:0] COLOUR_OUT
    );  
    
    //#---------------------------------------------#//
    //              Definitions                      //               
    //#---------------------------------------------#//
    
    
    // DEFINE REGISTERS
    reg [11:0] colour_in_r, colour_in_nxt;
    reg [9:0] pos_counter_r,pos_counter_nxt;
    reg reset_mover;

    // DEFINE WIRES 
    wire [11:0] COLOUR_OUT_w;
    wire HS_w, VS_w;
    wire [9:0] ADDRH_w;
    wire [8:0] ADDRV_w;  
    wire sixty_herz_trig;
    wire [26:0] second_counter_value;
    wire [11:0] different_colours;
    wire INCREMENT_COLOUR;
    wire [9:0] j_mover_left;
    
    // define valiues for the horizonatl positining of the J
    parameter TopBlockHorzLeft = 260;
    parameter TopBlockHorzRight = 380;
    parameter MiddleBlockHorzLeft = 300;
    parameter MiddleBlockHorzRight = 340;
    parameter BottemBlockHorzLeft = 260;
    parameter BottemBlockHorzRight = 300;
    
    //#-----------------------------#//
    //      instantiate modules      //         
    //#-----------------------------#//  
    
    VGAInterface VGA(
        .CLK(CLK),
        .RESET(RESET),
        .COLOUR_IN(colour_in_r),
        .ADDRH(ADDRH_w),
        .ADDRV(ADDRV_w),
        .COLOUR_OUT(COLOUR_OUT_w),
        .sixty_herz_trig(sixty_herz_trig),
        .HS(HS_w),
        .VS(VS_w)
    );
    
    //#----------------------------------#//
    //   Sequential Sensitivity List      //
    //#----------------------------------#//
    
    // this deals with updating the flip flops/registers
    always@(posedge CLK or posedge RESET)
    begin: Setup_registers
        if (RESET == 1'b1) begin
            colour_in_r <= 12'd0;
            pos_counter_r <= 0;
            end
        else begin
            colour_in_r <= colour_in_nxt;
            pos_counter_r <= pos_counter_nxt;
            end
    end
    
    //#----------------------------------#//
    //  Combinational Sensitivity List    //
    //#----------------------------------#//
    
    // these IF statements are to deine the boundaries of my J, 
    //if the IF statemnt is true then it means i should display my J
    
    // this always @ statement deals with the extras, such as Dispaying a J,
    // Changing colours, Moving the J and inverting the corners
    always@(*) 
    begin: All
        colour_in_nxt = colour_in_r;
        pos_counter_nxt = pos_counter_r;        
        
        // show square to represent mouse pointer
        if ( (ADDRH_w >= Mouse_X_Coordinate && ADDRH_w <= Mouse_X_Coordinate + 5)
            &&
             (ADDRV_w >= Mouse_Y_Coordinate && ADDRV_w <= Mouse_Y_Coordinate + 5) 
           ) begin
            colour_in_nxt = different_colours;
           end
        else begin
//          colour_in_nxt = switches;
            colour_in_nxt = {scroll_wheel,^scroll_wheel,~scroll_wheel,scroll_wheel};
        end
    end
   
    
    //#------------------------------------#//
    //          EXTRAS Counters             //
    //#------------------------------------#//
    
    // 0.125s counter
    Generic_counter # (
        .COUNTER_WIDTH(27),
        .COUNTER_MAX(1700000)
    )
    Bit17Counter (
        .CLK(CLK),
        .RESET(RESET),
        .ENABLE(1'b1),
        .TRIG_OUT(INCREMENT_COLOUR),
        .COUNT(second_counter_value)
    );
    
    // increment colour out counter
    Generic_counter # (
         .COUNTER_WIDTH(12),
         .COUNTER_MAX(4095)//4095
    )
    counter_colour(
     .CLK(CLK),
     .RESET(RESET),
     .ENABLE(INCREMENT_COLOUR),
     .COUNT(different_colours)
    );
    
    // counter for moving the J
    Generic_counter # (
         .COUNTER_WIDTH(10),
         .COUNTER_MAX(640)
    )
    counter_MoveJ_left(
     .CLK(CLK),
     .RESET(reset_mover),
     .ENABLE(INCREMENT_COLOUR),
     .COUNT(j_mover_left)
    );
   
    
    //#----------------------------------#//
    //          Assignments               //
    //#----------------------------------#//
       
    assign HS = HS_w;
    assign VS = VS_w; 
    assign COLOUR_OUT = COLOUR_OUT_w; 

endmodule
