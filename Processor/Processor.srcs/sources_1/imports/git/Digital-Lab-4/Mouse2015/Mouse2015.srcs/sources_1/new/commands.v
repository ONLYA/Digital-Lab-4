//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 21.02.2020 13:20:38
//// Design Name: 
//// Module Name: commands
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module commands( 
//   input CLK,
//   input RESET,
//   input [7:0] COMMAND,
//   //Transmitter Control
//   output SEND_BYTE,
//   output [7:0] BYTE_TO_SEND,
//   input BYTE_SENT,
//   //Receiver Control
//   output READ_ENABLE,
//   input [7:0] BYTE_READ,
//   input [1:0] BYTE_ERROR_CODE,
//   input BYTE_READY,
//   input RESEND_DATA,
//   //Data Registers
//   output [7:0] MOUSE_DX,
//   output [7:0] MOUSE_DY,
//   output [7:0] MOUSE_STATUS,
//   output SEND_INTERRUPT
//);


//    // local paamaters for resetting mouse command
//    localparam  STATE_COMMAND_SEND = 0,
//                STATE_COMMAND_SENT_CONFIRMATION = 1,
//                STATE_COMMAND_ACKNOWLEDGE = 2,
//                STATE_SELF_TEST_PASSED = 3,
//                STATE_MOUSE_ID = 4,
//                STATE_COMMAND_COMPLETE = 5;

//    // states for entering Microsoft scrolling mode
//    localparam  STATE_SET_SAMPLE_RATE = 10,
//                STATE_SET_SAMPLE_RATE_SENT_CONFIRMATION = 11,
//                STATE_SET_SAMPLE_RATE_ACKNOWLEDGE = 12,
//                // -- SET 200 SAMPLE RATE
//                STATE_SET_SAMPLE_RATE_200 = 13
//                STATE_SET_SAMPLE_RATE_200_SENT_CONFIRMATION = 14
//                STATE_SET_SAMPLE_RATE_200_ACKNOWLEDGMENT = 15
//                // -- SET 100 SAMPLE RATE
//                STATE_SET_SAMPLE_RATE_100_1 = 16
//                STATE_SET_SAMPLE_RATE_100_SENT_CONFIRMATION = 17
//                STATE_SET_SAMPLE_RATE_100_ACKNOWLEDGMENT = 18
//                // -- SET 80 SAMPLE RATE
//                STATE_SET_SAMPLE_RATE_80 = 19
//                STATE_SET_SAMPLE_RATE_80_SENT_CONFIRMAITON = 20
//                STATE_SET_SAMPLE_RATE_80_ACKNOWLEDGMENT = 21    
//                // -- READ DEVICE TYPE
//                STATE_READ_DEVICE_ID = 22
//                STATE_READ_DEVICE_ID_SENT_CONFIRMATION = 23
//                STATE_READ_DEVICE_ID_ACKNOWLEDGMENT = 24
//                STATE_MICROSOFT_SUCCESS = 25    //CHECK IF MOUSE ID = 0X03
    
//    // states for resending last packet -> Not sure if you need to disable data reporting
//    localparam  STATE_DISABLE_DATA_REPORTING = 30
//                STATE_DISABLE_DATA_REPORTING_SENT_CONFIRMATION = 31
//                STATE_DISABLE_DATA_REPORTING_ACKOWLEDGMENT = 32
//                // -- NOW SEND RESET COMMAND
//                STATE_RESEND = 33
//                STATE_RESEND_SENT_CONFIRMATION = 34
//                STATE_RESEND_PACKET = 35
//                STATE_RESEND_APCKET_SUCCESS = 36
                
//    // states for entering wrap mode
//    localparam  STATE_WRAP_MODE = 40
//                STATE_WRAP_MODE_SENT_CONFIRMATION = 41
//                STATE_WRAP_MODE_ACKNOWLEDGMENT = 42
//                STATE_WARP_MODE_SUCCESS = 43
    
               
//    always@(*) begin
        
//        case(state_curret)
//            STATE_COMMAND_SEND: begin
//              Next_State = STATE_COMMAND_SENT_CONFIRMATION;
//              Next_SendByte = 1'b1;
//              Next_ByteToSend = 8'hFF;
//            end
            
//            STATE_COMMAND_SENT_CONFIRMATION: begin
                
//            end
            
//        endcase
        
//    end






//endmodule
