`timescale 1ns / 1ps

// this module deals with the buttons on the mouse being clicked
module ButtonClicking(
        input CLK,
        input RESET,
        input left_btn_clicked, // boolean for it left button has been clicked
        input right_btn_clicked,
        input byte_recieved,
        output [3:0] left_btn_clicks, // counter for how many times left button has been clicked
        output [3:0] right_btn_clicks
    );
    
    
    localparam [3:0] STATE_IDLE = 4'd0,
                    STATE_LEFT_CLICKED = 4'd1,
                    STATE_RIGHT_CLICKED = 4'd2,
                    STATE_LEFT_RIGHT_CLICKED = 4'd3,
                    STATE_LEFT_RELEASED = 4'd4,
                    STATE_RIGHT_RELEASED = 4'd5,
                    STATE_LEFT_RIGHT_RELEASED = 4'd6;
    
    reg [2:0] STATE_CURRENT, STATE_NEXT;
    reg [2:0] LEFT_BTN_CLICKS_CURRENT, LEFT_BTN_CLICKS_NEXT,
              RIGHT_BTN_CLICKS_CURRENT, RIGHT_BTN_CLICKS_NEXT;
    
    //update the clicks on the positive edge of clock or when reset has happened
    always@(posedge CLK) begin
        if (RESET == 1'b1) begin
            STATE_CURRENT <= STATE_IDLE;
            LEFT_BTN_CLICKS_CURRENT <= 4'd0;
            RIGHT_BTN_CLICKS_CURRENT <= 4'd0; 
        end 
        else if (byte_recieved == 1'b1) begin
            STATE_CURRENT <= STATE_NEXT;
            LEFT_BTN_CLICKS_CURRENT <= LEFT_BTN_CLICKS_NEXT;
            RIGHT_BTN_CLICKS_CURRENT <= RIGHT_BTN_CLICKS_NEXT;
        end
    end
    
    // increment the buttons
    always@(*) begin
        STATE_NEXT = STATE_CURRENT;
        LEFT_BTN_CLICKS_NEXT = LEFT_BTN_CLICKS_CURRENT;
        RIGHT_BTN_CLICKS_NEXT = RIGHT_BTN_CLICKS_CURRENT;
        
        case(STATE_CURRENT)
        
            // idle case where we wait
            STATE_IDLE: begin
                if (left_btn_clicked == 1'b1 && right_btn_clicked == 1'b1)
                    STATE_NEXT = STATE_LEFT_RIGHT_CLICKED;
                else if (left_btn_clicked == 1'b1)
                    STATE_NEXT = STATE_LEFT_CLICKED;                
                else if (right_btn_clicked == 1'b1)
                    STATE_NEXT = STATE_RIGHT_CLICKED;
            end
            
            // case where we have clicked the right button
            STATE_RIGHT_CLICKED: begin
                if (left_btn_clicked == 1'b1 && right_btn_clicked == 1'b1)
                    STATE_NEXT = STATE_LEFT_RIGHT_CLICKED;
                else if (right_btn_clicked == 1'b0)
                    STATE_NEXT = STATE_RIGHT_RELEASED;
            end
            
            // case where we have clicked the left button
            STATE_LEFT_CLICKED: begin
                if (left_btn_clicked == 1'b1 && right_btn_clicked == 1'b1)
                    STATE_NEXT = STATE_LEFT_RIGHT_CLICKED;
                else if (left_btn_clicked == 1'b0)
                    STATE_NEXT = STATE_LEFT_RELEASED;
            end
            
            // case where we have clicked both buttons
            STATE_LEFT_RIGHT_CLICKED: begin
                if (left_btn_clicked == 1'b0 && right_btn_clicked == 1'b0)
                    STATE_NEXT = STATE_LEFT_RIGHT_RELEASED;
                else if (left_btn_clicked == 1'b0)
                    STATE_NEXT = STATE_LEFT_RELEASED;
                else if (right_btn_clicked == 1'b0)
                    STATE_NEXT = STATE_RIGHT_RELEASED;
            end
            
            STATE_RIGHT_RELEASED: begin
                RIGHT_BTN_CLICKS_NEXT = RIGHT_BTN_CLICKS_CURRENT + 4'd1;
                STATE_NEXT = STATE_IDLE;
            end
            
            STATE_LEFT_RELEASED: begin
                LEFT_BTN_CLICKS_NEXT = LEFT_BTN_CLICKS_CURRENT + 4'd1;
                STATE_NEXT = STATE_IDLE;
            end
            
            STATE_LEFT_RIGHT_RELEASED: begin
                RIGHT_BTN_CLICKS_NEXT = RIGHT_BTN_CLICKS_CURRENT + 4'd1;
                LEFT_BTN_CLICKS_NEXT = LEFT_BTN_CLICKS_CURRENT + 4'd1; 
                STATE_NEXT = STATE_IDLE;
            end
            
            default: begin
                STATE_NEXT = STATE_CURRENT;
                LEFT_BTN_CLICKS_NEXT = LEFT_BTN_CLICKS_CURRENT;
                RIGHT_BTN_CLICKS_NEXT = RIGHT_BTN_CLICKS_CURRENT;
            end
                        
        endcase 
    end
    
    // ILA Debugger
//    ila_3 ila(
//        .clk(CLK),//clk
//        .probe0(RESET),//1
//        .probe1(right_btn_clicked),//1
//        .probe2(left_btn_clicked),//1
//        .probe3(STATE_CURRENT),//4
//        .probe4({LEFT_BTN_CLICKS_CURRENT, LEFT_BTN_CLICKS_NEXT}),//8
//        .probe5({RIGHT_BTN_CLICKS_CURRENT, RIGHT_BTN_CLICKS_NEXT}), //8
//        .probe6({4'd0,STATE_NEXT}), //8
//        .probe7({8{1'b0}}) //8
//    );
    
    assign left_btn_clicks = LEFT_BTN_CLICKS_CURRENT;
    assign right_btn_clicks = RIGHT_BTN_CLICKS_CURRENT;
    
endmodule
