// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (lin64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Thu Mar 12 17:37:05 2020
// Host        : tlf62.see.ed.ac.uk running 64-bit Scientific Linux release 7.6 (Nitrogen)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/s1645821/git/assessment2/Digital-Lab-4/Processor/Processor.sim/sim_1/impl/func/mouse_test_func_impl.v
// Design      : Processor_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (D,
    \CurrRegA_reg[7] ,
    out,
    \FSM_sequential_CurrState_reg[1] ,
    BUS_DATA,
    Q,
    \DATA_reg[6] ,
    \CurrRegA_reg[7]_0 ,
    RESET_IBUF,
    CLK_IBUF_BUFG);
  output [0:0]D;
  output [7:0]\CurrRegA_reg[7] ;
  input [4:0]out;
  input \FSM_sequential_CurrState_reg[1] ;
  input [7:0]BUS_DATA;
  input [7:0]Q;
  input [0:0]\DATA_reg[6] ;
  input [7:0]\CurrRegA_reg[7]_0 ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;

  wire [7:0]AluOut;
  wire [7:0]BUS_DATA;
  wire CLK_IBUF_BUFG;
  wire [7:0]\CurrRegA_reg[7] ;
  wire [7:0]\CurrRegA_reg[7]_0 ;
  wire [0:0]D;
  wire [0:0]\DATA_reg[6] ;
  wire \FSM_sequential_CurrState[1]_i_2_n_0 ;
  wire \FSM_sequential_CurrState[1]_i_4_n_0 ;
  wire \FSM_sequential_CurrState[1]_i_5_n_0 ;
  wire \FSM_sequential_CurrState_reg[1] ;
  wire [7:0]Out;
  wire \Out[3]_i_3_n_0 ;
  wire \Out[3]_i_4_n_0 ;
  wire \Out[3]_i_5_n_0 ;
  wire \Out[3]_i_6_n_0 ;
  wire \Out[3]_i_7_n_0 ;
  wire \Out[3]_i_8_n_0 ;
  wire \Out[3]_i_9_n_0 ;
  wire \Out[7]_i_3_n_0 ;
  wire \Out[7]_i_4_n_0 ;
  wire \Out[7]_i_5_n_0 ;
  wire \Out[7]_i_6_n_0 ;
  wire \Out[7]_i_7_n_0 ;
  wire \Out[7]_i_8_n_0 ;
  wire \Out[7]_i_9_n_0 ;
  wire \Out_reg[3]_i_2_n_0 ;
  wire [7:0]Q;
  wire RESET_IBUF;
  wire [7:0]data0;
  wire [4:0]out;
  wire [2:0]\NLW_Out_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Out_reg[7]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[0]_i_1 
       (.I0(out[4]),
        .I1(AluOut[0]),
        .I2(out[3]),
        .I3(BUS_DATA[0]),
        .O(\CurrRegA_reg[7] [0]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[1]_i_1 
       (.I0(out[4]),
        .I1(AluOut[1]),
        .I2(out[3]),
        .I3(BUS_DATA[1]),
        .O(\CurrRegA_reg[7] [1]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[2]_i_1 
       (.I0(out[4]),
        .I1(AluOut[2]),
        .I2(out[3]),
        .I3(BUS_DATA[2]),
        .O(\CurrRegA_reg[7] [2]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[3]_i_1 
       (.I0(out[4]),
        .I1(AluOut[3]),
        .I2(out[3]),
        .I3(BUS_DATA[3]),
        .O(\CurrRegA_reg[7] [3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[4]_i_1 
       (.I0(out[4]),
        .I1(AluOut[4]),
        .I2(out[3]),
        .I3(BUS_DATA[4]),
        .O(\CurrRegA_reg[7] [4]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[5]_i_1 
       (.I0(out[4]),
        .I1(AluOut[5]),
        .I2(out[3]),
        .I3(BUS_DATA[5]),
        .O(\CurrRegA_reg[7] [5]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[6]_i_1 
       (.I0(out[4]),
        .I1(AluOut[6]),
        .I2(out[3]),
        .I3(BUS_DATA[6]),
        .O(\CurrRegA_reg[7] [6]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \CurrRegA[7]_i_2 
       (.I0(out[4]),
        .I1(AluOut[7]),
        .I2(out[3]),
        .I3(BUS_DATA[7]),
        .O(\CurrRegA_reg[7] [7]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \FSM_sequential_CurrState[1]_i_1 
       (.I0(\FSM_sequential_CurrState[1]_i_2_n_0 ),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[4]),
        .I5(\FSM_sequential_CurrState_reg[1] ),
        .O(D));
  LUT5 #(
    .INIT(32'h00003722)) 
    \FSM_sequential_CurrState[1]_i_2 
       (.I0(out[4]),
        .I1(out[3]),
        .I2(\FSM_sequential_CurrState[1]_i_4_n_0 ),
        .I3(out[0]),
        .I4(out[1]),
        .O(\FSM_sequential_CurrState[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_CurrState[1]_i_4 
       (.I0(AluOut[2]),
        .I1(\FSM_sequential_CurrState[1]_i_5_n_0 ),
        .I2(AluOut[3]),
        .O(\FSM_sequential_CurrState[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_CurrState[1]_i_5 
       (.I0(AluOut[1]),
        .I1(AluOut[0]),
        .I2(AluOut[6]),
        .I3(AluOut[7]),
        .I4(AluOut[5]),
        .I5(AluOut[4]),
        .O(\FSM_sequential_CurrState[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[0]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [0]),
        .I1(\DATA_reg[6] ),
        .I2(data0[0]),
        .O(Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[1]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [1]),
        .I1(\DATA_reg[6] ),
        .I2(data0[1]),
        .O(Out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[2]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [2]),
        .I1(\DATA_reg[6] ),
        .I2(data0[2]),
        .O(Out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[3]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [3]),
        .I1(\DATA_reg[6] ),
        .I2(data0[3]),
        .O(Out[3]));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Out[3]_i_3 
       (.I0(Q[2]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [2]),
        .O(\Out[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Out[3]_i_4 
       (.I0(Q[1]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [1]),
        .O(\Out[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \Out[3]_i_5 
       (.I0(\DATA_reg[6] ),
        .I1(Q[0]),
        .I2(\CurrRegA_reg[7]_0 [0]),
        .O(\Out[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \Out[3]_i_6 
       (.I0(Q[3]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [3]),
        .I3(\Out[3]_i_3_n_0 ),
        .O(\Out[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \Out[3]_i_7 
       (.I0(Q[2]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [2]),
        .I3(\Out[3]_i_4_n_0 ),
        .O(\Out[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \Out[3]_i_8 
       (.I0(Q[1]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [1]),
        .I3(\Out[3]_i_5_n_0 ),
        .O(\Out[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h36)) 
    \Out[3]_i_9 
       (.I0(\DATA_reg[6] ),
        .I1(Q[0]),
        .I2(\CurrRegA_reg[7]_0 [0]),
        .O(\Out[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[4]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [4]),
        .I1(\DATA_reg[6] ),
        .I2(data0[4]),
        .O(Out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[5]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [5]),
        .I1(\DATA_reg[6] ),
        .I2(data0[5]),
        .O(Out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[6]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [6]),
        .I1(\DATA_reg[6] ),
        .I2(data0[6]),
        .O(Out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Out[7]_i_1 
       (.I0(\CurrRegA_reg[7]_0 [7]),
        .I1(\DATA_reg[6] ),
        .I2(data0[7]),
        .O(Out[7]));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Out[7]_i_3 
       (.I0(Q[5]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [5]),
        .O(\Out[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Out[7]_i_4 
       (.I0(Q[4]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [4]),
        .O(\Out[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Out[7]_i_5 
       (.I0(Q[3]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [3]),
        .O(\Out[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hC387C378)) 
    \Out[7]_i_6 
       (.I0(\CurrRegA_reg[7]_0 [6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\DATA_reg[6] ),
        .I4(\CurrRegA_reg[7]_0 [7]),
        .O(\Out[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \Out[7]_i_7 
       (.I0(\Out[7]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(\DATA_reg[6] ),
        .I3(\CurrRegA_reg[7]_0 [6]),
        .O(\Out[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \Out[7]_i_8 
       (.I0(Q[5]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [5]),
        .I3(\Out[7]_i_4_n_0 ),
        .O(\Out[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'hA956)) 
    \Out[7]_i_9 
       (.I0(Q[4]),
        .I1(\DATA_reg[6] ),
        .I2(\CurrRegA_reg[7]_0 [4]),
        .I3(\Out[7]_i_5_n_0 ),
        .O(\Out[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[0]),
        .Q(AluOut[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[1]),
        .Q(AluOut[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[2]),
        .Q(AluOut[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[3]),
        .Q(AluOut[3]),
        .R(RESET_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Out_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\Out_reg[3]_i_2_n_0 ,\NLW_Out_reg[3]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\Out[3]_i_3_n_0 ,\Out[3]_i_4_n_0 ,\Out[3]_i_5_n_0 ,1'b0}),
        .O(data0[3:0]),
        .S({\Out[3]_i_6_n_0 ,\Out[3]_i_7_n_0 ,\Out[3]_i_8_n_0 ,\Out[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[4]),
        .Q(AluOut[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[5]),
        .Q(AluOut[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[6]),
        .Q(AluOut[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Out[7]),
        .Q(AluOut[7]),
        .R(RESET_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \Out_reg[7]_i_2 
       (.CI(\Out_reg[3]_i_2_n_0 ),
        .CO(\NLW_Out_reg[7]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\Out[7]_i_3_n_0 ,\Out[7]_i_4_n_0 ,\Out[7]_i_5_n_0 }),
        .O(data0[7:4]),
        .S({\Out[7]_i_6_n_0 ,\Out[7]_i_7_n_0 ,\Out[7]_i_8_n_0 ,\Out[7]_i_9_n_0 }));
endmodule

module Data_Reporting_Mode
   (send_byte_enable_data,
    read_enable_enable_data,
    enable_data_success,
    ready_enable_data,
    \Curr_ByteToSend_reg[2] ,
    \Curr_TimeoutCounter_reg[0] ,
    data_enable_current_reg,
    \FSM_sequential_state_current_reg[2] ,
    \Curr_ByteToSend_reg[7] ,
    \Curr_ByteToSend_reg[4] ,
    \Curr_ByteToSend_reg[0] ,
    \Curr_ByteToSend_reg[0]_0 ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    DATA_MOUSE_IBUF,
    enable_data_enable_current,
    ByteSentToMouse,
    byte_recieved,
    out,
    read_data_success,
    data_enable_current,
    complete_current_reg_0,
    \FSM_sequential_state_current_reg[1] ,
    in0,
    \FSM_sequential_state_current_reg[1]_0 ,
    read_enable_current_reg,
    read_byte_current_reg,
    \FSM_sequential_state_current_reg[1]_1 ,
    \byte_to_send_current_reg[2]_0 ,
    Q,
    ready_microsoft,
    complete_current_reg_1,
    \FSM_sequential_state_current_reg[2]_0 ,
    read_enable_data,
    \FSM_sequential_state_current_reg[1]_2 ,
    read_enable_reset,
    \counter_current_reg[9] ,
    \counter_current_reg[15] ,
    \FSM_sequential_state_current_reg[1]_3 ,
    data_enable_next2_out,
    \FSM_sequential_state_current_reg[0] ,
    \Curr_MSCodeShiftReg_reg[2] );
  output send_byte_enable_data;
  output read_enable_enable_data;
  output enable_data_success;
  output ready_enable_data;
  output \Curr_ByteToSend_reg[2] ;
  output \Curr_TimeoutCounter_reg[0] ;
  output data_enable_current_reg;
  output \FSM_sequential_state_current_reg[2] ;
  output [3:0]\Curr_ByteToSend_reg[7] ;
  output \Curr_ByteToSend_reg[4] ;
  output \Curr_ByteToSend_reg[0] ;
  output \Curr_ByteToSend_reg[0]_0 ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input DATA_MOUSE_IBUF;
  input enable_data_enable_current;
  input ByteSentToMouse;
  input byte_recieved;
  input [2:0]out;
  input read_data_success;
  input data_enable_current;
  input complete_current_reg_0;
  input \FSM_sequential_state_current_reg[1] ;
  input [0:0]in0;
  input \FSM_sequential_state_current_reg[1]_0 ;
  input read_enable_current_reg;
  input read_byte_current_reg;
  input \FSM_sequential_state_current_reg[1]_1 ;
  input \byte_to_send_current_reg[2]_0 ;
  input [3:0]Q;
  input ready_microsoft;
  input complete_current_reg_1;
  input \FSM_sequential_state_current_reg[2]_0 ;
  input read_enable_data;
  input \FSM_sequential_state_current_reg[1]_2 ;
  input read_enable_reset;
  input \counter_current_reg[9] ;
  input \counter_current_reg[15] ;
  input \FSM_sequential_state_current_reg[1]_3 ;
  input data_enable_next2_out;
  input \FSM_sequential_state_current_reg[0] ;
  input \Curr_MSCodeShiftReg_reg[2] ;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend[2]_i_2_n_0 ;
  wire \Curr_ByteToSend[2]_i_4_n_0 ;
  wire \Curr_ByteToSend[5]_i_2_n_0 ;
  wire \Curr_ByteToSend[6]_i_2_n_0 ;
  wire \Curr_ByteToSend[7]_i_12_n_0 ;
  wire \Curr_ByteToSend[7]_i_4_n_0 ;
  wire \Curr_ByteToSend_reg[0] ;
  wire \Curr_ByteToSend_reg[0]_0 ;
  wire \Curr_ByteToSend_reg[2] ;
  wire \Curr_ByteToSend_reg[4] ;
  wire [3:0]\Curr_ByteToSend_reg[7] ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire DATA_MOUSE_IBUF;
  wire \FSM_onehot_state_current[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state_current[3]_i_1_n_0 ;
  wire \FSM_onehot_state_current[4]_i_1__0_n_0 ;
  wire \FSM_onehot_state_current[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[4] ;
  wire \FSM_sequential_Curr_State[2]_i_17_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_21_n_0 ;
  wire \FSM_sequential_state_current[2]_i_2__1_n_0 ;
  wire \FSM_sequential_state_current_reg[0] ;
  wire \FSM_sequential_state_current_reg[1] ;
  wire \FSM_sequential_state_current_reg[1]_0 ;
  wire \FSM_sequential_state_current_reg[1]_1 ;
  wire \FSM_sequential_state_current_reg[1]_2 ;
  wire \FSM_sequential_state_current_reg[1]_3 ;
  wire \FSM_sequential_state_current_reg[2] ;
  wire \FSM_sequential_state_current_reg[2]_0 ;
  wire [3:0]Q;
  wire RESET_IBUF;
  wire ReadEnable;
  wire byte_recieved;
  wire \byte_to_send_current[2]_i_1__0_n_0 ;
  wire \byte_to_send_current_reg[2]_0 ;
  wire complete_current_i_1__1_n_0;
  wire complete_current_reg_0;
  wire complete_current_reg_1;
  wire \counter_current_reg[15] ;
  wire \counter_current_reg[9] ;
  wire data_enable_current;
  wire data_enable_current_reg;
  wire data_enable_next;
  wire data_enable_next2_out;
  wire enable_data_enable_current;
  wire enable_data_success;
  wire enable_read_current_i_1__1_n_0;
  wire [0:0]in0;
  wire [2:0]out;
  wire read_byte_current_reg;
  wire read_data_success;
  wire read_enable_current_reg;
  wire read_enable_data;
  wire read_enable_enable_data;
  wire read_enable_reset;
  wire ready_enable_data;
  wire ready_microsoft;
  wire send_byte_current_i_1__3_n_0;
  wire send_byte_enable_data;
  wire success_current_i_1__0_n_0;

  LUT6 #(
    .INIT(64'hABAAAFAEABAAABAA)) 
    \Curr_ByteToSend[2]_i_1 
       (.I0(\Curr_ByteToSend[2]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[2]),
        .I3(complete_current_reg_1),
        .I4(out[0]),
        .I5(\Curr_ByteToSend_reg[2] ),
        .O(\Curr_ByteToSend_reg[7] [0]));
  LUT6 #(
    .INIT(64'h44440000CCF00000)) 
    \Curr_ByteToSend[2]_i_2 
       (.I0(\Curr_ByteToSend[2]_i_4_n_0 ),
        .I1(\Curr_ByteToSend_reg[2] ),
        .I2(Q[0]),
        .I3(ready_microsoft),
        .I4(\FSM_sequential_state_current_reg[2]_0 ),
        .I5(out[0]),
        .O(\Curr_ByteToSend[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Curr_ByteToSend[2]_i_4 
       (.I0(ready_enable_data),
        .I1(enable_data_success),
        .O(\Curr_ByteToSend[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000700000000000)) 
    \Curr_ByteToSend[4]_i_4 
       (.I0(enable_data_success),
        .I1(ready_enable_data),
        .I2(\Curr_ByteToSend_reg[2] ),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[2]),
        .O(\Curr_ByteToSend_reg[4] ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \Curr_ByteToSend[5]_i_1 
       (.I0(\Curr_ByteToSend[5]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_state_current_reg[1]_1 ),
        .I3(\byte_to_send_current_reg[2]_0 ),
        .O(\Curr_ByteToSend_reg[7] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101100)) 
    \Curr_ByteToSend[5]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\Curr_ByteToSend_reg[2] ),
        .I3(Q[1]),
        .I4(ready_microsoft),
        .I5(\Curr_ByteToSend[7]_i_12_n_0 ),
        .O(\Curr_ByteToSend[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \Curr_ByteToSend[6]_i_1 
       (.I0(\Curr_ByteToSend[6]_i_2_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_state_current_reg[1]_1 ),
        .I3(\byte_to_send_current_reg[2]_0 ),
        .O(\Curr_ByteToSend_reg[7] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101100)) 
    \Curr_ByteToSend[6]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\Curr_ByteToSend_reg[2] ),
        .I3(Q[2]),
        .I4(ready_microsoft),
        .I5(\Curr_ByteToSend[7]_i_12_n_0 ),
        .O(\Curr_ByteToSend[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \Curr_ByteToSend[7]_i_10 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(send_byte_enable_data),
        .O(\Curr_ByteToSend_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFF088800000888)) 
    \Curr_ByteToSend[7]_i_12 
       (.I0(out[0]),
        .I1(\Curr_ByteToSend_reg[2] ),
        .I2(ready_enable_data),
        .I3(enable_data_success),
        .I4(out[1]),
        .I5(\FSM_sequential_state_current_reg[0] ),
        .O(\Curr_ByteToSend[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h04440000)) 
    \Curr_ByteToSend[7]_i_13 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(ready_enable_data),
        .I3(enable_data_success),
        .I4(send_byte_enable_data),
        .O(\Curr_ByteToSend_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \Curr_ByteToSend[7]_i_2 
       (.I0(\Curr_ByteToSend[7]_i_4_n_0 ),
        .I1(out[2]),
        .I2(\FSM_sequential_state_current_reg[1]_1 ),
        .I3(\byte_to_send_current_reg[2]_0 ),
        .O(\Curr_ByteToSend_reg[7] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101100)) 
    \Curr_ByteToSend[7]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\Curr_ByteToSend_reg[2] ),
        .I3(Q[3]),
        .I4(ready_microsoft),
        .I5(\Curr_ByteToSend[7]_i_12_n_0 ),
        .O(\Curr_ByteToSend[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_current[2]_i_1__0 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(\FSM_onehot_state_current[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_state_current[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\Curr_MSCodeShiftReg_reg[2] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[2] ),
        .O(\FSM_onehot_state_current[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \FSM_onehot_state_current[4]_i_1__0 
       (.I0(enable_data_enable_current),
        .I1(ByteSentToMouse),
        .I2(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I3(byte_recieved),
        .I4(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(\FSM_onehot_state_current[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_onehot_state_current[4]_i_2 
       (.I0(\Curr_MSCodeShiftReg_reg[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(\FSM_onehot_state_current[4]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[4]_i_1__0_n_0 ),
        .D(1'b0),
        .Q(\FSM_onehot_state_current_reg_n_0_[0] ),
        .S(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[4]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_current_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_current_reg_n_0_[1] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[4]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_current[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[2] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[4]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[3] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[4]_i_1__0_n_0 ),
        .D(\FSM_onehot_state_current[4]_i_2_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[4] ),
        .R(RESET_IBUF));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_Curr_State[2]_i_10 
       (.I0(DATA_MOUSE_IBUF),
        .I1(ReadEnable),
        .O(\Curr_TimeoutCounter_reg[0] ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFE00)) 
    \FSM_sequential_Curr_State[2]_i_14 
       (.I0(\FSM_sequential_Curr_State[2]_i_17_n_0 ),
        .I1(\FSM_sequential_state_current_reg[1]_0 ),
        .I2(read_enable_current_reg),
        .I3(out[0]),
        .I4(read_byte_current_reg),
        .I5(\FSM_sequential_Curr_State[2]_i_21_n_0 ),
        .O(ReadEnable));
  LUT6 #(
    .INIT(64'h4440404000404040)) 
    \FSM_sequential_Curr_State[2]_i_17 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(read_enable_enable_data),
        .I3(enable_data_success),
        .I4(ready_enable_data),
        .I5(read_enable_data),
        .O(\FSM_sequential_Curr_State[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \FSM_sequential_Curr_State[2]_i_21 
       (.I0(read_enable_enable_data),
        .I1(\FSM_sequential_state_current_reg[1]_2 ),
        .I2(read_enable_reset),
        .I3(\counter_current_reg[9] ),
        .I4(\counter_current_reg[15] ),
        .I5(\FSM_sequential_state_current_reg[1]_3 ),
        .O(\FSM_sequential_Curr_State[2]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_sequential_state_current[2]_i_1__2 
       (.I0(\FSM_sequential_state_current[2]_i_2__1_n_0 ),
        .I1(complete_current_reg_0),
        .I2(\FSM_sequential_state_current_reg[1] ),
        .I3(in0),
        .O(\FSM_sequential_state_current_reg[2] ));
  LUT5 #(
    .INIT(32'hF8FC38FC)) 
    \FSM_sequential_state_current[2]_i_2__1 
       (.I0(enable_data_success),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .I4(read_data_success),
        .O(\FSM_sequential_state_current[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF5F7A0A0)) 
    \byte_to_send_current[2]_i_1__0 
       (.I0(enable_data_enable_current),
        .I1(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I4(\Curr_ByteToSend_reg[2] ),
        .O(\byte_to_send_current[2]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\byte_to_send_current[2]_i_1__0_n_0 ),
        .Q(\Curr_ByteToSend_reg[2] ),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hFFE0)) 
    complete_current_i_1__1
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I2(enable_data_enable_current),
        .I3(ready_enable_data),
        .O(complete_current_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    complete_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(complete_current_i_1__1_n_0),
        .Q(ready_enable_data),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'hE2FFFFFFE2FF0000)) 
    data_enable_current_i_1
       (.I0(enable_data_success),
        .I1(out[1]),
        .I2(read_data_success),
        .I3(out[0]),
        .I4(data_enable_next),
        .I5(data_enable_current),
        .O(data_enable_current_reg));
  LUT6 #(
    .INIT(64'hA288808880888088)) 
    data_enable_current_i_2
       (.I0(out[2]),
        .I1(out[1]),
        .I2(data_enable_next2_out),
        .I3(out[0]),
        .I4(enable_data_success),
        .I5(ready_enable_data),
        .O(data_enable_next));
  LUT3 #(
    .INIT(8'hB8)) 
    enable_read_current_i_1__1
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(enable_data_enable_current),
        .I2(read_enable_enable_data),
        .O(enable_read_current_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_read_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(enable_read_current_i_1__1_n_0),
        .Q(read_enable_enable_data),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'hB8)) 
    send_byte_current_i_1__3
       (.I0(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I1(enable_data_enable_current),
        .I2(send_byte_enable_data),
        .O(send_byte_current_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(send_byte_current_i_1__3_n_0),
        .Q(send_byte_enable_data),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hF7A0)) 
    success_current_i_1__0
       (.I0(enable_data_enable_current),
        .I1(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I3(enable_data_success),
        .O(success_current_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    success_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(success_current_i_1__0_n_0),
        .Q(enable_data_success),
        .R(RESET_IBUF));
endmodule

module LEDs
   (Q,
    RESET_IBUF,
    E,
    BUS_DATA,
    CLK_IBUF_BUFG);
  output [7:0]Q;
  input RESET_IBUF;
  input [0:0]E;
  input [7:0]BUS_DATA;
  input CLK_IBUF_BUFG;

  wire [7:0]BUS_DATA;
  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire [7:0]Q;
  wire RESET_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[5]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[6]),
        .Q(Q[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \LED_OUT_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(BUS_DATA[7]),
        .Q(Q[7]),
        .R(RESET_IBUF));
endmodule

module Microsoft_Mode
   (microsoft_success,
    out,
    ready_microsoft,
    enable_data_enable_current_reg,
    \Curr_ByteToSend_reg[0] ,
    \Curr_TimeoutCounter_reg[0] ,
    \Curr_ByteToSend_reg[4] ,
    \Curr_ByteToSend_reg[3] ,
    Q,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    micro_enable_current,
    \FSM_sequential_state_current_reg[2]_0 ,
    enable_data_enable_current,
    \Curr_MSCodeShiftReg_reg[5] ,
    \Curr_MSCodeShiftReg_reg[2] ,
    byte_recieved,
    ByteSentToMouse,
    \FSM_sequential_state_current_reg[4]_0 ,
    \Curr_MSCodeShiftReg_reg[3] ,
    send_byte_enable_data,
    read_enable_data,
    read_enable_enable_data,
    \byte_to_send_current_reg[2]_0 ,
    \FSM_sequential_state_current_reg[1]_0 ,
    \FSM_sequential_state_current_reg[1]_1 ,
    \FSM_sequential_state_current_reg[1]_2 );
  output microsoft_success;
  output [1:0]out;
  output ready_microsoft;
  output enable_data_enable_current_reg;
  output \Curr_ByteToSend_reg[0] ;
  output \Curr_TimeoutCounter_reg[0] ;
  output \Curr_ByteToSend_reg[4] ;
  output [2:0]\Curr_ByteToSend_reg[3] ;
  output [3:0]Q;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input micro_enable_current;
  input [2:0]\FSM_sequential_state_current_reg[2]_0 ;
  input enable_data_enable_current;
  input \Curr_MSCodeShiftReg_reg[5] ;
  input \Curr_MSCodeShiftReg_reg[2] ;
  input byte_recieved;
  input ByteSentToMouse;
  input \FSM_sequential_state_current_reg[4]_0 ;
  input \Curr_MSCodeShiftReg_reg[3] ;
  input send_byte_enable_data;
  input read_enable_data;
  input read_enable_enable_data;
  input \byte_to_send_current_reg[2]_0 ;
  input \FSM_sequential_state_current_reg[1]_0 ;
  input \FSM_sequential_state_current_reg[1]_1 ;
  input \FSM_sequential_state_current_reg[1]_2 ;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend_reg[0] ;
  wire [2:0]\Curr_ByteToSend_reg[3] ;
  wire \Curr_ByteToSend_reg[4] ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_MSCodeShiftReg_reg[3] ;
  wire \Curr_MSCodeShiftReg_reg[5] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire \FSM_sequential_state_current[0]_i_1_n_0 ;
  wire \FSM_sequential_state_current[0]_i_2_n_0 ;
  wire \FSM_sequential_state_current[1]_i_2_n_0 ;
  wire \FSM_sequential_state_current[1]_i_3_n_0 ;
  wire \FSM_sequential_state_current[2]_i_2_n_0 ;
  wire \FSM_sequential_state_current[2]_i_3_n_0 ;
  wire \FSM_sequential_state_current[3]_i_2_n_0 ;
  wire \FSM_sequential_state_current[3]_i_3_n_0 ;
  wire \FSM_sequential_state_current[4]_i_1_n_0 ;
  wire \FSM_sequential_state_current[4]_i_2_n_0 ;
  wire \FSM_sequential_state_current[4]_i_3_n_0 ;
  wire \FSM_sequential_state_current[4]_i_4_n_0 ;
  wire \FSM_sequential_state_current[4]_i_5_n_0 ;
  wire \FSM_sequential_state_current_reg[1]_0 ;
  wire \FSM_sequential_state_current_reg[1]_1 ;
  wire \FSM_sequential_state_current_reg[1]_2 ;
  wire \FSM_sequential_state_current_reg[1]_i_1_n_0 ;
  wire [2:0]\FSM_sequential_state_current_reg[2]_0 ;
  wire \FSM_sequential_state_current_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_current_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_state_current_reg[4]_0 ;
  wire [3:0]Q;
  wire RESET_IBUF;
  wire byte_recieved;
  wire \byte_to_send_current[0]_i_1__1_n_0 ;
  wire \byte_to_send_current[6]_i_1_n_0 ;
  wire \byte_to_send_current[7]_i_1_n_0 ;
  wire \byte_to_send_current_reg[2]_0 ;
  wire \byte_to_send_current_reg_n_0_[0] ;
  wire \byte_to_send_current_reg_n_0_[1] ;
  wire \byte_to_send_current_reg_n_0_[3] ;
  wire \byte_to_send_current_reg_n_0_[4] ;
  wire [7:1]byte_to_send_next;
  wire complete_current;
  wire complete_current_i_1_n_0;
  wire enable_data_enable_current;
  wire enable_data_enable_current_reg;
  wire micro_enable_current;
  wire microsoft_success;
  wire read_enable_current_i_1_n_0;
  wire read_enable_data;
  wire read_enable_enable_data;
  wire read_enable_micro;
  wire read_enable_next;
  wire ready_microsoft;
  wire send_byte_current_i_1_n_0;
  wire send_byte_enable_data;
  wire send_byte_micro;
  wire send_byte_next;
  (* RTL_KEEP = "yes" *) wire [4:0]state_current;
  wire success_current;
  wire success_current_i_1_n_0;

  assign out[1] = state_current[4];
  assign out[0] = state_current[2];
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF40)) 
    \Curr_ByteToSend[0]_i_1 
       (.I0(ready_microsoft),
        .I1(\byte_to_send_current_reg_n_0_[0] ),
        .I2(\FSM_sequential_state_current_reg[1]_0 ),
        .I3(\FSM_sequential_state_current_reg[1]_1 ),
        .I4(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I5(\FSM_sequential_state_current_reg[1]_2 ),
        .O(\Curr_ByteToSend_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF40)) 
    \Curr_ByteToSend[1]_i_1 
       (.I0(ready_microsoft),
        .I1(\byte_to_send_current_reg_n_0_[1] ),
        .I2(\FSM_sequential_state_current_reg[1]_0 ),
        .I3(\FSM_sequential_state_current_reg[1]_1 ),
        .I4(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I5(\FSM_sequential_state_current_reg[1]_2 ),
        .O(\Curr_ByteToSend_reg[3] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4040FF40)) 
    \Curr_ByteToSend[3]_i_1 
       (.I0(ready_microsoft),
        .I1(\byte_to_send_current_reg_n_0_[3] ),
        .I2(\FSM_sequential_state_current_reg[1]_0 ),
        .I3(\FSM_sequential_state_current_reg[1]_1 ),
        .I4(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I5(\FSM_sequential_state_current_reg[1]_2 ),
        .O(\Curr_ByteToSend_reg[3] [2]));
  LUT6 #(
    .INIT(64'h5F5F5F7F40000020)) 
    \Curr_ByteToSend[3]_i_2 
       (.I0(state_current[3]),
        .I1(state_current[0]),
        .I2(state_current[4]),
        .I3(state_current[2]),
        .I4(state_current[1]),
        .I5(complete_current),
        .O(ready_microsoft));
  LUT6 #(
    .INIT(64'h0404040000040000)) 
    \Curr_ByteToSend[4]_i_3 
       (.I0(\FSM_sequential_state_current_reg[2]_0 [0]),
        .I1(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I2(\FSM_sequential_state_current_reg[2]_0 [1]),
        .I3(ready_microsoft),
        .I4(\byte_to_send_current_reg_n_0_[4] ),
        .I5(\byte_to_send_current_reg[2]_0 ),
        .O(\Curr_ByteToSend_reg[4] ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \Curr_ByteToSend[7]_i_11 
       (.I0(\FSM_sequential_state_current_reg[2]_0 [1]),
        .I1(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I2(send_byte_micro),
        .I3(ready_microsoft),
        .I4(send_byte_enable_data),
        .O(\Curr_ByteToSend_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAA0000CFC00000)) 
    \FSM_sequential_Curr_State[2]_i_20 
       (.I0(read_enable_data),
        .I1(read_enable_enable_data),
        .I2(ready_microsoft),
        .I3(read_enable_micro),
        .I4(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I5(\FSM_sequential_state_current_reg[2]_0 [1]),
        .O(\Curr_TimeoutCounter_reg[0] ));
  LUT6 #(
    .INIT(64'h000000005F1F501F)) 
    \FSM_sequential_state_current[0]_i_1 
       (.I0(state_current[4]),
        .I1(\FSM_sequential_state_current[0]_i_2_n_0 ),
        .I2(state_current[3]),
        .I3(state_current[1]),
        .I4(\FSM_sequential_state_current_reg[4]_0 ),
        .I5(state_current[0]),
        .O(\FSM_sequential_state_current[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_current[0]_i_2 
       (.I0(state_current[2]),
        .I1(\Curr_MSCodeShiftReg_reg[2] ),
        .O(\FSM_sequential_state_current[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h54511051A2AAA2AA)) 
    \FSM_sequential_state_current[1]_i_2 
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .I2(\Curr_MSCodeShiftReg_reg[2] ),
        .I3(state_current[4]),
        .I4(\Curr_MSCodeShiftReg_reg[5] ),
        .I5(state_current[1]),
        .O(\FSM_sequential_state_current[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000FE0)) 
    \FSM_sequential_state_current[1]_i_3 
       (.I0(\Curr_MSCodeShiftReg_reg[2] ),
        .I1(state_current[2]),
        .I2(state_current[0]),
        .I3(state_current[1]),
        .I4(state_current[4]),
        .O(\FSM_sequential_state_current[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4540FF5FAAA00000)) 
    \FSM_sequential_state_current[2]_i_2 
       (.I0(state_current[0]),
        .I1(\Curr_MSCodeShiftReg_reg[5] ),
        .I2(state_current[4]),
        .I3(\Curr_MSCodeShiftReg_reg[2] ),
        .I4(state_current[1]),
        .I5(state_current[2]),
        .O(\FSM_sequential_state_current[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00007868)) 
    \FSM_sequential_state_current[2]_i_3 
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[2]),
        .I3(\Curr_MSCodeShiftReg_reg[2] ),
        .I4(state_current[4]),
        .O(\FSM_sequential_state_current[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h51B201B220002000)) 
    \FSM_sequential_state_current[3]_i_2 
       (.I0(state_current[0]),
        .I1(\Curr_MSCodeShiftReg_reg[2] ),
        .I2(state_current[2]),
        .I3(state_current[4]),
        .I4(\Curr_MSCodeShiftReg_reg[3] ),
        .I5(state_current[1]),
        .O(\FSM_sequential_state_current[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \FSM_sequential_state_current[3]_i_3 
       (.I0(\Curr_MSCodeShiftReg_reg[2] ),
        .I1(state_current[2]),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .I4(state_current[4]),
        .O(\FSM_sequential_state_current[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \FSM_sequential_state_current[4]_i_1 
       (.I0(micro_enable_current),
        .I1(\FSM_sequential_state_current[4]_i_3_n_0 ),
        .I2(state_current[0]),
        .I3(\FSM_sequential_state_current[4]_i_4_n_0 ),
        .I4(state_current[3]),
        .I5(\FSM_sequential_state_current[4]_i_5_n_0 ),
        .O(\FSM_sequential_state_current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1155555589040208)) 
    \FSM_sequential_state_current[4]_i_2 
       (.I0(state_current[3]),
        .I1(state_current[0]),
        .I2(\Curr_MSCodeShiftReg_reg[2] ),
        .I3(state_current[2]),
        .I4(state_current[1]),
        .I5(state_current[4]),
        .O(\FSM_sequential_state_current[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBF3B8BBBBC0)) 
    \FSM_sequential_state_current[4]_i_3 
       (.I0(byte_recieved),
        .I1(state_current[1]),
        .I2(ByteSentToMouse),
        .I3(state_current[4]),
        .I4(state_current[2]),
        .I5(micro_enable_current),
        .O(\FSM_sequential_state_current[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFEAFDAD)) 
    \FSM_sequential_state_current[4]_i_4 
       (.I0(state_current[1]),
        .I1(byte_recieved),
        .I2(state_current[4]),
        .I3(ByteSentToMouse),
        .I4(state_current[2]),
        .O(\FSM_sequential_state_current[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F061F1D0B021614)) 
    \FSM_sequential_state_current[4]_i_5 
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[4]),
        .I3(byte_recieved),
        .I4(state_current[2]),
        .I5(ByteSentToMouse),
        .O(\FSM_sequential_state_current[4]_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_state_current[4]_i_1_n_0 ),
        .D(\FSM_sequential_state_current[0]_i_1_n_0 ),
        .Q(state_current[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_state_current[4]_i_1_n_0 ),
        .D(\FSM_sequential_state_current_reg[1]_i_1_n_0 ),
        .Q(state_current[1]),
        .R(RESET_IBUF));
  MUXF7 \FSM_sequential_state_current_reg[1]_i_1 
       (.I0(\FSM_sequential_state_current[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_current[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_current_reg[1]_i_1_n_0 ),
        .S(state_current[3]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_state_current[4]_i_1_n_0 ),
        .D(\FSM_sequential_state_current_reg[2]_i_1_n_0 ),
        .Q(state_current[2]),
        .R(RESET_IBUF));
  MUXF7 \FSM_sequential_state_current_reg[2]_i_1 
       (.I0(\FSM_sequential_state_current[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_current[2]_i_3_n_0 ),
        .O(\FSM_sequential_state_current_reg[2]_i_1_n_0 ),
        .S(state_current[3]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_state_current[4]_i_1_n_0 ),
        .D(\FSM_sequential_state_current_reg[3]_i_1_n_0 ),
        .Q(state_current[3]),
        .R(RESET_IBUF));
  MUXF7 \FSM_sequential_state_current_reg[3]_i_1 
       (.I0(\FSM_sequential_state_current[3]_i_2_n_0 ),
        .I1(\FSM_sequential_state_current[3]_i_3_n_0 ),
        .O(\FSM_sequential_state_current_reg[3]_i_1_n_0 ),
        .S(state_current[3]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_state_current[4]_i_1_n_0 ),
        .D(\FSM_sequential_state_current[4]_i_2_n_0 ),
        .Q(state_current[4]),
        .R(RESET_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \byte_to_send_current[0]_i_1__1 
       (.I0(state_current[0]),
        .I1(state_current[4]),
        .O(\byte_to_send_current[0]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \byte_to_send_current[1]_i_1 
       (.I0(state_current[4]),
        .I1(state_current[3]),
        .I2(state_current[0]),
        .O(byte_to_send_next[1]));
  LUT3 #(
    .INIT(8'h10)) 
    \byte_to_send_current[2]_i_1 
       (.I0(state_current[4]),
        .I1(state_current[2]),
        .I2(state_current[3]),
        .O(byte_to_send_next[2]));
  LUT3 #(
    .INIT(8'h04)) 
    \byte_to_send_current[3]_i_1 
       (.I0(state_current[1]),
        .I1(state_current[2]),
        .I2(state_current[3]),
        .O(byte_to_send_next[3]));
  LUT4 #(
    .INIT(16'h3437)) 
    \byte_to_send_current[4]_i_1 
       (.I0(state_current[4]),
        .I1(state_current[3]),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .O(byte_to_send_next[4]));
  LUT4 #(
    .INIT(16'h7723)) 
    \byte_to_send_current[5]_i_1 
       (.I0(state_current[3]),
        .I1(state_current[4]),
        .I2(state_current[2]),
        .I3(state_current[1]),
        .O(byte_to_send_next[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \byte_to_send_current[6]_i_1 
       (.I0(state_current[4]),
        .I1(state_current[3]),
        .O(\byte_to_send_current[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000808820220)) 
    \byte_to_send_current[7]_i_1 
       (.I0(micro_enable_current),
        .I1(state_current[1]),
        .I2(state_current[4]),
        .I3(state_current[2]),
        .I4(state_current[0]),
        .I5(state_current[3]),
        .O(\byte_to_send_current[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \byte_to_send_current[7]_i_2 
       (.I0(state_current[2]),
        .I1(state_current[3]),
        .I2(state_current[1]),
        .I3(state_current[4]),
        .O(byte_to_send_next[7]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(\byte_to_send_current[0]_i_1__1_n_0 ),
        .Q(\byte_to_send_current_reg_n_0_[0] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[1]),
        .Q(\byte_to_send_current_reg_n_0_[1] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[2]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[3]),
        .Q(\byte_to_send_current_reg_n_0_[3] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[4]),
        .Q(\byte_to_send_current_reg_n_0_[4] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[5]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(\byte_to_send_current[6]_i_1_n_0 ),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\byte_to_send_current[7]_i_1_n_0 ),
        .D(byte_to_send_next[7]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    complete_current_i_1
       (.I0(ready_microsoft),
        .I1(micro_enable_current),
        .I2(complete_current),
        .O(complete_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    complete_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(complete_current_i_1_n_0),
        .Q(complete_current),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFFFF05E0)) 
    enable_data_enable_current_i_1
       (.I0(\FSM_sequential_state_current_reg[2]_0 [0]),
        .I1(ready_microsoft),
        .I2(\FSM_sequential_state_current_reg[2]_0 [2]),
        .I3(\FSM_sequential_state_current_reg[2]_0 [1]),
        .I4(enable_data_enable_current),
        .O(enable_data_enable_current_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    read_enable_current_i_1
       (.I0(read_enable_next),
        .I1(micro_enable_current),
        .I2(read_enable_micro),
        .O(read_enable_current_i_1_n_0));
  LUT5 #(
    .INIT(32'h11944028)) 
    read_enable_current_i_2
       (.I0(state_current[3]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(state_current[4]),
        .I4(state_current[1]),
        .O(read_enable_next));
  FDRE #(
    .INIT(1'b0)) 
    read_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(read_enable_current_i_1_n_0),
        .Q(read_enable_micro),
        .R(RESET_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    send_byte_current_i_1
       (.I0(send_byte_next),
        .I1(micro_enable_current),
        .I2(send_byte_micro),
        .O(send_byte_current_i_1_n_0));
  LUT5 #(
    .INIT(32'h04420194)) 
    send_byte_current_i_2
       (.I0(state_current[3]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(state_current[4]),
        .I4(state_current[1]),
        .O(send_byte_next));
  FDRE #(
    .INIT(1'b0)) 
    send_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(send_byte_current_i_1_n_0),
        .Q(send_byte_micro),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'h74)) 
    success_current_i_1
       (.I0(state_current[3]),
        .I1(success_current),
        .I2(microsoft_success),
        .O(success_current_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002080000000)) 
    success_current_i_2
       (.I0(micro_enable_current),
        .I1(state_current[0]),
        .I2(state_current[4]),
        .I3(state_current[2]),
        .I4(state_current[1]),
        .I5(state_current[3]),
        .O(success_current));
  FDRE #(
    .INIT(1'b0)) 
    success_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(success_current_i_1_n_0),
        .Q(microsoft_success),
        .R(RESET_IBUF));
endmodule

module MouseBusInterface
   (DATA_MOUSE_OBUF,
    BUS_INTERRUPTS_RAISE,
    CLK_MOUSE_TRI,
    DATA_MOUSE_TRI,
    BUS_DATA,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    CurrBusDataOutWE_reg,
    Q,
    DATA_MOUSE_IBUF,
    BUS_INTERRUPTS_ACK,
    \CurrBusDataOut_reg[7] ,
    BUS_WE,
    Timer_reg,
    TransmitTimerValue_reg,
    Mem_reg,
    RAMBusWE_reg,
    Mem_reg_0,
    Mem_reg_1,
    Mem_reg_2,
    Mem_reg_3,
    Mem_reg_4,
    Mem_reg_5,
    Mem_reg_6,
    D,
    \CurrBusAddr_reg[1] ,
    CurrBusDataOutWE_reg_0);
  output DATA_MOUSE_OBUF;
  output BUS_INTERRUPTS_RAISE;
  output CLK_MOUSE_TRI;
  output DATA_MOUSE_TRI;
  output [7:0]BUS_DATA;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input CurrBusDataOutWE_reg;
  input [1:0]Q;
  input DATA_MOUSE_IBUF;
  input [0:0]BUS_INTERRUPTS_ACK;
  input [7:0]\CurrBusDataOut_reg[7] ;
  input BUS_WE;
  input [7:0]Timer_reg;
  input TransmitTimerValue_reg;
  input Mem_reg;
  input RAMBusWE_reg;
  input Mem_reg_0;
  input Mem_reg_1;
  input Mem_reg_2;
  input Mem_reg_3;
  input Mem_reg_4;
  input Mem_reg_5;
  input Mem_reg_6;
  input [0:0]D;
  input \CurrBusAddr_reg[1] ;
  input CurrBusDataOutWE_reg_0;

  wire [7:0]BUS_DATA;
  wire [0:0]BUS_INTERRUPTS_ACK;
  wire BUS_INTERRUPTS_RAISE;
  wire BUS_WE;
  wire CLK_IBUF_BUFG;
  wire CLK_MOUSE_TRI;
  wire \CurrBusAddr_reg[1] ;
  wire CurrBusDataOutWE_reg;
  wire CurrBusDataOutWE_reg_0;
  wire [7:0]\CurrBusDataOut_reg[7] ;
  wire [0:0]D;
  wire DATA_MOUSE_IBUF;
  wire DATA_MOUSE_OBUF;
  wire DATA_MOUSE_TRI;
  wire Mem_reg;
  wire Mem_reg_0;
  wire Mem_reg_1;
  wire Mem_reg_2;
  wire Mem_reg_3;
  wire Mem_reg_4;
  wire Mem_reg_5;
  wire Mem_reg_6;
  wire Mem_reg_i_10_n_0;
  wire Mem_reg_i_11_n_0;
  wire Mem_reg_i_12_n_0;
  wire Mem_reg_i_13_n_0;
  wire Mem_reg_i_14_n_0;
  wire Mem_reg_i_15_n_0;
  wire Mem_reg_i_16_n_0;
  wire Mem_reg_i_17_n_0;
  wire Mem_reg_i_18_n_0;
  wire Mem_reg_i_19_n_0;
  wire Mem_reg_i_20_n_0;
  wire Mem_reg_i_21_n_0;
  wire Mem_reg_i_22_n_0;
  wire Mem_reg_i_23_n_0;
  wire Mem_reg_i_24_n_0;
  wire Mem_reg_i_25_n_0;
  wire Mem_reg_i_26_n_0;
  wire Mem_reg_i_28_n_0;
  wire Mem_reg_i_30_n_0;
  wire Mem_reg_i_32_n_0;
  wire Mem_reg_i_34_n_0;
  wire Mem_reg_i_36_n_0;
  wire Mem_reg_i_38_n_0;
  wire Mem_reg_i_40_n_0;
  wire [7:0]Out;
  wire \Out[0]_i_1_n_0 ;
  wire \Out[1]_i_1_n_0 ;
  wire \Out[2]_i_1_n_0 ;
  wire \Out[3]_i_1_n_0 ;
  wire \Out[4]_i_1_n_0 ;
  wire \Out[5]_i_1_n_0 ;
  wire \Out[6]_i_1_n_0 ;
  wire \Out[7]_i_1_n_0 ;
  wire [1:0]Q;
  wire RAMBusWE_reg;
  wire RESET_IBUF;
  wire [7:0]Timer_reg;
  wire TransmitTimerValue_reg;
  wire mouse_WE_reg_n_0;
  wire [7:0]\mouse_memory_reg[0]_0 ;
  wire [7:0]\mouse_memory_reg[1]_1 ;
  wire saved_interrupt_i_1_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_1
       (.I0(Mem_reg_i_10_n_0),
        .I1(Mem_reg_i_11_n_0),
        .O(BUS_DATA[7]));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_10
       (.I0(Mem_reg_i_26_n_0),
        .I1(Mem_reg_6),
        .O(Mem_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_11
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_12
       (.I0(Mem_reg_i_28_n_0),
        .I1(Mem_reg_5),
        .O(Mem_reg_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_13
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_14
       (.I0(Mem_reg_i_30_n_0),
        .I1(Mem_reg_4),
        .O(Mem_reg_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_15
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_16
       (.I0(Mem_reg_i_32_n_0),
        .I1(Mem_reg_3),
        .O(Mem_reg_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_17
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_17_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_18
       (.I0(Mem_reg_i_34_n_0),
        .I1(Mem_reg_2),
        .O(Mem_reg_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_19
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_19_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_2
       (.I0(Mem_reg_i_12_n_0),
        .I1(Mem_reg_i_13_n_0),
        .O(BUS_DATA[6]));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_20
       (.I0(Mem_reg_i_36_n_0),
        .I1(Mem_reg_1),
        .O(Mem_reg_i_20_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_21
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_21_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_22
       (.I0(Mem_reg_i_38_n_0),
        .I1(Mem_reg_0),
        .O(Mem_reg_i_22_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_23
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_23_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Mem_reg_i_24
       (.I0(Mem_reg_i_40_n_0),
        .I1(Mem_reg),
        .O(Mem_reg_i_24_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Mem_reg_i_25
       (.I0(mouse_WE_reg_n_0),
        .I1(BUS_WE),
        .I2(TransmitTimerValue_reg),
        .I3(RAMBusWE_reg),
        .O(Mem_reg_i_25_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_26
       (.I0(Out[7]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [7]),
        .I3(BUS_WE),
        .I4(Timer_reg[7]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_26_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_28
       (.I0(Out[6]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [6]),
        .I3(BUS_WE),
        .I4(Timer_reg[6]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_28_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_3
       (.I0(Mem_reg_i_14_n_0),
        .I1(Mem_reg_i_15_n_0),
        .O(BUS_DATA[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_30
       (.I0(Out[5]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [5]),
        .I3(BUS_WE),
        .I4(Timer_reg[5]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_32
       (.I0(Out[4]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [4]),
        .I3(BUS_WE),
        .I4(Timer_reg[4]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_32_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_34
       (.I0(Out[3]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [3]),
        .I3(BUS_WE),
        .I4(Timer_reg[3]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_34_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_36
       (.I0(Out[2]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [2]),
        .I3(BUS_WE),
        .I4(Timer_reg[2]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_36_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_38
       (.I0(Out[1]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [1]),
        .I3(BUS_WE),
        .I4(Timer_reg[1]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_38_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_4
       (.I0(Mem_reg_i_16_n_0),
        .I1(Mem_reg_i_17_n_0),
        .O(BUS_DATA[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Mem_reg_i_40
       (.I0(Out[0]),
        .I1(mouse_WE_reg_n_0),
        .I2(\CurrBusDataOut_reg[7] [0]),
        .I3(BUS_WE),
        .I4(Timer_reg[0]),
        .I5(TransmitTimerValue_reg),
        .O(Mem_reg_i_40_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_5
       (.I0(Mem_reg_i_18_n_0),
        .I1(Mem_reg_i_19_n_0),
        .O(BUS_DATA[3]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_6
       (.I0(Mem_reg_i_20_n_0),
        .I1(Mem_reg_i_21_n_0),
        .O(BUS_DATA[2]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_7
       (.I0(Mem_reg_i_22_n_0),
        .I1(Mem_reg_i_23_n_0),
        .O(BUS_DATA[1]));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_8
       (.I0(Mem_reg_i_24_n_0),
        .I1(Mem_reg_i_25_n_0),
        .O(BUS_DATA[0]));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[0]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [0]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [0]),
        .I3(Q[1]),
        .O(\Out[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[1]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [1]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [1]),
        .I3(Q[1]),
        .O(\Out[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[2]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [2]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [2]),
        .I3(Q[1]),
        .O(\Out[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[3]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [3]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [3]),
        .I3(Q[1]),
        .O(\Out[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[4]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [4]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [4]),
        .I3(Q[1]),
        .O(\Out[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[5]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [5]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [5]),
        .I3(Q[1]),
        .O(\Out[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[6]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [6]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [6]),
        .I3(Q[1]),
        .O(\Out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \Out[7]_i_1 
       (.I0(\mouse_memory_reg[1]_1 [7]),
        .I1(Q[0]),
        .I2(\mouse_memory_reg[0]_0 [7]),
        .I3(Q[1]),
        .O(\Out[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[0]_i_1_n_0 ),
        .Q(Out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[1]_i_1_n_0 ),
        .Q(Out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[2]_i_1_n_0 ),
        .Q(Out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[3]_i_1_n_0 ),
        .Q(Out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[4]_i_1_n_0 ),
        .Q(Out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[5]_i_1_n_0 ),
        .Q(Out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[6]_i_1_n_0 ),
        .Q(Out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Out[7]_i_1_n_0 ),
        .Q(Out[7]),
        .R(1'b0));
  MouseWrapper mouse
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLK_MOUSE_TRI(CLK_MOUSE_TRI),
        .D(D),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .DATA_MOUSE_OBUF(DATA_MOUSE_OBUF),
        .DATA_MOUSE_TRI(DATA_MOUSE_TRI),
        .RESET_IBUF(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    mouse_WE_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CurrBusDataOutWE_reg),
        .Q(mouse_WE_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[0]),
        .Q(\mouse_memory_reg[0]_0 [0]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[1]),
        .Q(\mouse_memory_reg[0]_0 [1]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[2]),
        .Q(\mouse_memory_reg[0]_0 [2]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[3]),
        .Q(\mouse_memory_reg[0]_0 [3]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[4]),
        .Q(\mouse_memory_reg[0]_0 [4]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[5]),
        .Q(\mouse_memory_reg[0]_0 [5]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[6]),
        .Q(\mouse_memory_reg[0]_0 [6]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[0][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[7]),
        .Q(\mouse_memory_reg[0]_0 [7]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[0]),
        .Q(\mouse_memory_reg[1]_1 [0]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[1]),
        .Q(\mouse_memory_reg[1]_1 [1]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[2]),
        .Q(\mouse_memory_reg[1]_1 [2]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[3]),
        .Q(\mouse_memory_reg[1]_1 [3]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[4]),
        .Q(\mouse_memory_reg[1]_1 [4]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[5]),
        .Q(\mouse_memory_reg[1]_1 [5]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[6]),
        .Q(\mouse_memory_reg[1]_1 [6]),
        .R(CurrBusDataOutWE_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \mouse_memory_reg[1][7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(BUS_DATA[7]),
        .Q(\mouse_memory_reg[1]_1 [7]),
        .R(CurrBusDataOutWE_reg_0));
  LUT3 #(
    .INIT(8'h02)) 
    saved_interrupt_i_1
       (.I0(BUS_INTERRUPTS_RAISE),
        .I1(BUS_INTERRUPTS_ACK),
        .I2(RESET_IBUF),
        .O(saved_interrupt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    saved_interrupt_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(saved_interrupt_i_1_n_0),
        .Q(BUS_INTERRUPTS_RAISE),
        .R(1'b0));
endmodule

module MouseMasterSM
   (out,
    read_enable_current_reg,
    \Curr_TimeoutCounter_reg[0] ,
    \FSM_onehot_state_current_reg[0] ,
    \FSM_onehot_state_current_reg[6] ,
    SendByteToMouse,
    \Curr_ByteToSend_reg[7] ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    DATA_MOUSE_IBUF,
    byte_recieved,
    ByteSentToMouse,
    \Curr_MSCodeShiftReg_reg[5] ,
    \Curr_MSCodeShiftReg_reg[2] ,
    \FSM_sequential_state_current_reg[4] ,
    \Curr_MSCodeShiftReg_reg[3] ,
    D,
    \Curr_MSCodeShiftReg_reg[2]_0 );
  output [1:0]out;
  output [1:0]read_enable_current_reg;
  output \Curr_TimeoutCounter_reg[0] ;
  output \FSM_onehot_state_current_reg[0] ;
  output \FSM_onehot_state_current_reg[6] ;
  output SendByteToMouse;
  output [7:0]\Curr_ByteToSend_reg[7] ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input DATA_MOUSE_IBUF;
  input byte_recieved;
  input ByteSentToMouse;
  input \Curr_MSCodeShiftReg_reg[5] ;
  input \Curr_MSCodeShiftReg_reg[2] ;
  input \FSM_sequential_state_current_reg[4] ;
  input \Curr_MSCodeShiftReg_reg[3] ;
  input [2:0]D;
  input \Curr_MSCodeShiftReg_reg[2]_0 ;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend[2]_i_5_n_0 ;
  wire \Curr_ByteToSend[3]_i_3_n_0 ;
  wire \Curr_ByteToSend[7]_i_15_n_0 ;
  wire \Curr_ByteToSend[7]_i_17_n_0 ;
  wire \Curr_ByteToSend[7]_i_18_n_0 ;
  wire \Curr_ByteToSend[7]_i_19_n_0 ;
  wire \Curr_ByteToSend[7]_i_20_n_0 ;
  wire \Curr_ByteToSend[7]_i_8_n_0 ;
  wire [7:0]\Curr_ByteToSend_reg[7] ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_MSCodeShiftReg_reg[2]_0 ;
  wire \Curr_MSCodeShiftReg_reg[3] ;
  wire \Curr_MSCodeShiftReg_reg[5] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire [2:0]D;
  wire DATA_MOUSE_IBUF;
  wire \FSM_onehot_state_current_reg[0] ;
  wire \FSM_onehot_state_current_reg[6] ;
  wire \FSM_sequential_Curr_State[2]_i_23_n_0 ;
  wire \FSM_sequential_state_current_reg[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_state_current_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_state_current_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_state_current_reg_n_0_[2] ;
  wire RESET_IBUF;
  wire SendByteToMouse;
  wire byte_recieved;
  wire \counter_current[0]_i_10_n_0 ;
  wire \counter_current[0]_i_1__0_n_0 ;
  wire \counter_current[0]_i_3_n_0 ;
  wire \counter_current[0]_i_4_n_0 ;
  wire \counter_current[0]_i_5_n_0 ;
  wire \counter_current[0]_i_6_n_0 ;
  wire \counter_current[0]_i_7_n_0 ;
  wire \counter_current[0]_i_8_n_0 ;
  wire \counter_current[0]_i_9_n_0 ;
  wire \counter_current[12]_i_2_n_0 ;
  wire \counter_current[12]_i_3_n_0 ;
  wire \counter_current[12]_i_4_n_0 ;
  wire \counter_current[12]_i_5_n_0 ;
  wire \counter_current[16]_i_2_n_0 ;
  wire \counter_current[16]_i_3_n_0 ;
  wire \counter_current[16]_i_4_n_0 ;
  wire \counter_current[16]_i_5_n_0 ;
  wire \counter_current[4]_i_2_n_0 ;
  wire \counter_current[4]_i_3_n_0 ;
  wire \counter_current[4]_i_4_n_0 ;
  wire \counter_current[4]_i_5_n_0 ;
  wire \counter_current[8]_i_2_n_0 ;
  wire \counter_current[8]_i_3_n_0 ;
  wire \counter_current[8]_i_4_n_0 ;
  wire \counter_current[8]_i_5_n_0 ;
  wire [20:6]counter_current_reg;
  wire \counter_current_reg[0]_i_2_n_0 ;
  wire \counter_current_reg[0]_i_2_n_4 ;
  wire \counter_current_reg[0]_i_2_n_5 ;
  wire \counter_current_reg[0]_i_2_n_6 ;
  wire \counter_current_reg[0]_i_2_n_7 ;
  wire \counter_current_reg[12]_i_1_n_0 ;
  wire \counter_current_reg[12]_i_1_n_4 ;
  wire \counter_current_reg[12]_i_1_n_5 ;
  wire \counter_current_reg[12]_i_1_n_6 ;
  wire \counter_current_reg[12]_i_1_n_7 ;
  wire \counter_current_reg[16]_i_1_n_0 ;
  wire \counter_current_reg[16]_i_1_n_4 ;
  wire \counter_current_reg[16]_i_1_n_5 ;
  wire \counter_current_reg[16]_i_1_n_6 ;
  wire \counter_current_reg[16]_i_1_n_7 ;
  wire \counter_current_reg[4]_i_1_n_0 ;
  wire \counter_current_reg[4]_i_1_n_4 ;
  wire \counter_current_reg[4]_i_1_n_5 ;
  wire \counter_current_reg[4]_i_1_n_6 ;
  wire \counter_current_reg[4]_i_1_n_7 ;
  wire \counter_current_reg[8]_i_1_n_0 ;
  wire \counter_current_reg[8]_i_1_n_4 ;
  wire \counter_current_reg[8]_i_1_n_5 ;
  wire \counter_current_reg[8]_i_1_n_6 ;
  wire \counter_current_reg[8]_i_1_n_7 ;
  wire \counter_current_reg_n_0_[0] ;
  wire \counter_current_reg_n_0_[1] ;
  wire \counter_current_reg_n_0_[2] ;
  wire \counter_current_reg_n_0_[3] ;
  wire \counter_current_reg_n_0_[4] ;
  wire \counter_current_reg_n_0_[5] ;
  wire data_enable_current;
  wire data_enable_next2_out;
  wire data_reporting_n_12;
  wire data_reporting_n_13;
  wire data_reporting_n_14;
  wire data_reporting_n_4;
  wire data_reporting_n_6;
  wire data_reporting_n_7;
  wire enable_data_enable_current;
  wire enable_data_success;
  wire micro_enable_current;
  wire micro_enable_current_i_1_n_0;
  wire microsoft_n_11;
  wire microsoft_n_12;
  wire microsoft_n_13;
  wire microsoft_n_14;
  wire microsoft_n_4;
  wire microsoft_n_5;
  wire microsoft_n_6;
  wire microsoft_n_7;
  wire microsoft_success;
  wire [1:0]out;
  wire read_data_enable_current;
  wire read_data_success;
  wire [1:0]read_enable_current_reg;
  wire read_enable_data;
  wire read_enable_enable_data;
  wire read_enable_read_data;
  wire read_enable_reset;
  wire read_remote_data_n_10;
  wire read_remote_data_n_11;
  wire read_remote_data_n_3;
  wire read_remote_data_n_4;
  wire read_remote_data_n_5;
  wire read_remote_data_n_7;
  wire read_remote_data_n_8;
  wire read_remote_data_n_9;
  wire ready_enable_data;
  wire ready_microsoft;
  wire ready_remote;
  wire ready_reset;
  wire remote_enable_current;
  wire remote_enable_current_i_1_n_0;
  wire remote_n_1;
  wire remote_n_2;
  wire remote_n_3;
  wire remote_n_4;
  wire remote_n_5;
  wire remote_n_6;
  wire remote_n_7;
  wire reset_enable_current;
  wire reset_enable_current_i_2_n_0;
  wire reset_n_10;
  wire reset_n_11;
  wire reset_n_12;
  wire reset_n_4;
  wire reset_n_9;
  wire send_byte_enable_data;
  wire send_byte_read_data;
  wire xlnx_opt_;
  wire [3:1]NLW_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_CARRY4_S_UNCONNECTED;
  wire [2:0]\NLW_counter_current_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[8]_i_1_CO_UNCONNECTED ;
  wire [0:0]NLW_remote_in0_UNCONNECTED;

  CARRY4 CARRY4
       (.CI(xlnx_opt_),
        .CO({NLW_CARRY4_CO_UNCONNECTED[3:1],\counter_current_reg[16]_i_1_n_0 }),
        .CYINIT(1'b0),
        .DI({NLW_CARRY4_DI_UNCONNECTED[3:1],1'b0}),
        .O(NLW_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_CARRY4_S_UNCONNECTED[3:1],1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    \Curr_ByteToSend[2]_i_5 
       (.I0(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[1] ),
        .O(\Curr_ByteToSend[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Curr_ByteToSend[3]_i_3 
       (.I0(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_current_reg_n_0_[0] ),
        .O(\Curr_ByteToSend[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Curr_ByteToSend[7]_i_15 
       (.I0(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[1] ),
        .O(\Curr_ByteToSend[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Curr_ByteToSend[7]_i_17 
       (.I0(counter_current_reg[13]),
        .I1(counter_current_reg[10]),
        .I2(counter_current_reg[12]),
        .I3(counter_current_reg[11]),
        .I4(counter_current_reg[20]),
        .I5(counter_current_reg[15]),
        .O(\Curr_ByteToSend[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Curr_ByteToSend[7]_i_18 
       (.I0(counter_current_reg[10]),
        .I1(counter_current_reg[13]),
        .I2(counter_current_reg[11]),
        .I3(counter_current_reg[12]),
        .O(\Curr_ByteToSend[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Curr_ByteToSend[7]_i_19 
       (.I0(counter_current_reg[15]),
        .I1(counter_current_reg[20]),
        .O(\Curr_ByteToSend[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \Curr_ByteToSend[7]_i_20 
       (.I0(counter_current_reg[20]),
        .I1(counter_current_reg[19]),
        .I2(counter_current_reg[16]),
        .I3(counter_current_reg[18]),
        .I4(counter_current_reg[17]),
        .O(\Curr_ByteToSend[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \Curr_ByteToSend[7]_i_8 
       (.I0(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I2(\Curr_ByteToSend[7]_i_17_n_0 ),
        .I3(counter_current_reg[6]),
        .I4(counter_current_reg[7]),
        .I5(counter_current_reg[8]),
        .O(\Curr_ByteToSend[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_Curr_State[2]_i_23 
       (.I0(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[2] ),
        .O(\FSM_sequential_Curr_State[2]_i_23_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(remote_n_3),
        .Q(\FSM_sequential_state_current_reg_n_0_[0] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(read_remote_data_n_7),
        .Q(\FSM_sequential_state_current_reg_n_0_[1] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data_reporting_n_7),
        .Q(\FSM_sequential_state_current_reg_n_0_[2] ),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \counter_current[0]_i_10 
       (.I0(\Curr_ByteToSend[7]_i_20_n_0 ),
        .I1(counter_current_reg[15]),
        .I2(counter_current_reg[20]),
        .I3(counter_current_reg[14]),
        .O(\counter_current[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter_current[0]_i_1__0 
       (.I0(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I2(\FSM_sequential_state_current_reg_n_0_[0] ),
        .O(\counter_current[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[0]_i_3 
       (.I0(\counter_current_reg_n_0_[0] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[0]_i_4 
       (.I0(\counter_current_reg_n_0_[3] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[0]_i_5 
       (.I0(\counter_current_reg_n_0_[2] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[0]_i_6 
       (.I0(\counter_current_reg_n_0_[1] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter_current[0]_i_7 
       (.I0(\counter_current[0]_i_8_n_0 ),
        .I1(\counter_current[0]_i_9_n_0 ),
        .I2(\counter_current[0]_i_10_n_0 ),
        .I3(\counter_current_reg_n_0_[0] ),
        .O(\counter_current[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter_current[0]_i_8 
       (.I0(counter_current_reg[8]),
        .I1(counter_current_reg[7]),
        .I2(counter_current_reg[6]),
        .I3(\Curr_ByteToSend[7]_i_17_n_0 ),
        .O(\counter_current[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter_current[0]_i_9 
       (.I0(counter_current_reg[9]),
        .I1(\Curr_ByteToSend[7]_i_19_n_0 ),
        .I2(counter_current_reg[12]),
        .I3(counter_current_reg[11]),
        .I4(counter_current_reg[13]),
        .I5(counter_current_reg[10]),
        .O(\counter_current[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[12]_i_2 
       (.I0(counter_current_reg[15]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[12]_i_3 
       (.I0(counter_current_reg[14]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[12]_i_4 
       (.I0(counter_current_reg[13]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[12]_i_5 
       (.I0(counter_current_reg[12]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[16]_i_2 
       (.I0(counter_current_reg[19]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[16]_i_3 
       (.I0(counter_current_reg[18]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[16]_i_4 
       (.I0(counter_current_reg[17]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[16]_i_5 
       (.I0(counter_current_reg[16]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[4]_i_2 
       (.I0(counter_current_reg[7]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[4]_i_3 
       (.I0(counter_current_reg[6]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[4]_i_4 
       (.I0(\counter_current_reg_n_0_[5] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[4]_i_5 
       (.I0(\counter_current_reg_n_0_[4] ),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[8]_i_2 
       (.I0(counter_current_reg[11]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[8]_i_3 
       (.I0(counter_current_reg[10]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[8]_i_4 
       (.I0(counter_current_reg[9]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[8]_i_5 
       (.I0(counter_current_reg[8]),
        .I1(reset_enable_current_i_2_n_0),
        .O(\counter_current[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[0]_i_2_n_7 ),
        .Q(\counter_current_reg_n_0_[0] ),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_current_reg[0]_i_2_n_0 ,\NLW_counter_current_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter_current[0]_i_3_n_0 }),
        .O({\counter_current_reg[0]_i_2_n_4 ,\counter_current_reg[0]_i_2_n_5 ,\counter_current_reg[0]_i_2_n_6 ,\counter_current_reg[0]_i_2_n_7 }),
        .S({\counter_current[0]_i_4_n_0 ,\counter_current[0]_i_5_n_0 ,\counter_current[0]_i_6_n_0 ,\counter_current[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[8]_i_1_n_5 ),
        .Q(counter_current_reg[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[8]_i_1_n_4 ),
        .Q(counter_current_reg[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[12]_i_1_n_7 ),
        .Q(counter_current_reg[12]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[12]_i_1 
       (.CI(\counter_current_reg[8]_i_1_n_0 ),
        .CO({\counter_current_reg[12]_i_1_n_0 ,\NLW_counter_current_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_current_reg[12]_i_1_n_4 ,\counter_current_reg[12]_i_1_n_5 ,\counter_current_reg[12]_i_1_n_6 ,\counter_current_reg[12]_i_1_n_7 }),
        .S({\counter_current[12]_i_2_n_0 ,\counter_current[12]_i_3_n_0 ,\counter_current[12]_i_4_n_0 ,\counter_current[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[12]_i_1_n_6 ),
        .Q(counter_current_reg[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[12]_i_1_n_5 ),
        .Q(counter_current_reg[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[12]_i_1_n_4 ),
        .Q(counter_current_reg[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[16]_i_1_n_7 ),
        .Q(counter_current_reg[16]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[16]_i_1 
       (.CI(\counter_current_reg[12]_i_1_n_0 ),
        .CO({xlnx_opt_,\NLW_counter_current_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_current_reg[16]_i_1_n_4 ,\counter_current_reg[16]_i_1_n_5 ,\counter_current_reg[16]_i_1_n_6 ,\counter_current_reg[16]_i_1_n_7 }),
        .S({\counter_current[16]_i_2_n_0 ,\counter_current[16]_i_3_n_0 ,\counter_current[16]_i_4_n_0 ,\counter_current[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[16]_i_1_n_6 ),
        .Q(counter_current_reg[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[16]_i_1_n_5 ),
        .Q(counter_current_reg[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[16]_i_1_n_4 ),
        .Q(counter_current_reg[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[0]_i_2_n_6 ),
        .Q(\counter_current_reg_n_0_[1] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[16]_i_1_n_0 ),
        .Q(counter_current_reg[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[0]_i_2_n_5 ),
        .Q(\counter_current_reg_n_0_[2] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[0]_i_2_n_4 ),
        .Q(\counter_current_reg_n_0_[3] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[4]_i_1_n_7 ),
        .Q(\counter_current_reg_n_0_[4] ),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[4]_i_1 
       (.CI(\counter_current_reg[0]_i_2_n_0 ),
        .CO({\counter_current_reg[4]_i_1_n_0 ,\NLW_counter_current_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_current_reg[4]_i_1_n_4 ,\counter_current_reg[4]_i_1_n_5 ,\counter_current_reg[4]_i_1_n_6 ,\counter_current_reg[4]_i_1_n_7 }),
        .S({\counter_current[4]_i_2_n_0 ,\counter_current[4]_i_3_n_0 ,\counter_current[4]_i_4_n_0 ,\counter_current[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[4]_i_1_n_6 ),
        .Q(\counter_current_reg_n_0_[5] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[4]_i_1_n_5 ),
        .Q(counter_current_reg[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[4]_i_1_n_4 ),
        .Q(counter_current_reg[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[8]_i_1_n_7 ),
        .Q(counter_current_reg[8]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[8]_i_1 
       (.CI(\counter_current_reg[4]_i_1_n_0 ),
        .CO({\counter_current_reg[8]_i_1_n_0 ,\NLW_counter_current_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_current_reg[8]_i_1_n_4 ,\counter_current_reg[8]_i_1_n_5 ,\counter_current_reg[8]_i_1_n_6 ,\counter_current_reg[8]_i_1_n_7 }),
        .S({\counter_current[8]_i_2_n_0 ,\counter_current[8]_i_3_n_0 ,\counter_current[8]_i_4_n_0 ,\counter_current[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[0]_i_1__0_n_0 ),
        .D(\counter_current_reg[8]_i_1_n_6 ),
        .Q(counter_current_reg[9]),
        .R(RESET_IBUF));
  Mouse_Data data
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2]_0 ),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .data_enable_current(data_enable_current),
        .microsoft_success(microsoft_success),
        .read_enable_data(read_enable_data));
  FDRE #(
    .INIT(1'b0)) 
    data_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data_reporting_n_6),
        .Q(data_enable_current),
        .R(RESET_IBUF));
  Data_Reporting_Mode data_reporting
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[0] (data_reporting_n_13),
        .\Curr_ByteToSend_reg[0]_0 (data_reporting_n_14),
        .\Curr_ByteToSend_reg[2] (data_reporting_n_4),
        .\Curr_ByteToSend_reg[4] (data_reporting_n_12),
        .\Curr_ByteToSend_reg[7] ({\Curr_ByteToSend_reg[7] [7:5],\Curr_ByteToSend_reg[7] [2]}),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2] ),
        .\Curr_TimeoutCounter_reg[0] (\Curr_TimeoutCounter_reg[0] ),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .\FSM_sequential_state_current_reg[0] (read_remote_data_n_4),
        .\FSM_sequential_state_current_reg[1] (read_remote_data_n_8),
        .\FSM_sequential_state_current_reg[1]_0 (read_remote_data_n_11),
        .\FSM_sequential_state_current_reg[1]_1 (remote_n_7),
        .\FSM_sequential_state_current_reg[1]_2 (\FSM_sequential_Curr_State[2]_i_23_n_0 ),
        .\FSM_sequential_state_current_reg[1]_3 (\Curr_ByteToSend[7]_i_8_n_0 ),
        .\FSM_sequential_state_current_reg[2] (data_reporting_n_7),
        .\FSM_sequential_state_current_reg[2]_0 (\Curr_ByteToSend[2]_i_5_n_0 ),
        .Q({microsoft_n_11,microsoft_n_12,microsoft_n_13,microsoft_n_14}),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .\byte_to_send_current_reg[2]_0 (reset_n_9),
        .complete_current_reg_0(remote_n_4),
        .complete_current_reg_1(reset_n_12),
        .\counter_current_reg[15] (\counter_current[0]_i_10_n_0 ),
        .\counter_current_reg[9] (\counter_current[0]_i_9_n_0 ),
        .data_enable_current(data_enable_current),
        .data_enable_current_reg(data_reporting_n_6),
        .data_enable_next2_out(data_enable_next2_out),
        .enable_data_enable_current(enable_data_enable_current),
        .enable_data_success(enable_data_success),
        .in0(\FSM_sequential_state_current_reg_n_0_[2] ),
        .out({\FSM_sequential_state_current_reg_n_0_[2] ,\FSM_sequential_state_current_reg_n_0_[1] ,\FSM_sequential_state_current_reg_n_0_[0] }),
        .read_byte_current_reg(microsoft_n_6),
        .read_data_success(read_data_success),
        .read_enable_current_reg(reset_n_10),
        .read_enable_data(read_enable_data),
        .read_enable_enable_data(read_enable_enable_data),
        .read_enable_reset(read_enable_reset),
        .ready_enable_data(ready_enable_data),
        .ready_microsoft(ready_microsoft),
        .send_byte_enable_data(send_byte_enable_data));
  FDRE #(
    .INIT(1'b0)) 
    enable_data_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(microsoft_n_4),
        .Q(enable_data_enable_current),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hFF02)) 
    micro_enable_current_i_1
       (.I0(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[0] ),
        .I2(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I3(micro_enable_current),
        .O(micro_enable_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    micro_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(micro_enable_current_i_1_n_0),
        .Q(micro_enable_current),
        .R(RESET_IBUF));
  Microsoft_Mode microsoft
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[0] (microsoft_n_5),
        .\Curr_ByteToSend_reg[3] ({\Curr_ByteToSend_reg[7] [3],\Curr_ByteToSend_reg[7] [1:0]}),
        .\Curr_ByteToSend_reg[4] (microsoft_n_7),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2] ),
        .\Curr_MSCodeShiftReg_reg[3] (\Curr_MSCodeShiftReg_reg[3] ),
        .\Curr_MSCodeShiftReg_reg[5] (\Curr_MSCodeShiftReg_reg[5] ),
        .\Curr_TimeoutCounter_reg[0] (microsoft_n_6),
        .\FSM_sequential_state_current_reg[1]_0 (\Curr_ByteToSend[3]_i_3_n_0 ),
        .\FSM_sequential_state_current_reg[1]_1 (reset_n_11),
        .\FSM_sequential_state_current_reg[1]_2 (read_remote_data_n_9),
        .\FSM_sequential_state_current_reg[2]_0 ({\FSM_sequential_state_current_reg_n_0_[2] ,\FSM_sequential_state_current_reg_n_0_[1] ,\FSM_sequential_state_current_reg_n_0_[0] }),
        .\FSM_sequential_state_current_reg[4]_0 (\FSM_sequential_state_current_reg[4] ),
        .Q({microsoft_n_11,microsoft_n_12,microsoft_n_13,microsoft_n_14}),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .\byte_to_send_current_reg[2]_0 (data_reporting_n_4),
        .enable_data_enable_current(enable_data_enable_current),
        .enable_data_enable_current_reg(microsoft_n_4),
        .micro_enable_current(micro_enable_current),
        .microsoft_success(microsoft_success),
        .out(out),
        .read_enable_data(read_enable_data),
        .read_enable_enable_data(read_enable_enable_data),
        .ready_microsoft(ready_microsoft),
        .send_byte_enable_data(send_byte_enable_data));
  FDRE #(
    .INIT(1'b0)) 
    read_data_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(remote_n_1),
        .Q(read_data_enable_current),
        .R(RESET_IBUF));
  Read_Remote_Data read_remote_data
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[0] (read_remote_data_n_10),
        .\Curr_ByteToSend_reg[3] (read_remote_data_n_5),
        .\Curr_ByteToSend_reg[3]_0 (read_remote_data_n_9),
        .\Curr_ByteToSend_reg[5] (read_remote_data_n_4),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2] ),
        .\Curr_TimeoutCounter_reg[0] (read_remote_data_n_11),
        .\FSM_sequential_state_current_reg[1]_0 (read_remote_data_n_7),
        .\FSM_sequential_state_current_reg[1]_1 (read_remote_data_n_8),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .\byte_to_send_current_reg[0]_0 (read_remote_data_n_3),
        .complete_current_reg_0(remote_n_4),
        .data_enable_next2_out(data_enable_next2_out),
        .enable_data_success(enable_data_success),
        .in0(\FSM_sequential_state_current_reg_n_0_[1] ),
        .out({\FSM_sequential_state_current_reg_n_0_[2] ,\FSM_sequential_state_current_reg_n_0_[1] ,\FSM_sequential_state_current_reg_n_0_[0] }),
        .read_data_enable_current(read_data_enable_current),
        .read_data_success(read_data_success),
        .read_enable_data(read_enable_data),
        .read_enable_read_data(read_enable_read_data),
        .ready_enable_data(ready_enable_data),
        .ready_remote(ready_remote),
        .ready_reset(ready_reset),
        .send_byte_read_data(send_byte_read_data));
  Remote_Mode remote
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[0] (remote_n_5),
        .\Curr_ByteToSend_reg[4] (remote_n_2),
        .\Curr_ByteToSend_reg[7] (remote_n_7),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2] ),
        .\Curr_TimeoutCounter_reg[0] (remote_n_6),
        .\FSM_sequential_state_current_reg[0]_0 (remote_n_3),
        .\FSM_sequential_state_current_reg[0]_1 (remote_n_4),
        .\FSM_sequential_state_current_reg[1]_0 (read_remote_data_n_8),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .\byte_to_send_current_reg[0] (read_remote_data_n_3),
        .\counter_current_reg[15] (reset_enable_current_i_2_n_0),
        .in0(NLW_remote_in0_UNCONNECTED[0]),
        .out({\FSM_sequential_state_current_reg_n_0_[2] ,\FSM_sequential_state_current_reg_n_0_[1] ,\FSM_sequential_state_current_reg_n_0_[0] }),
        .read_data_enable_current(read_data_enable_current),
        .read_data_enable_current_reg(remote_n_1),
        .read_enable_read_data(read_enable_read_data),
        .ready_microsoft(ready_microsoft),
        .ready_remote(ready_remote),
        .remote_enable_current(remote_enable_current),
        .send_byte_read_data(send_byte_read_data));
  LUT4 #(
    .INIT(16'hFF40)) 
    remote_enable_current_i_1
       (.I0(\FSM_sequential_state_current_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_current_reg_n_0_[1] ),
        .I2(\FSM_sequential_state_current_reg_n_0_[0] ),
        .I3(remote_enable_current),
        .O(remote_enable_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    remote_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(remote_enable_current_i_1_n_0),
        .Q(remote_enable_current),
        .R(RESET_IBUF));
  Reset_Mouse reset
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[2] (reset_n_12),
        .\Curr_ByteToSend_reg[3] (reset_n_11),
        .\Curr_ByteToSend_reg[4] (\Curr_ByteToSend_reg[7] [4]),
        .\Curr_ByteToSend_reg[4]_0 (reset_n_9),
        .\Curr_MSCodeShiftReg_reg[2] (\Curr_MSCodeShiftReg_reg[2] ),
        .\Curr_TimeoutCounter_reg[0] (reset_n_10),
        .D(D),
        .\FSM_onehot_state_current_reg[0]_0 (\FSM_onehot_state_current_reg[0] ),
        .\FSM_onehot_state_current_reg[6]_0 (\FSM_onehot_state_current_reg[6] ),
        .\FSM_sequential_state_current_reg[0] (microsoft_n_7),
        .\FSM_sequential_state_current_reg[1] (\Curr_ByteToSend[7]_i_8_n_0 ),
        .\FSM_sequential_state_current_reg[1]_0 (microsoft_n_5),
        .\FSM_sequential_state_current_reg[1]_1 (remote_n_2),
        .\FSM_sequential_state_current_reg[1]_2 (data_reporting_n_13),
        .\FSM_sequential_state_current_reg[1]_3 (read_remote_data_n_10),
        .\FSM_sequential_state_current_reg[2] ({\FSM_sequential_state_current_reg_n_0_[2] ,\FSM_sequential_state_current_reg_n_0_[1] ,\FSM_sequential_state_current_reg_n_0_[0] }),
        .\FSM_sequential_state_current_reg[2]_0 (data_reporting_n_14),
        .\FSM_sequential_state_current_reg[2]_1 (\Curr_ByteToSend[7]_i_15_n_0 ),
        .\FSM_sequential_state_current_reg[2]_2 (remote_n_5),
        .\FSM_sequential_state_current_reg[2]_3 (remote_n_6),
        .RESET_IBUF(RESET_IBUF),
        .SendByteToMouse(SendByteToMouse),
        .byte_recieved(byte_recieved),
        .\byte_to_send_current_reg[0]_0 (read_remote_data_n_5),
        .\byte_to_send_current_reg[2] (data_reporting_n_4),
        .counter_current_reg({counter_current_reg[14],counter_current_reg[9]}),
        .\counter_current_reg[10]_0 (\Curr_ByteToSend[7]_i_18_n_0 ),
        .\counter_current_reg[15]_0 (reset_enable_current_i_2_n_0),
        .\counter_current_reg[15]_1 (\Curr_ByteToSend[7]_i_19_n_0 ),
        .\counter_current_reg[20]_0 (\Curr_ByteToSend[7]_i_20_n_0 ),
        .out(read_enable_current_reg),
        .read_enable_reset(read_enable_reset),
        .ready_reset(ready_reset),
        .reset_enable_current(reset_enable_current),
        .reset_enable_current_reg(reset_n_4),
        .success_current_reg(data_reporting_n_12));
  LUT3 #(
    .INIT(8'hFE)) 
    reset_enable_current_i_2
       (.I0(\counter_current[0]_i_10_n_0 ),
        .I1(\counter_current[0]_i_9_n_0 ),
        .I2(\counter_current[0]_i_8_n_0 ),
        .O(reset_enable_current_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(reset_n_4),
        .Q(reset_enable_current),
        .R(RESET_IBUF));
endmodule

module MouseReceiver
   (byte_recieved,
    \FSM_onehot_state_current_reg[5] ,
    \FSM_sequential_state_current_reg[0] ,
    \FSM_sequential_state_current_reg[0]_0 ,
    \FSM_sequential_state_current_reg[3] ,
    \FSM_sequential_state_current_reg[0]_1 ,
    D,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    ClkMouseIn,
    ClkMouseInDly,
    Next_State0,
    DATA_MOUSE_IBUF,
    out,
    \FSM_onehot_state_current_reg[3] ,
    \FSM_onehot_state_current_reg[6] ,
    \FSM_onehot_state_current_reg[4] ,
    Next_State0_0,
    Curr_MouseDataOut_reg);
  output byte_recieved;
  output \FSM_onehot_state_current_reg[5] ;
  output \FSM_sequential_state_current_reg[0] ;
  output \FSM_sequential_state_current_reg[0]_0 ;
  output \FSM_sequential_state_current_reg[3] ;
  output \FSM_sequential_state_current_reg[0]_1 ;
  output [2:0]D;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input ClkMouseIn;
  input ClkMouseInDly;
  input Next_State0;
  input DATA_MOUSE_IBUF;
  input [1:0]out;
  input \FSM_onehot_state_current_reg[3] ;
  input [1:0]\FSM_onehot_state_current_reg[6] ;
  input \FSM_onehot_state_current_reg[4] ;
  input Next_State0_0;
  input Curr_MouseDataOut_reg;

  wire [7:0]ByteRead;
  wire CLK_IBUF_BUFG;
  wire ClkMouseIn;
  wire ClkMouseInDly;
  wire [3:0]Curr_BitCounter;
  wire \Curr_BitCounter[0]_i_1_n_0 ;
  wire \Curr_BitCounter[1]_i_1_n_0 ;
  wire \Curr_BitCounter[2]_i_1_n_0 ;
  wire \Curr_BitCounter[3]_i_1_n_0 ;
  wire \Curr_BitCounter[3]_i_2_n_0 ;
  wire \Curr_BitCounter[3]_i_3_n_0 ;
  wire \Curr_BitCounter[3]_i_4_n_0 ;
  wire \Curr_BitCounter[3]_i_5_n_0 ;
  wire \Curr_BitCounter[3]_i_6_n_0 ;
  wire \Curr_BitCounter[3]_i_7_n_0 ;
  wire \Curr_MSCodeShiftReg[0]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[1]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[2]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[3]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[4]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[5]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[6]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[7]_i_1_n_0 ;
  wire \Curr_MSCodeShiftReg[7]_i_2_n_0 ;
  wire Curr_MouseDataOut_reg;
  (* RTL_KEEP = "yes" *) wire [2:0]Curr_State;
  wire [16:0]Curr_TimeoutCounter;
  wire \Curr_TimeoutCounter[0]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[10]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[11]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[12]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[13]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[14]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[15]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[16]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[16]_i_2_n_0 ;
  wire \Curr_TimeoutCounter[16]_i_4_n_0 ;
  wire \Curr_TimeoutCounter[1]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[2]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[3]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[4]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[5]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[6]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[7]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[8]_i_1_n_0 ;
  wire \Curr_TimeoutCounter[9]_i_1_n_0 ;
  wire \Curr_TimeoutCounter_reg[12]_i_2_n_0 ;
  wire \Curr_TimeoutCounter_reg[12]_i_2_n_4 ;
  wire \Curr_TimeoutCounter_reg[12]_i_2_n_5 ;
  wire \Curr_TimeoutCounter_reg[12]_i_2_n_6 ;
  wire \Curr_TimeoutCounter_reg[12]_i_2_n_7 ;
  wire \Curr_TimeoutCounter_reg[16]_i_5_n_4 ;
  wire \Curr_TimeoutCounter_reg[16]_i_5_n_5 ;
  wire \Curr_TimeoutCounter_reg[16]_i_5_n_6 ;
  wire \Curr_TimeoutCounter_reg[16]_i_5_n_7 ;
  wire \Curr_TimeoutCounter_reg[4]_i_2_n_0 ;
  wire \Curr_TimeoutCounter_reg[4]_i_2_n_4 ;
  wire \Curr_TimeoutCounter_reg[4]_i_2_n_5 ;
  wire \Curr_TimeoutCounter_reg[4]_i_2_n_6 ;
  wire \Curr_TimeoutCounter_reg[4]_i_2_n_7 ;
  wire \Curr_TimeoutCounter_reg[8]_i_2_n_0 ;
  wire \Curr_TimeoutCounter_reg[8]_i_2_n_4 ;
  wire \Curr_TimeoutCounter_reg[8]_i_2_n_5 ;
  wire \Curr_TimeoutCounter_reg[8]_i_2_n_6 ;
  wire \Curr_TimeoutCounter_reg[8]_i_2_n_7 ;
  wire [2:0]D;
  wire DATA_MOUSE_IBUF;
  wire \FSM_onehot_state_current[7]_i_2_n_0 ;
  wire \FSM_onehot_state_current[8]_i_4_n_0 ;
  wire \FSM_onehot_state_current[8]_i_5_n_0 ;
  wire \FSM_onehot_state_current[8]_i_7_n_0 ;
  wire \FSM_onehot_state_current_reg[3] ;
  wire \FSM_onehot_state_current_reg[4] ;
  wire \FSM_onehot_state_current_reg[5] ;
  wire [1:0]\FSM_onehot_state_current_reg[6] ;
  wire \FSM_sequential_Curr_State[0]_i_1_n_0 ;
  wire \FSM_sequential_Curr_State[0]_i_2_n_0 ;
  wire \FSM_sequential_Curr_State[1]_i_1_n_0 ;
  wire \FSM_sequential_Curr_State[1]_i_2_n_0 ;
  wire \FSM_sequential_Curr_State[1]_i_3_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_11_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_12_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_13_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_15_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_16_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_1_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_2_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_3_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_4_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_5_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_6_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_7_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_8_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_9_n_0 ;
  wire \FSM_sequential_state_current[3]_i_5_n_0 ;
  wire \FSM_sequential_state_current[3]_i_6_n_0 ;
  wire \FSM_sequential_state_current[4]_i_7_n_0 ;
  wire \FSM_sequential_state_current_reg[0] ;
  wire \FSM_sequential_state_current_reg[0]_0 ;
  wire \FSM_sequential_state_current_reg[0]_1 ;
  wire \FSM_sequential_state_current_reg[3] ;
  wire Next_ByteReceived;
  wire Next_State0;
  wire Next_State0_0;
  wire RESET_IBUF;
  wire byte_recieved;
  wire [1:0]out;
  wire [2:0]\NLW_Curr_TimeoutCounter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Curr_TimeoutCounter_reg[16]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_Curr_TimeoutCounter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Curr_TimeoutCounter_reg[8]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0404040404000404)) 
    \Curr_BitCounter[0]_i_1 
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .I2(Curr_BitCounter[0]),
        .I3(Curr_BitCounter[1]),
        .I4(Curr_BitCounter[3]),
        .I5(Curr_BitCounter[2]),
        .O(\Curr_BitCounter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0440)) 
    \Curr_BitCounter[1]_i_1 
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .I2(Curr_BitCounter[0]),
        .I3(Curr_BitCounter[1]),
        .O(\Curr_BitCounter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04444000)) 
    \Curr_BitCounter[2]_i_1 
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .I2(Curr_BitCounter[0]),
        .I3(Curr_BitCounter[1]),
        .I4(Curr_BitCounter[2]),
        .O(\Curr_BitCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000033300000BBBB)) 
    \Curr_BitCounter[3]_i_1 
       (.I0(\Curr_BitCounter[3]_i_3_n_0 ),
        .I1(Curr_State[1]),
        .I2(Next_State0),
        .I3(\Curr_BitCounter[3]_i_4_n_0 ),
        .I4(Curr_State[2]),
        .I5(Curr_State[0]),
        .O(\Curr_BitCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440404040404000)) 
    \Curr_BitCounter[3]_i_2 
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .I2(Curr_BitCounter[3]),
        .I3(Curr_BitCounter[2]),
        .I4(Curr_BitCounter[1]),
        .I5(Curr_BitCounter[0]),
        .O(\Curr_BitCounter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA2AAAAAAAAA)) 
    \Curr_BitCounter[3]_i_3 
       (.I0(Next_State0),
        .I1(Curr_TimeoutCounter[10]),
        .I2(Curr_TimeoutCounter[16]),
        .I3(Curr_TimeoutCounter[11]),
        .I4(\Curr_BitCounter[3]_i_5_n_0 ),
        .I5(\Curr_BitCounter[3]_i_6_n_0 ),
        .O(\Curr_BitCounter[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \Curr_BitCounter[3]_i_4 
       (.I0(Curr_BitCounter[0]),
        .I1(Curr_BitCounter[1]),
        .I2(Curr_BitCounter[3]),
        .I3(Curr_BitCounter[2]),
        .O(\Curr_BitCounter[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDDFD)) 
    \Curr_BitCounter[3]_i_5 
       (.I0(Curr_TimeoutCounter[7]),
        .I1(Curr_TimeoutCounter[8]),
        .I2(Curr_TimeoutCounter[0]),
        .I3(Curr_TimeoutCounter[1]),
        .I4(Curr_TimeoutCounter[2]),
        .O(\Curr_BitCounter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000F800F800F800)) 
    \Curr_BitCounter[3]_i_6 
       (.I0(Curr_TimeoutCounter[9]),
        .I1(Curr_TimeoutCounter[10]),
        .I2(Curr_TimeoutCounter[11]),
        .I3(\Curr_BitCounter[3]_i_7_n_0 ),
        .I4(Curr_TimeoutCounter[6]),
        .I5(Curr_TimeoutCounter[7]),
        .O(\Curr_BitCounter[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \Curr_BitCounter[3]_i_7 
       (.I0(Curr_TimeoutCounter[15]),
        .I1(Curr_TimeoutCounter[4]),
        .I2(Curr_TimeoutCounter[3]),
        .I3(Curr_TimeoutCounter[12]),
        .I4(\FSM_sequential_Curr_State[2]_i_15_n_0 ),
        .O(\Curr_BitCounter[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_BitCounter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_BitCounter[3]_i_1_n_0 ),
        .D(\Curr_BitCounter[0]_i_1_n_0 ),
        .Q(Curr_BitCounter[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_BitCounter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_BitCounter[3]_i_1_n_0 ),
        .D(\Curr_BitCounter[1]_i_1_n_0 ),
        .Q(Curr_BitCounter[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_BitCounter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_BitCounter[3]_i_1_n_0 ),
        .D(\Curr_BitCounter[2]_i_1_n_0 ),
        .Q(Curr_BitCounter[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_BitCounter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_BitCounter[3]_i_1_n_0 ),
        .D(\Curr_BitCounter[3]_i_2_n_0 ),
        .Q(Curr_BitCounter[3]),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'h04)) 
    Curr_ByteReceived_i_1
       (.I0(Curr_State[0]),
        .I1(Curr_State[2]),
        .I2(Curr_State[1]),
        .O(Next_ByteReceived));
  FDRE #(
    .INIT(1'b0)) 
    Curr_ByteReceived_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Next_ByteReceived),
        .Q(byte_recieved),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[0]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[1]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[0]),
        .O(\Curr_MSCodeShiftReg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[1]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[2]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[1]),
        .O(\Curr_MSCodeShiftReg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[2]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[3]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[2]),
        .O(\Curr_MSCodeShiftReg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[3]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[4]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[3]),
        .O(\Curr_MSCodeShiftReg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[4]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[5]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[4]),
        .O(\Curr_MSCodeShiftReg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[5]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[6]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[5]),
        .O(\Curr_MSCodeShiftReg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055FBAA00004000)) 
    \Curr_MSCodeShiftReg[6]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I2(ByteRead[7]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(ByteRead[6]),
        .O(\Curr_MSCodeShiftReg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000CCCCE4CC00)) 
    \Curr_MSCodeShiftReg[7]_i_1 
       (.I0(\Curr_MSCodeShiftReg[7]_i_2_n_0 ),
        .I1(ByteRead[7]),
        .I2(DATA_MOUSE_IBUF),
        .I3(Curr_State[1]),
        .I4(Curr_State[0]),
        .I5(Curr_State[2]),
        .O(\Curr_MSCodeShiftReg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444044)) 
    \Curr_MSCodeShiftReg[7]_i_2 
       (.I0(ClkMouseIn),
        .I1(ClkMouseInDly),
        .I2(Curr_BitCounter[2]),
        .I3(Curr_BitCounter[3]),
        .I4(Curr_BitCounter[1]),
        .I5(Curr_BitCounter[0]),
        .O(\Curr_MSCodeShiftReg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[0]_i_1_n_0 ),
        .Q(ByteRead[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[1]_i_1_n_0 ),
        .Q(ByteRead[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[2]_i_1_n_0 ),
        .Q(ByteRead[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[3]_i_1_n_0 ),
        .Q(ByteRead[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[4]_i_1_n_0 ),
        .Q(ByteRead[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[5]_i_1_n_0 ),
        .Q(ByteRead[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[6]_i_1_n_0 ),
        .Q(ByteRead[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_MSCodeShiftReg_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Curr_MSCodeShiftReg[7]_i_1_n_0 ),
        .Q(ByteRead[7]),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'h0008)) 
    \Curr_TimeoutCounter[0]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(Curr_TimeoutCounter[0]),
        .O(\Curr_TimeoutCounter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[10]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[12]_i_2_n_6 ),
        .O(\Curr_TimeoutCounter[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[11]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[12]_i_2_n_5 ),
        .O(\Curr_TimeoutCounter[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[12]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[12]_i_2_n_4 ),
        .O(\Curr_TimeoutCounter[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[13]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[16]_i_5_n_7 ),
        .O(\Curr_TimeoutCounter[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[14]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[16]_i_5_n_6 ),
        .O(\Curr_TimeoutCounter[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[15]_i_1 
       (.I0(\Curr_TimeoutCounter_reg[16]_i_5_n_5 ),
        .I1(Curr_State[1]),
        .I2(Curr_State[2]),
        .I3(Curr_State[0]),
        .O(\Curr_TimeoutCounter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00B800CC00B8)) 
    \Curr_TimeoutCounter[16]_i_1 
       (.I0(\Curr_BitCounter[3]_i_3_n_0 ),
        .I1(Curr_State[1]),
        .I2(Next_State0_0),
        .I3(Curr_State[2]),
        .I4(Curr_State[0]),
        .I5(\Curr_TimeoutCounter[16]_i_4_n_0 ),
        .O(\Curr_TimeoutCounter[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[16]_i_2 
       (.I0(\Curr_TimeoutCounter_reg[16]_i_5_n_4 ),
        .I1(Curr_State[1]),
        .I2(Curr_State[2]),
        .I3(Curr_State[0]),
        .O(\Curr_TimeoutCounter[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444F44)) 
    \Curr_TimeoutCounter[16]_i_4 
       (.I0(ClkMouseIn),
        .I1(ClkMouseInDly),
        .I2(Curr_BitCounter[2]),
        .I3(Curr_BitCounter[3]),
        .I4(Curr_BitCounter[1]),
        .I5(Curr_BitCounter[0]),
        .O(\Curr_TimeoutCounter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[1]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[4]_i_2_n_7 ),
        .O(\Curr_TimeoutCounter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[2]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[4]_i_2_n_6 ),
        .O(\Curr_TimeoutCounter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[3]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[4]_i_2_n_5 ),
        .O(\Curr_TimeoutCounter[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[4]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[4]_i_2_n_4 ),
        .O(\Curr_TimeoutCounter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[5]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[8]_i_2_n_7 ),
        .O(\Curr_TimeoutCounter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[6]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[8]_i_2_n_6 ),
        .O(\Curr_TimeoutCounter[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[7]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[8]_i_2_n_5 ),
        .O(\Curr_TimeoutCounter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[8]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[8]_i_2_n_4 ),
        .O(\Curr_TimeoutCounter[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \Curr_TimeoutCounter[9]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(Curr_State[2]),
        .I3(\Curr_TimeoutCounter_reg[12]_i_2_n_7 ),
        .O(\Curr_TimeoutCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[0]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[10]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[11]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[12]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[12]),
        .R(RESET_IBUF));
  CARRY4 \Curr_TimeoutCounter_reg[12]_i_2 
       (.CI(\Curr_TimeoutCounter_reg[8]_i_2_n_0 ),
        .CO({\Curr_TimeoutCounter_reg[12]_i_2_n_0 ,\NLW_Curr_TimeoutCounter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Curr_TimeoutCounter_reg[12]_i_2_n_4 ,\Curr_TimeoutCounter_reg[12]_i_2_n_5 ,\Curr_TimeoutCounter_reg[12]_i_2_n_6 ,\Curr_TimeoutCounter_reg[12]_i_2_n_7 }),
        .S(Curr_TimeoutCounter[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[13]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[14]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[15]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[16]_i_2_n_0 ),
        .Q(Curr_TimeoutCounter[16]),
        .R(RESET_IBUF));
  CARRY4 \Curr_TimeoutCounter_reg[16]_i_5 
       (.CI(\Curr_TimeoutCounter_reg[12]_i_2_n_0 ),
        .CO(\NLW_Curr_TimeoutCounter_reg[16]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Curr_TimeoutCounter_reg[16]_i_5_n_4 ,\Curr_TimeoutCounter_reg[16]_i_5_n_5 ,\Curr_TimeoutCounter_reg[16]_i_5_n_6 ,\Curr_TimeoutCounter_reg[16]_i_5_n_7 }),
        .S(Curr_TimeoutCounter[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[1]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[2]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[3]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[4]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[4]),
        .R(RESET_IBUF));
  CARRY4 \Curr_TimeoutCounter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Curr_TimeoutCounter_reg[4]_i_2_n_0 ,\NLW_Curr_TimeoutCounter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(Curr_TimeoutCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Curr_TimeoutCounter_reg[4]_i_2_n_4 ,\Curr_TimeoutCounter_reg[4]_i_2_n_5 ,\Curr_TimeoutCounter_reg[4]_i_2_n_6 ,\Curr_TimeoutCounter_reg[4]_i_2_n_7 }),
        .S(Curr_TimeoutCounter[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[5]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[6]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[7]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[8]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[8]),
        .R(RESET_IBUF));
  CARRY4 \Curr_TimeoutCounter_reg[8]_i_2 
       (.CI(\Curr_TimeoutCounter_reg[4]_i_2_n_0 ),
        .CO({\Curr_TimeoutCounter_reg[8]_i_2_n_0 ,\NLW_Curr_TimeoutCounter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Curr_TimeoutCounter_reg[8]_i_2_n_4 ,\Curr_TimeoutCounter_reg[8]_i_2_n_5 ,\Curr_TimeoutCounter_reg[8]_i_2_n_6 ,\Curr_TimeoutCounter_reg[8]_i_2_n_7 }),
        .S(Curr_TimeoutCounter[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_TimeoutCounter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_TimeoutCounter[16]_i_1_n_0 ),
        .D(\Curr_TimeoutCounter[9]_i_1_n_0 ),
        .Q(Curr_TimeoutCounter[9]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_onehot_state_current[6]_i_1 
       (.I0(ByteRead[3]),
        .I1(ByteRead[1]),
        .I2(ByteRead[7]),
        .I3(ByteRead[5]),
        .I4(\FSM_onehot_state_current[8]_i_7_n_0 ),
        .I5(\FSM_onehot_state_current_reg[4] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \FSM_onehot_state_current[7]_i_1 
       (.I0(\FSM_onehot_state_current[8]_i_7_n_0 ),
        .I1(ByteRead[1]),
        .I2(\FSM_onehot_state_current_reg[6] [1]),
        .I3(\FSM_onehot_state_current_reg[6] [0]),
        .I4(\FSM_onehot_state_current[7]_i_2_n_0 ),
        .I5(\FSM_onehot_state_current_reg[3] ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state_current[7]_i_2 
       (.I0(ByteRead[7]),
        .I1(ByteRead[5]),
        .I2(ByteRead[3]),
        .O(\FSM_onehot_state_current[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0C0E0C0E0C0)) 
    \FSM_onehot_state_current[8]_i_2 
       (.I0(\FSM_onehot_state_current[8]_i_4_n_0 ),
        .I1(\FSM_onehot_state_current[8]_i_5_n_0 ),
        .I2(\FSM_onehot_state_current_reg[3] ),
        .I3(\FSM_onehot_state_current_reg[6] [0]),
        .I4(\FSM_onehot_state_current_reg[6] [1]),
        .I5(\FSM_onehot_state_current[8]_i_7_n_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state_current[8]_i_4 
       (.I0(ByteRead[3]),
        .I1(ByteRead[1]),
        .I2(ByteRead[7]),
        .I3(ByteRead[5]),
        .O(\FSM_onehot_state_current[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFE00000000)) 
    \FSM_onehot_state_current[8]_i_5 
       (.I0(ByteRead[3]),
        .I1(ByteRead[5]),
        .I2(ByteRead[7]),
        .I3(ByteRead[1]),
        .I4(\FSM_onehot_state_current_reg[6] [0]),
        .I5(\FSM_onehot_state_current_reg[6] [1]),
        .O(\FSM_onehot_state_current[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_current[8]_i_7 
       (.I0(ByteRead[2]),
        .I1(ByteRead[0]),
        .I2(ByteRead[6]),
        .I3(ByteRead[4]),
        .O(\FSM_onehot_state_current[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFCCAFFFA0CCA000)) 
    \FSM_sequential_Curr_State[0]_i_1 
       (.I0(\FSM_sequential_Curr_State[1]_i_2_n_0 ),
        .I1(\FSM_sequential_Curr_State[0]_i_2_n_0 ),
        .I2(\FSM_sequential_Curr_State[2]_i_3_n_0 ),
        .I3(Curr_State[1]),
        .I4(\FSM_sequential_Curr_State[2]_i_4_n_0 ),
        .I5(Curr_State[0]),
        .O(\FSM_sequential_Curr_State[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_Curr_State[0]_i_2 
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .O(\FSM_sequential_Curr_State[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFCCAF00)) 
    \FSM_sequential_Curr_State[1]_i_1 
       (.I0(\FSM_sequential_Curr_State[1]_i_2_n_0 ),
        .I1(\FSM_sequential_Curr_State[1]_i_3_n_0 ),
        .I2(\FSM_sequential_Curr_State[2]_i_3_n_0 ),
        .I3(Curr_State[1]),
        .I4(\FSM_sequential_Curr_State[2]_i_4_n_0 ),
        .O(\FSM_sequential_Curr_State[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_Curr_State[1]_i_2 
       (.I0(\FSM_sequential_Curr_State[2]_i_2_n_0 ),
        .I1(Curr_State[0]),
        .O(\FSM_sequential_Curr_State[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_Curr_State[1]_i_3 
       (.I0(Curr_State[0]),
        .I1(Curr_State[2]),
        .O(\FSM_sequential_Curr_State[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F008FFF80008000)) 
    \FSM_sequential_Curr_State[2]_i_1 
       (.I0(Curr_State[0]),
        .I1(\FSM_sequential_Curr_State[2]_i_2_n_0 ),
        .I2(\FSM_sequential_Curr_State[2]_i_3_n_0 ),
        .I3(Curr_State[1]),
        .I4(\FSM_sequential_Curr_State[2]_i_4_n_0 ),
        .I5(Curr_State[2]),
        .O(\FSM_sequential_Curr_State[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88808080)) 
    \FSM_sequential_Curr_State[2]_i_11 
       (.I0(\FSM_sequential_Curr_State[2]_i_15_n_0 ),
        .I1(\FSM_sequential_Curr_State[2]_i_16_n_0 ),
        .I2(Curr_TimeoutCounter[11]),
        .I3(Curr_TimeoutCounter[10]),
        .I4(Curr_TimeoutCounter[9]),
        .O(\FSM_sequential_Curr_State[2]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_Curr_State[2]_i_12 
       (.I0(Curr_TimeoutCounter[11]),
        .I1(Curr_TimeoutCounter[16]),
        .I2(Curr_TimeoutCounter[10]),
        .O(\FSM_sequential_Curr_State[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEEFFFFFFFF)) 
    \FSM_sequential_Curr_State[2]_i_13 
       (.I0(\FSM_sequential_Curr_State[2]_i_12_n_0 ),
        .I1(Curr_TimeoutCounter[2]),
        .I2(Curr_TimeoutCounter[1]),
        .I3(Curr_TimeoutCounter[0]),
        .I4(Curr_TimeoutCounter[8]),
        .I5(Curr_TimeoutCounter[7]),
        .O(\FSM_sequential_Curr_State[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_sequential_Curr_State[2]_i_15 
       (.I0(Curr_TimeoutCounter[13]),
        .I1(Curr_TimeoutCounter[14]),
        .I2(Curr_TimeoutCounter[2]),
        .I3(Curr_TimeoutCounter[1]),
        .I4(Curr_TimeoutCounter[5]),
        .I5(Curr_TimeoutCounter[8]),
        .O(\FSM_sequential_Curr_State[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_Curr_State[2]_i_16 
       (.I0(Curr_TimeoutCounter[12]),
        .I1(Curr_TimeoutCounter[3]),
        .I2(Curr_TimeoutCounter[4]),
        .I3(Curr_TimeoutCounter[15]),
        .O(\FSM_sequential_Curr_State[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_sequential_Curr_State[2]_i_2 
       (.I0(\FSM_sequential_Curr_State[2]_i_5_n_0 ),
        .I1(\FSM_sequential_Curr_State[2]_i_6_n_0 ),
        .I2(\FSM_sequential_Curr_State[2]_i_7_n_0 ),
        .I3(Curr_State[2]),
        .O(\FSM_sequential_Curr_State[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8FFF8CC)) 
    \FSM_sequential_Curr_State[2]_i_3 
       (.I0(DATA_MOUSE_IBUF),
        .I1(Next_State0),
        .I2(\FSM_sequential_Curr_State[2]_i_8_n_0 ),
        .I3(Curr_State[0]),
        .I4(\FSM_sequential_Curr_State[2]_i_9_n_0 ),
        .I5(Curr_State[2]),
        .O(\FSM_sequential_Curr_State[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFF000404)) 
    \FSM_sequential_Curr_State[2]_i_4 
       (.I0(ClkMouseIn),
        .I1(ClkMouseInDly),
        .I2(Curr_MouseDataOut_reg),
        .I3(\Curr_BitCounter[3]_i_4_n_0 ),
        .I4(Curr_State[0]),
        .I5(Curr_State[2]),
        .O(\FSM_sequential_Curr_State[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \FSM_sequential_Curr_State[2]_i_5 
       (.I0(Curr_TimeoutCounter[9]),
        .I1(Curr_TimeoutCounter[14]),
        .I2(Curr_TimeoutCounter[11]),
        .I3(Curr_TimeoutCounter[10]),
        .I4(Curr_TimeoutCounter[13]),
        .I5(Curr_TimeoutCounter[5]),
        .O(\FSM_sequential_Curr_State[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FSM_sequential_Curr_State[2]_i_6 
       (.I0(Curr_TimeoutCounter[16]),
        .I1(Curr_TimeoutCounter[8]),
        .I2(Curr_TimeoutCounter[0]),
        .I3(Curr_TimeoutCounter[1]),
        .I4(Curr_TimeoutCounter[2]),
        .I5(Curr_TimeoutCounter[7]),
        .O(\FSM_sequential_Curr_State[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_Curr_State[2]_i_7 
       (.I0(Curr_TimeoutCounter[12]),
        .I1(Curr_TimeoutCounter[4]),
        .I2(Curr_TimeoutCounter[3]),
        .I3(Curr_TimeoutCounter[6]),
        .I4(Curr_TimeoutCounter[15]),
        .O(\FSM_sequential_Curr_State[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_Curr_State[2]_i_8 
       (.I0(Curr_TimeoutCounter[6]),
        .I1(\FSM_sequential_Curr_State[2]_i_11_n_0 ),
        .I2(Curr_TimeoutCounter[0]),
        .I3(Curr_TimeoutCounter[7]),
        .I4(Curr_TimeoutCounter[8]),
        .I5(\FSM_sequential_Curr_State[2]_i_12_n_0 ),
        .O(\FSM_sequential_Curr_State[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0070)) 
    \FSM_sequential_Curr_State[2]_i_9 
       (.I0(Curr_TimeoutCounter[7]),
        .I1(Curr_TimeoutCounter[6]),
        .I2(\FSM_sequential_Curr_State[2]_i_11_n_0 ),
        .I3(\FSM_sequential_Curr_State[2]_i_13_n_0 ),
        .O(\FSM_sequential_Curr_State[2]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Curr_State[0]_i_1_n_0 ),
        .Q(Curr_State[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Curr_State[1]_i_1_n_0 ),
        .Q(Curr_State[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_Curr_State[2]_i_1_n_0 ),
        .Q(Curr_State[2]),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hB8F3)) 
    \FSM_sequential_state_current[0]_i_3 
       (.I0(\FSM_sequential_state_current_reg[0]_0 ),
        .I1(out[1]),
        .I2(\FSM_onehot_state_current_reg[5] ),
        .I3(out[0]),
        .O(\FSM_sequential_state_current_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_current[2]_i_3__1 
       (.I0(ByteRead[2]),
        .I1(ByteRead[3]),
        .O(\FSM_sequential_state_current_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_sequential_state_current[2]_i_4__0 
       (.I0(\FSM_sequential_state_current[3]_i_5_n_0 ),
        .I1(ByteRead[5]),
        .I2(ByteRead[3]),
        .I3(\FSM_sequential_state_current[3]_i_6_n_0 ),
        .I4(ByteRead[0]),
        .I5(ByteRead[7]),
        .O(\FSM_sequential_state_current_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FSM_sequential_state_current[3]_i_4 
       (.I0(\FSM_sequential_state_current[3]_i_5_n_0 ),
        .I1(ByteRead[3]),
        .I2(ByteRead[5]),
        .I3(\FSM_sequential_state_current[3]_i_6_n_0 ),
        .I4(ByteRead[7]),
        .I5(ByteRead[0]),
        .O(\FSM_sequential_state_current_reg[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_current[3]_i_5 
       (.I0(ByteRead[4]),
        .I1(ByteRead[6]),
        .O(\FSM_sequential_state_current[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_current[3]_i_6 
       (.I0(ByteRead[2]),
        .I1(ByteRead[1]),
        .O(\FSM_sequential_state_current[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2008)) 
    \FSM_sequential_state_current[4]_i_6 
       (.I0(\FSM_sequential_state_current[4]_i_7_n_0 ),
        .I1(ByteRead[2]),
        .I2(ByteRead[3]),
        .I3(ByteRead[1]),
        .O(\FSM_onehot_state_current_reg[5] ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_state_current[4]_i_7 
       (.I0(ByteRead[6]),
        .I1(ByteRead[4]),
        .I2(ByteRead[7]),
        .I3(ByteRead[5]),
        .I4(ByteRead[0]),
        .O(\FSM_sequential_state_current[4]_i_7_n_0 ));
endmodule

module MouseTransmitter
   (ClkMouseInDly,
    DATA_MOUSE_OBUF,
    ByteSentToMouse,
    CLK_MOUSE_TRI,
    DATA_MOUSE_TRI,
    Next_State0,
    Next_State0_0,
    ClkMouseIn,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    Curr_MouseDataOut_reg_0,
    DATA_MOUSE_IBUF,
    D,
    SendByteToMouse);
  output ClkMouseInDly;
  output DATA_MOUSE_OBUF;
  output ByteSentToMouse;
  output CLK_MOUSE_TRI;
  output DATA_MOUSE_TRI;
  output Next_State0;
  output Next_State0_0;
  input ClkMouseIn;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input Curr_MouseDataOut_reg_0;
  input DATA_MOUSE_IBUF;
  input [7:0]D;
  input SendByteToMouse;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire CLK_MOUSE_TRI;
  wire ClkMouseIn;
  wire ClkMouseInDly;
  wire [7:0]Curr_ByteToSend;
  wire \Curr_ByteToSend[7]_i_1_n_0 ;
  wire Curr_MouseClkOutWE_i_1_n_0;
  wire Curr_MouseDataOutWE_i_1_n_0;
  wire Curr_MouseDataOut_i_3_n_0;
  wire Curr_MouseDataOut_i_4_n_0;
  wire Curr_MouseDataOut_i_5_n_0;
  wire Curr_MouseDataOut_i_6_n_0;
  wire Curr_MouseDataOut_reg_0;
  wire Curr_MouseDataOut_reg_i_2_n_0;
  wire [2:0]Curr_SendCounter;
  wire \Curr_SendCounter[0]_i_1_n_0 ;
  wire \Curr_SendCounter[10]_i_1_n_0 ;
  wire \Curr_SendCounter[11]_i_1_n_0 ;
  wire \Curr_SendCounter[12]_i_1_n_0 ;
  wire \Curr_SendCounter[13]_i_1_n_0 ;
  wire \Curr_SendCounter[14]_i_1_n_0 ;
  wire \Curr_SendCounter[15]_i_1_n_0 ;
  wire \Curr_SendCounter[16]_i_14_n_0 ;
  wire \Curr_SendCounter[16]_i_1_n_0 ;
  wire \Curr_SendCounter[16]_i_2_n_0 ;
  wire \Curr_SendCounter[16]_i_3_n_0 ;
  wire \Curr_SendCounter[16]_i_4_n_0 ;
  wire \Curr_SendCounter[16]_i_6_n_0 ;
  wire \Curr_SendCounter[16]_i_7_n_0 ;
  wire \Curr_SendCounter[16]_i_8_n_0 ;
  wire \Curr_SendCounter[16]_i_9_n_0 ;
  wire \Curr_SendCounter[1]_i_1_n_0 ;
  wire \Curr_SendCounter[2]_i_1_n_0 ;
  wire \Curr_SendCounter[3]_i_1_n_0 ;
  wire \Curr_SendCounter[4]_i_1_n_0 ;
  wire \Curr_SendCounter[5]_i_1_n_0 ;
  wire \Curr_SendCounter[6]_i_1_n_0 ;
  wire \Curr_SendCounter[7]_i_1_n_0 ;
  wire \Curr_SendCounter[8]_i_1_n_0 ;
  wire \Curr_SendCounter[9]_i_1_n_0 ;
  wire \Curr_SendCounter_reg[12]_i_2_n_0 ;
  wire \Curr_SendCounter_reg[4]_i_2_n_0 ;
  wire \Curr_SendCounter_reg[8]_i_2_n_0 ;
  wire \Curr_SendCounter_reg_n_0_[10] ;
  wire \Curr_SendCounter_reg_n_0_[11] ;
  wire \Curr_SendCounter_reg_n_0_[12] ;
  wire \Curr_SendCounter_reg_n_0_[13] ;
  wire \Curr_SendCounter_reg_n_0_[14] ;
  wire \Curr_SendCounter_reg_n_0_[15] ;
  wire \Curr_SendCounter_reg_n_0_[16] ;
  wire \Curr_SendCounter_reg_n_0_[3] ;
  wire \Curr_SendCounter_reg_n_0_[4] ;
  wire \Curr_SendCounter_reg_n_0_[5] ;
  wire \Curr_SendCounter_reg_n_0_[6] ;
  wire \Curr_SendCounter_reg_n_0_[7] ;
  wire \Curr_SendCounter_reg_n_0_[8] ;
  wire \Curr_SendCounter_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire [3:0]Curr_State;
  wire [7:0]D;
  wire DATA_MOUSE_IBUF;
  wire DATA_MOUSE_OBUF;
  wire DATA_MOUSE_TRI;
  wire \FSM_sequential_Curr_State[0]_i_1__0_n_0 ;
  wire \FSM_sequential_Curr_State[0]_i_2__0_n_0 ;
  wire \FSM_sequential_Curr_State[1]_i_1__0_n_0 ;
  wire \FSM_sequential_Curr_State[2]_i_1__0_n_0 ;
  wire \FSM_sequential_Curr_State[3]_i_1_n_0 ;
  wire \FSM_sequential_Curr_State[3]_i_2_n_0 ;
  wire \FSM_sequential_Curr_State[3]_i_4_n_0 ;
  wire Next_ByteSent;
  wire Next_MouseDataOut;
  wire Next_State0;
  wire Next_State0_0;
  wire RESET_IBUF;
  wire SendByteToMouse;
  wire [16:1]data0;
  wire [2:0]\NLW_Curr_SendCounter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_Curr_SendCounter_reg[16]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_Curr_SendCounter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_Curr_SendCounter_reg[8]_i_2_CO_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    ClkMouseInDly_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ClkMouseIn),
        .Q(ClkMouseInDly),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    Curr_ByteSent_i_1
       (.I0(DATA_MOUSE_IBUF),
        .I1(ClkMouseIn),
        .I2(Curr_State[1]),
        .I3(Curr_State[0]),
        .I4(Curr_State[2]),
        .I5(Curr_State[3]),
        .O(Next_ByteSent));
  FDRE #(
    .INIT(1'b0)) 
    Curr_ByteSent_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Next_ByteSent),
        .Q(ByteSentToMouse),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'h00000010)) 
    \Curr_ByteToSend[7]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[0]),
        .I2(SendByteToMouse),
        .I3(Curr_State[2]),
        .I4(Curr_State[3]),
        .O(\Curr_ByteToSend[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(Curr_ByteToSend[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(Curr_ByteToSend[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[2]),
        .Q(Curr_ByteToSend[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[3]),
        .Q(Curr_ByteToSend[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[4]),
        .Q(Curr_ByteToSend[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[5]),
        .Q(Curr_ByteToSend[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[6]),
        .Q(Curr_ByteToSend[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_ByteToSend_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_ByteToSend[7]_i_1_n_0 ),
        .D(D[7]),
        .Q(Curr_ByteToSend[7]),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    Curr_MouseClkOutWE_i_2
       (.I0(Curr_State[1]),
        .I1(\Curr_SendCounter[16]_i_4_n_0 ),
        .I2(Curr_State[0]),
        .I3(Curr_State[2]),
        .I4(Curr_State[3]),
        .O(Curr_MouseClkOutWE_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Curr_MouseClkOutWE_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Curr_MouseClkOutWE_i_1_n_0),
        .Q(CLK_MOUSE_TRI),
        .S(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFFEF0021)) 
    Curr_MouseDataOutWE_i_2
       (.I0(Curr_State[2]),
        .I1(Curr_State[0]),
        .I2(Curr_State[1]),
        .I3(Curr_State[3]),
        .I4(DATA_MOUSE_TRI),
        .O(Curr_MouseDataOutWE_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Curr_MouseDataOutWE_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Curr_MouseDataOutWE_i_1_n_0),
        .Q(DATA_MOUSE_TRI),
        .S(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0000000054040000)) 
    Curr_MouseDataOut_i_1
       (.I0(Curr_State[1]),
        .I1(Curr_MouseDataOut_reg_i_2_n_0),
        .I2(Curr_State[0]),
        .I3(Curr_MouseDataOut_i_3_n_0),
        .I4(Curr_State[2]),
        .I5(Curr_State[3]),
        .O(Next_MouseDataOut));
  LUT3 #(
    .INIT(8'h96)) 
    Curr_MouseDataOut_i_3
       (.I0(Curr_ByteToSend[6]),
        .I1(Curr_ByteToSend[7]),
        .I2(Curr_MouseDataOut_i_6_n_0),
        .O(Curr_MouseDataOut_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Curr_MouseDataOut_i_4
       (.I0(Curr_ByteToSend[3]),
        .I1(Curr_ByteToSend[2]),
        .I2(Curr_SendCounter[1]),
        .I3(Curr_ByteToSend[1]),
        .I4(Curr_SendCounter[0]),
        .I5(Curr_ByteToSend[0]),
        .O(Curr_MouseDataOut_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Curr_MouseDataOut_i_5
       (.I0(Curr_ByteToSend[7]),
        .I1(Curr_ByteToSend[6]),
        .I2(Curr_SendCounter[1]),
        .I3(Curr_ByteToSend[5]),
        .I4(Curr_SendCounter[0]),
        .I5(Curr_ByteToSend[4]),
        .O(Curr_MouseDataOut_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    Curr_MouseDataOut_i_6
       (.I0(Curr_ByteToSend[4]),
        .I1(Curr_ByteToSend[5]),
        .I2(Curr_ByteToSend[1]),
        .I3(Curr_ByteToSend[0]),
        .I4(Curr_ByteToSend[3]),
        .I5(Curr_ByteToSend[2]),
        .O(Curr_MouseDataOut_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Curr_MouseDataOut_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Next_MouseDataOut),
        .Q(DATA_MOUSE_OBUF),
        .R(RESET_IBUF));
  MUXF7 Curr_MouseDataOut_reg_i_2
       (.I0(Curr_MouseDataOut_i_4_n_0),
        .I1(Curr_MouseDataOut_i_5_n_0),
        .O(Curr_MouseDataOut_reg_i_2_n_0),
        .S(Curr_SendCounter[2]));
  LUT5 #(
    .INIT(32'h00000405)) 
    \Curr_SendCounter[0]_i_1 
       (.I0(Curr_State[1]),
        .I1(Curr_State[2]),
        .I2(Curr_SendCounter[0]),
        .I3(\Curr_SendCounter[16]_i_4_n_0 ),
        .I4(Curr_State[3]),
        .O(\Curr_SendCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[10]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[10]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[11]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[11]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[12]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[12]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[13]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[13]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[14]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[14]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[15]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[15]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000551000)) 
    \Curr_SendCounter[16]_i_1 
       (.I0(Curr_State[1]),
        .I1(ClkMouseIn),
        .I2(ClkMouseInDly),
        .I3(Curr_State[2]),
        .I4(Curr_State[0]),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Curr_SendCounter[16]_i_14 
       (.I0(\Curr_SendCounter_reg_n_0_[6] ),
        .I1(\Curr_SendCounter_reg_n_0_[7] ),
        .I2(\Curr_SendCounter_reg_n_0_[4] ),
        .I3(\Curr_SendCounter_reg_n_0_[5] ),
        .O(\Curr_SendCounter[16]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[16]_i_2 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[16]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \Curr_SendCounter[16]_i_3 
       (.I0(\Curr_SendCounter[16]_i_6_n_0 ),
        .I1(Curr_SendCounter[2]),
        .I2(\Curr_SendCounter_reg_n_0_[6] ),
        .I3(\Curr_SendCounter_reg_n_0_[7] ),
        .I4(\Curr_SendCounter[16]_i_7_n_0 ),
        .I5(\Curr_SendCounter[16]_i_8_n_0 ),
        .O(\Curr_SendCounter[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \Curr_SendCounter[16]_i_4 
       (.I0(\Curr_SendCounter_reg_n_0_[16] ),
        .I1(\Curr_SendCounter_reg_n_0_[15] ),
        .I2(\Curr_SendCounter_reg_n_0_[14] ),
        .I3(\Curr_SendCounter[16]_i_9_n_0 ),
        .I4(\Curr_SendCounter_reg_n_0_[13] ),
        .O(\Curr_SendCounter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Curr_SendCounter[16]_i_6 
       (.I0(\Curr_SendCounter_reg_n_0_[16] ),
        .I1(\Curr_SendCounter_reg_n_0_[15] ),
        .O(\Curr_SendCounter[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Curr_SendCounter[16]_i_7 
       (.I0(\Curr_SendCounter_reg_n_0_[5] ),
        .I1(\Curr_SendCounter_reg_n_0_[12] ),
        .I2(\Curr_SendCounter_reg_n_0_[10] ),
        .I3(\Curr_SendCounter_reg_n_0_[9] ),
        .I4(\Curr_SendCounter_reg_n_0_[4] ),
        .I5(\Curr_SendCounter_reg_n_0_[8] ),
        .O(\Curr_SendCounter[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \Curr_SendCounter[16]_i_8 
       (.I0(\Curr_SendCounter_reg_n_0_[3] ),
        .I1(Curr_SendCounter[0]),
        .I2(\Curr_SendCounter_reg_n_0_[14] ),
        .I3(\Curr_SendCounter_reg_n_0_[11] ),
        .I4(Curr_SendCounter[1]),
        .I5(\Curr_SendCounter_reg_n_0_[13] ),
        .O(\Curr_SendCounter[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0111111111111111)) 
    \Curr_SendCounter[16]_i_9 
       (.I0(\Curr_SendCounter_reg_n_0_[11] ),
        .I1(\Curr_SendCounter_reg_n_0_[12] ),
        .I2(\Curr_SendCounter_reg_n_0_[8] ),
        .I3(\Curr_SendCounter_reg_n_0_[9] ),
        .I4(\Curr_SendCounter_reg_n_0_[10] ),
        .I5(\Curr_SendCounter[16]_i_14_n_0 ),
        .O(\Curr_SendCounter[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010001500)) 
    \Curr_SendCounter[1]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_SendCounter[16]_i_3_n_0 ),
        .I2(Curr_State[2]),
        .I3(data0[1]),
        .I4(\Curr_SendCounter[16]_i_4_n_0 ),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010001500)) 
    \Curr_SendCounter[2]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_SendCounter[16]_i_3_n_0 ),
        .I2(Curr_State[2]),
        .I3(data0[2]),
        .I4(\Curr_SendCounter[16]_i_4_n_0 ),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010001500)) 
    \Curr_SendCounter[3]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_SendCounter[16]_i_3_n_0 ),
        .I2(Curr_State[2]),
        .I3(data0[3]),
        .I4(\Curr_SendCounter[16]_i_4_n_0 ),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010001500)) 
    \Curr_SendCounter[4]_i_1 
       (.I0(Curr_State[1]),
        .I1(\Curr_SendCounter[16]_i_3_n_0 ),
        .I2(Curr_State[2]),
        .I3(data0[4]),
        .I4(\Curr_SendCounter[16]_i_4_n_0 ),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000470000)) 
    \Curr_SendCounter[5]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(Curr_State[1]),
        .I4(data0[5]),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000470000)) 
    \Curr_SendCounter[6]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(Curr_State[1]),
        .I4(data0[6]),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000470000)) 
    \Curr_SendCounter[7]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(Curr_State[1]),
        .I4(data0[7]),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000470000)) 
    \Curr_SendCounter[8]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(Curr_State[1]),
        .I4(data0[8]),
        .I5(Curr_State[3]),
        .O(\Curr_SendCounter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004700)) 
    \Curr_SendCounter[9]_i_1 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Curr_State[2]),
        .I2(\Curr_SendCounter[16]_i_4_n_0 ),
        .I3(data0[9]),
        .I4(Curr_State[3]),
        .I5(Curr_State[1]),
        .O(\Curr_SendCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[0]_i_1_n_0 ),
        .Q(Curr_SendCounter[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[10]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[10] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[11]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[11] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[12]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[12] ),
        .R(RESET_IBUF));
  CARRY4 \Curr_SendCounter_reg[12]_i_2 
       (.CI(\Curr_SendCounter_reg[8]_i_2_n_0 ),
        .CO({\Curr_SendCounter_reg[12]_i_2_n_0 ,\NLW_Curr_SendCounter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\Curr_SendCounter_reg_n_0_[12] ,\Curr_SendCounter_reg_n_0_[11] ,\Curr_SendCounter_reg_n_0_[10] ,\Curr_SendCounter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[13]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[13] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[14]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[14] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[15]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[15] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[16]_i_2_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[16] ),
        .R(RESET_IBUF));
  CARRY4 \Curr_SendCounter_reg[16]_i_5 
       (.CI(\Curr_SendCounter_reg[12]_i_2_n_0 ),
        .CO(\NLW_Curr_SendCounter_reg[16]_i_5_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\Curr_SendCounter_reg_n_0_[16] ,\Curr_SendCounter_reg_n_0_[15] ,\Curr_SendCounter_reg_n_0_[14] ,\Curr_SendCounter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[1]_i_1_n_0 ),
        .Q(Curr_SendCounter[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[2]_i_1_n_0 ),
        .Q(Curr_SendCounter[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[3]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[3] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[4]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[4] ),
        .R(RESET_IBUF));
  CARRY4 \Curr_SendCounter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Curr_SendCounter_reg[4]_i_2_n_0 ,\NLW_Curr_SendCounter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(Curr_SendCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\Curr_SendCounter_reg_n_0_[4] ,\Curr_SendCounter_reg_n_0_[3] ,Curr_SendCounter[2:1]}));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[5]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[5] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[6]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[6] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[7]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[7] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[8]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[8] ),
        .R(RESET_IBUF));
  CARRY4 \Curr_SendCounter_reg[8]_i_2 
       (.CI(\Curr_SendCounter_reg[4]_i_2_n_0 ),
        .CO({\Curr_SendCounter_reg[8]_i_2_n_0 ,\NLW_Curr_SendCounter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\Curr_SendCounter_reg_n_0_[8] ,\Curr_SendCounter_reg_n_0_[7] ,\Curr_SendCounter_reg_n_0_[6] ,\Curr_SendCounter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \Curr_SendCounter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\Curr_SendCounter[16]_i_1_n_0 ),
        .D(\Curr_SendCounter[9]_i_1_n_0 ),
        .Q(\Curr_SendCounter_reg_n_0_[9] ),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'h04)) 
    \Curr_TimeoutCounter[16]_i_3 
       (.I0(ClkMouseIn),
        .I1(ClkMouseInDly),
        .I2(Curr_MouseDataOut_reg_0),
        .O(Next_State0));
  LUT6 #(
    .INIT(64'hF0DDF055F055F055)) 
    \FSM_sequential_Curr_State[0]_i_1__0 
       (.I0(Curr_State[0]),
        .I1(DATA_MOUSE_IBUF),
        .I2(\FSM_sequential_Curr_State[0]_i_2__0_n_0 ),
        .I3(Curr_State[3]),
        .I4(Curr_State[2]),
        .I5(Curr_State[1]),
        .O(\FSM_sequential_Curr_State[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000703)) 
    \FSM_sequential_Curr_State[0]_i_2__0 
       (.I0(DATA_MOUSE_IBUF),
        .I1(ClkMouseIn),
        .I2(Curr_State[2]),
        .I3(Curr_State[0]),
        .I4(Curr_State[1]),
        .O(\FSM_sequential_Curr_State[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000DA5A)) 
    \FSM_sequential_Curr_State[1]_i_1__0 
       (.I0(Curr_State[0]),
        .I1(DATA_MOUSE_IBUF),
        .I2(Curr_State[1]),
        .I3(Curr_State[2]),
        .I4(Curr_State[3]),
        .O(\FSM_sequential_Curr_State[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000DAF0)) 
    \FSM_sequential_Curr_State[2]_i_1__0 
       (.I0(Curr_State[0]),
        .I1(DATA_MOUSE_IBUF),
        .I2(Curr_State[2]),
        .I3(Curr_State[1]),
        .I4(Curr_State[3]),
        .O(\FSM_sequential_Curr_State[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h555155FF555100AA)) 
    \FSM_sequential_Curr_State[3]_i_1 
       (.I0(Curr_State[3]),
        .I1(Curr_State[0]),
        .I2(Next_State0_0),
        .I3(Curr_State[2]),
        .I4(Curr_State[1]),
        .I5(\FSM_sequential_Curr_State[3]_i_4_n_0 ),
        .O(\FSM_sequential_Curr_State[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050000000007F00)) 
    \FSM_sequential_Curr_State[3]_i_2 
       (.I0(DATA_MOUSE_IBUF),
        .I1(ClkMouseIn),
        .I2(Curr_State[0]),
        .I3(Curr_State[3]),
        .I4(Curr_State[2]),
        .I5(Curr_State[1]),
        .O(\FSM_sequential_Curr_State[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_Curr_State[3]_i_3 
       (.I0(ClkMouseInDly),
        .I1(ClkMouseIn),
        .O(Next_State0_0));
  LUT6 #(
    .INIT(64'hCFC08F8FCFC08080)) 
    \FSM_sequential_Curr_State[3]_i_4 
       (.I0(\Curr_SendCounter[16]_i_3_n_0 ),
        .I1(Next_State0_0),
        .I2(Curr_State[2]),
        .I3(\Curr_SendCounter[16]_i_4_n_0 ),
        .I4(Curr_State[0]),
        .I5(SendByteToMouse),
        .O(\FSM_sequential_Curr_State[3]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_Curr_State[3]_i_1_n_0 ),
        .D(\FSM_sequential_Curr_State[0]_i_1__0_n_0 ),
        .Q(Curr_State[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_Curr_State[3]_i_1_n_0 ),
        .D(\FSM_sequential_Curr_State[1]_i_1__0_n_0 ),
        .Q(Curr_State[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_Curr_State[3]_i_1_n_0 ),
        .D(\FSM_sequential_Curr_State[2]_i_1__0_n_0 ),
        .Q(Curr_State[2]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Curr_State_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_Curr_State[3]_i_1_n_0 ),
        .D(\FSM_sequential_Curr_State[3]_i_2_n_0 ),
        .Q(Curr_State[3]),
        .R(RESET_IBUF));
endmodule

module MouseWrapper
   (DATA_MOUSE_OBUF,
    CLK_MOUSE_TRI,
    DATA_MOUSE_TRI,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    DATA_MOUSE_IBUF,
    D);
  output DATA_MOUSE_OBUF;
  output CLK_MOUSE_TRI;
  output DATA_MOUSE_TRI;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input DATA_MOUSE_IBUF;
  input [0:0]D;

  wire CLK_IBUF_BUFG;
  wire CLK_MOUSE_TRI;
  wire [0:0]D;
  wire DATA_MOUSE_IBUF;
  wire DATA_MOUSE_OBUF;
  wire DATA_MOUSE_TRI;
  wire RESET_IBUF;

  Transceiver T
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLK_MOUSE_TRI(CLK_MOUSE_TRI),
        .D(D),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .DATA_MOUSE_OBUF(DATA_MOUSE_OBUF),
        .DATA_MOUSE_TRI(DATA_MOUSE_TRI),
        .RESET_IBUF(RESET_IBUF));
endmodule

module Mouse_Data
   (read_enable_data,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    microsoft_success,
    data_enable_current,
    byte_recieved,
    \Curr_MSCodeShiftReg_reg[2] );
  output read_enable_data;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input microsoft_success;
  input data_enable_current;
  input byte_recieved;
  input \Curr_MSCodeShiftReg_reg[2] ;

  wire CLK_IBUF_BUFG;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \FSM_sequential_state_current[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_current[1]_i_1_n_0 ;
  wire \FSM_sequential_state_current[2]_i_1_n_0 ;
  wire \FSM_sequential_state_current[2]_i_2__0_n_0 ;
  wire RESET_IBUF;
  wire byte_recieved;
  wire data_enable_current;
  wire microsoft_success;
  wire read_byte_current_i_1_n_0;
  wire read_enable_data;
  (* RTL_KEEP = "yes" *) wire [2:0]state_current;

  LUT5 #(
    .INIT(32'h1B5BCCCC)) 
    \FSM_sequential_state_current[0]_i_1__0 
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(microsoft_success),
        .I4(\FSM_sequential_state_current[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_current[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h06AA)) 
    \FSM_sequential_state_current[1]_i_1 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(\FSM_sequential_state_current[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_current[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h24CC)) 
    \FSM_sequential_state_current[2]_i_1 
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .I2(state_current[1]),
        .I3(\FSM_sequential_state_current[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6676441077764410)) 
    \FSM_sequential_state_current[2]_i_2__0 
       (.I0(state_current[1]),
        .I1(state_current[2]),
        .I2(data_enable_current),
        .I3(state_current[0]),
        .I4(byte_recieved),
        .I5(\Curr_MSCodeShiftReg_reg[2] ),
        .O(\FSM_sequential_state_current[2]_i_2__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[0]_i_1__0_n_0 ),
        .Q(state_current[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[1]_i_1_n_0 ),
        .Q(state_current[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[2]_i_1_n_0 ),
        .Q(state_current[2]),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hDE1E)) 
    read_byte_current_i_1
       (.I0(state_current[0]),
        .I1(state_current[1]),
        .I2(state_current[2]),
        .I3(read_enable_data),
        .O(read_byte_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(read_byte_current_i_1_n_0),
        .Q(read_enable_data),
        .R(RESET_IBUF));
endmodule

module Processor
   (RAMBusWE,
    Q,
    O7,
    E,
    TransmitTimerValue,
    \Timer_reg[7] ,
    \mouse_memory_reg[0][7] ,
    D,
    mouse_WE_reg,
    \mouse_memory_reg[1][0] ,
    WEA,
    BUS_INTERRUPTS_ACK,
    \mouse_memory_reg[0][7]_0 ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    \DATA_reg[6] ,
    BUS_INTERRUPTS_RAISE,
    BUS_DATA);
  output RAMBusWE;
  output [6:0]Q;
  output O7;
  output [0:0]E;
  output TransmitTimerValue;
  output \Timer_reg[7] ;
  output \mouse_memory_reg[0][7] ;
  output [3:0]D;
  output mouse_WE_reg;
  output \mouse_memory_reg[1][0] ;
  output [0:0]WEA;
  output [0:0]BUS_INTERRUPTS_ACK;
  output [7:0]\mouse_memory_reg[0][7]_0 ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input [3:0]\DATA_reg[6] ;
  input BUS_INTERRUPTS_RAISE;
  input [7:0]BUS_DATA;

  wire ALU0_n_0;
  wire [7:7]BUS_ADDR;
  wire [7:0]BUS_DATA;
  wire [0:0]BUS_INTERRUPTS_ACK;
  wire BUS_INTERRUPTS_RAISE;
  wire CLK_IBUF_BUFG;
  wire \CurrBusAddr[0]_i_2_n_0 ;
  wire \CurrBusAddr[0]_i_3_n_0 ;
  wire \CurrBusAddr[1]_i_2_n_0 ;
  wire \CurrBusAddr[1]_i_3_n_0 ;
  wire \CurrBusAddr[2]_i_2_n_0 ;
  wire \CurrBusAddr[2]_i_3_n_0 ;
  wire \CurrBusAddr[3]_i_2_n_0 ;
  wire \CurrBusAddr[3]_i_3_n_0 ;
  wire \CurrBusAddr[4]_i_2_n_0 ;
  wire \CurrBusAddr[4]_i_3_n_0 ;
  wire \CurrBusAddr[5]_i_2_n_0 ;
  wire \CurrBusAddr[5]_i_3_n_0 ;
  wire \CurrBusAddr[6]_i_2_n_0 ;
  wire \CurrBusAddr[6]_i_3_n_0 ;
  wire \CurrBusAddr[7]_i_2_n_0 ;
  wire \CurrBusAddr[7]_i_3_n_0 ;
  wire CurrBusDataOutWE_i_1_n_0;
  wire \CurrBusDataOut[0]_i_1_n_0 ;
  wire \CurrBusDataOut[1]_i_1_n_0 ;
  wire \CurrBusDataOut[2]_i_1_n_0 ;
  wire \CurrBusDataOut[3]_i_1_n_0 ;
  wire \CurrBusDataOut[4]_i_1_n_0 ;
  wire \CurrBusDataOut[5]_i_1_n_0 ;
  wire \CurrBusDataOut[6]_i_1_n_0 ;
  wire \CurrBusDataOut[7]_i_1_n_0 ;
  wire [7:0]CurrProgContext;
  wire \CurrProgContext[1]_i_1_n_0 ;
  wire \CurrProgContext[2]_i_1_n_0 ;
  wire \CurrProgContext[3]_i_1_n_0 ;
  wire \CurrProgContext[4]_i_1_n_0 ;
  wire \CurrProgContext[5]_i_1_n_0 ;
  wire \CurrProgContext[6]_i_1_n_0 ;
  wire \CurrProgContext[7]_i_1_n_0 ;
  wire \CurrProgContext[7]_i_2_n_0 ;
  wire \CurrProgContext[7]_i_3_n_0 ;
  wire [7:0]CurrProgCounter;
  wire [0:0]CurrProgCounterOffset;
  wire \CurrProgCounterOffset[0]_i_1_n_0 ;
  wire \CurrProgCounter[0]_i_2_n_0 ;
  wire \CurrProgCounter[0]_i_3_n_0 ;
  wire \CurrProgCounter[0]_i_4_n_0 ;
  wire \CurrProgCounter[1]_i_4_n_0 ;
  wire \CurrProgCounter[1]_i_5_n_0 ;
  wire \CurrProgCounter[1]_i_6_n_0 ;
  wire \CurrProgCounter[1]_i_7_n_0 ;
  wire \CurrProgCounter[2]_i_2_n_0 ;
  wire \CurrProgCounter[2]_i_3_n_0 ;
  wire \CurrProgCounter[2]_i_4_n_0 ;
  wire \CurrProgCounter[3]_i_4_n_0 ;
  wire \CurrProgCounter[3]_i_5_n_0 ;
  wire \CurrProgCounter[3]_i_6_n_0 ;
  wire \CurrProgCounter[3]_i_7_n_0 ;
  wire \CurrProgCounter[3]_i_8_n_0 ;
  wire \CurrProgCounter[4]_i_2_n_0 ;
  wire \CurrProgCounter[4]_i_3_n_0 ;
  wire \CurrProgCounter[4]_i_4_n_0 ;
  wire \CurrProgCounter[5]_i_2_n_0 ;
  wire \CurrProgCounter[5]_i_3_n_0 ;
  wire \CurrProgCounter[5]_i_4_n_0 ;
  wire \CurrProgCounter[6]_i_4_n_0 ;
  wire \CurrProgCounter[6]_i_5_n_0 ;
  wire \CurrProgCounter[6]_i_6_n_0 ;
  wire \CurrProgCounter[6]_i_7_n_0 ;
  wire \CurrProgCounter[6]_i_8_n_0 ;
  wire \CurrProgCounter[7]_i_1_n_0 ;
  wire \CurrProgCounter[7]_i_5_n_0 ;
  wire \CurrProgCounter[7]_i_6_n_0 ;
  wire \CurrProgCounter[7]_i_7_n_0 ;
  wire \CurrProgCounter[7]_i_8_n_0 ;
  wire \CurrProgCounter[7]_i_9_n_0 ;
  wire \CurrProgCounter_reg[1]_i_2_n_0 ;
  wire \CurrProgCounter_reg[1]_i_3_n_0 ;
  wire \CurrProgCounter_reg[3]_i_2_n_0 ;
  wire \CurrProgCounter_reg[3]_i_3_n_0 ;
  wire \CurrProgCounter_reg[6]_i_2_n_0 ;
  wire \CurrProgCounter_reg[6]_i_3_n_0 ;
  wire \CurrProgCounter_reg[7]_i_3_n_0 ;
  wire \CurrProgCounter_reg[7]_i_4_n_0 ;
  wire [7:0]CurrRegA;
  wire \CurrRegA[7]_i_1_n_0 ;
  wire [7:0]CurrRegB;
  wire \CurrRegB[7]_i_1_n_0 ;
  wire CurrRegSelect;
  wire CurrRegSelect_i_1_n_0;
  wire [3:0]D;
  wire \DATA[0]_i_2_n_0 ;
  wire \DATA[0]_i_3_n_0 ;
  wire \DATA[0]_i_4_n_0 ;
  wire \DATA[6]_i_2_n_0 ;
  wire \DATA[6]_i_3_n_0 ;
  wire [3:0]\DATA_reg[6] ;
  wire [0:0]E;
  wire \FSM_sequential_CurrState[0]_i_1_n_0 ;
  wire \FSM_sequential_CurrState[0]_i_2_n_0 ;
  wire \FSM_sequential_CurrState[0]_i_3_n_0 ;
  wire \FSM_sequential_CurrState[1]_i_3_n_0 ;
  wire \FSM_sequential_CurrState[2]_i_1_n_0 ;
  wire \FSM_sequential_CurrState[2]_i_2_n_0 ;
  wire \FSM_sequential_CurrState[3]_i_1_n_0 ;
  wire \FSM_sequential_CurrState[3]_i_2_n_0 ;
  wire \FSM_sequential_CurrState[4]_i_1_n_0 ;
  wire \FSM_sequential_CurrState[4]_i_2_n_0 ;
  wire \FSM_sequential_CurrState[4]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_CurrState_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_CurrState_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_CurrState_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_CurrState_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_sequential_CurrState_reg_n_0_[4] ;
  wire \LED_OUT[7]_i_2_n_0 ;
  wire [7:0]NextBusAddr;
  wire [0:0]NextInterruptAck;
  wire [7:0]NextProgCounter;
  wire [7:0]NextRegB;
  wire O7;
  wire [6:0]Q;
  wire RAMBusWE;
  wire RESET_IBUF;
  wire \Timer[0]_i_14_n_0 ;
  wire \Timer[0]_i_4_n_0 ;
  wire \Timer_reg[7] ;
  wire TransmitTimerValue;
  wire [0:0]WEA;
  wire mouse_WE_i_2_n_0;
  wire mouse_WE_i_3_n_0;
  wire mouse_WE_reg;
  wire \mouse_memory_reg[0][7] ;
  wire [7:0]\mouse_memory_reg[0][7]_0 ;
  wire \mouse_memory_reg[1][0] ;

  ALU ALU0
       (.BUS_DATA(BUS_DATA),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\CurrRegA_reg[7] (NextRegB),
        .\CurrRegA_reg[7]_0 (CurrRegA),
        .D(ALU0_n_0),
        .\DATA_reg[6] (\DATA_reg[6] [3]),
        .\FSM_sequential_CurrState_reg[1] (\FSM_sequential_CurrState[1]_i_3_n_0 ),
        .Q(CurrRegB),
        .RESET_IBUF(RESET_IBUF),
        .out({\FSM_sequential_CurrState_reg_n_0_[4] ,\FSM_sequential_CurrState_reg_n_0_[3] ,\FSM_sequential_CurrState_reg_n_0_[2] ,\FSM_sequential_CurrState_reg_n_0_[1] ,\FSM_sequential_CurrState_reg_n_0_[0] }));
  LUT6 #(
    .INIT(64'h3F3CFFFFFBFBFFFF)) 
    \CurrBusAddr[0]_i_2 
       (.I0(CurrRegB[0]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [0]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBF3333FFFC)) 
    \CurrBusAddr[0]_i_3 
       (.I0(CurrRegA[0]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [0]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3CFFFFFBFBFFFF)) 
    \CurrBusAddr[1]_i_2 
       (.I0(CurrRegB[1]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [1]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBF3333FFFC)) 
    \CurrBusAddr[1]_i_3 
       (.I0(CurrRegA[1]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [1]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3FCFFFBF)) 
    \CurrBusAddr[2]_i_2 
       (.I0(CurrRegB[2]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h33BF33FC)) 
    \CurrBusAddr[2]_i_3 
       (.I0(CurrRegA[2]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3CFFFFFBFBFFFF)) 
    \CurrBusAddr[3]_i_2 
       (.I0(CurrRegB[3]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBF3333FFFC)) 
    \CurrBusAddr[3]_i_3 
       (.I0(CurrRegA[3]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3FCFFFBF)) 
    \CurrBusAddr[4]_i_2 
       (.I0(CurrRegB[4]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h33BF33FC)) 
    \CurrBusAddr[4]_i_3 
       (.I0(CurrRegA[4]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h3FCFFFBF)) 
    \CurrBusAddr[5]_i_2 
       (.I0(CurrRegB[5]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h33BF33FC)) 
    \CurrBusAddr[5]_i_3 
       (.I0(CurrRegA[5]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3CFFFFFBFBFFFF)) 
    \CurrBusAddr[6]_i_2 
       (.I0(CurrRegB[6]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBF3333FFFC)) 
    \CurrBusAddr[6]_i_3 
       (.I0(CurrRegA[6]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3F3CFFFFFBFBFFFF)) 
    \CurrBusAddr[7]_i_2 
       (.I0(CurrRegB[7]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333BFBF3333FFFC)) 
    \CurrBusAddr[7]_i_3 
       (.I0(CurrRegA[7]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrBusAddr[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[0]),
        .Q(Q[0]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[0]_i_1 
       (.I0(\CurrBusAddr[0]_i_2_n_0 ),
        .I1(\CurrBusAddr[0]_i_3_n_0 ),
        .O(NextBusAddr[0]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[1]),
        .Q(Q[1]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[1]_i_1 
       (.I0(\CurrBusAddr[1]_i_2_n_0 ),
        .I1(\CurrBusAddr[1]_i_3_n_0 ),
        .O(NextBusAddr[1]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[2]),
        .Q(Q[2]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[2]_i_1 
       (.I0(\CurrBusAddr[2]_i_2_n_0 ),
        .I1(\CurrBusAddr[2]_i_3_n_0 ),
        .O(NextBusAddr[2]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[3]),
        .Q(Q[3]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[3]_i_1 
       (.I0(\CurrBusAddr[3]_i_2_n_0 ),
        .I1(\CurrBusAddr[3]_i_3_n_0 ),
        .O(NextBusAddr[3]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[4]),
        .Q(Q[4]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[4]_i_1 
       (.I0(\CurrBusAddr[4]_i_2_n_0 ),
        .I1(\CurrBusAddr[4]_i_3_n_0 ),
        .O(NextBusAddr[4]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[5]),
        .Q(Q[5]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[5]_i_1 
       (.I0(\CurrBusAddr[5]_i_2_n_0 ),
        .I1(\CurrBusAddr[5]_i_3_n_0 ),
        .O(NextBusAddr[5]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[6]),
        .Q(Q[6]),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[6]_i_1 
       (.I0(\CurrBusAddr[6]_i_2_n_0 ),
        .I1(\CurrBusAddr[6]_i_3_n_0 ),
        .O(NextBusAddr[6]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \CurrBusAddr_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextBusAddr[7]),
        .Q(BUS_ADDR),
        .S(RESET_IBUF));
  MUXF7 \CurrBusAddr_reg[7]_i_1 
       (.I0(\CurrBusAddr[7]_i_2_n_0 ),
        .I1(\CurrBusAddr[7]_i_3_n_0 ),
        .O(NextBusAddr[7]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h00001000)) 
    CurrBusDataOutWE_i_1
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .O(CurrBusDataOutWE_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CurrBusDataOutWE_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CurrBusDataOutWE_i_1_n_0),
        .Q(O7),
        .R(RESET_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[0]_i_1 
       (.I0(CurrRegB[0]),
        .I1(CurrRegA[0]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[1]_i_1 
       (.I0(CurrRegB[1]),
        .I1(CurrRegA[1]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[2]_i_1 
       (.I0(CurrRegB[2]),
        .I1(CurrRegA[2]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[3]_i_1 
       (.I0(CurrRegB[3]),
        .I1(CurrRegA[3]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[4]_i_1 
       (.I0(CurrRegB[4]),
        .I1(CurrRegA[4]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[5]_i_1 
       (.I0(CurrRegB[5]),
        .I1(CurrRegA[5]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[6]_i_1 
       (.I0(CurrRegB[6]),
        .I1(CurrRegA[6]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \CurrBusDataOut[7]_i_1 
       (.I0(CurrRegB[7]),
        .I1(CurrRegA[7]),
        .I2(CurrRegSelect),
        .O(\CurrBusDataOut[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[0]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[1]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[2]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[3]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[4]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[5]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[6]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrBusDataOut_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(CurrBusDataOutWE_i_1_n_0),
        .D(\CurrBusDataOut[7]_i_1_n_0 ),
        .Q(\mouse_memory_reg[0][7]_0 [7]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \CurrInterruptAck[0]_i_1 
       (.I0(BUS_INTERRUPTS_RAISE),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .O(NextInterruptAck));
  FDRE #(
    .INIT(1'b0)) 
    \CurrInterruptAck_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(NextInterruptAck),
        .Q(BUS_INTERRUPTS_ACK),
        .R(RESET_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \CurrProgContext[1]_i_1 
       (.I0(CurrProgCounter[1]),
        .O(\CurrProgContext[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \CurrProgContext[2]_i_1 
       (.I0(CurrProgCounter[1]),
        .I1(CurrProgCounter[2]),
        .O(\CurrProgContext[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \CurrProgContext[3]_i_1 
       (.I0(CurrProgCounter[2]),
        .I1(CurrProgCounter[1]),
        .I2(CurrProgCounter[3]),
        .O(\CurrProgContext[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \CurrProgContext[4]_i_1 
       (.I0(CurrProgCounter[3]),
        .I1(CurrProgCounter[1]),
        .I2(CurrProgCounter[2]),
        .I3(CurrProgCounter[4]),
        .O(\CurrProgContext[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \CurrProgContext[5]_i_1 
       (.I0(CurrProgCounter[4]),
        .I1(CurrProgCounter[2]),
        .I2(CurrProgCounter[1]),
        .I3(CurrProgCounter[3]),
        .I4(CurrProgCounter[5]),
        .O(\CurrProgContext[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \CurrProgContext[6]_i_1 
       (.I0(CurrProgCounter[5]),
        .I1(CurrProgCounter[3]),
        .I2(CurrProgCounter[1]),
        .I3(CurrProgCounter[2]),
        .I4(CurrProgCounter[4]),
        .I5(CurrProgCounter[6]),
        .O(\CurrProgContext[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \CurrProgContext[7]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .O(\CurrProgContext[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \CurrProgContext[7]_i_2 
       (.I0(CurrProgCounter[6]),
        .I1(\CurrProgContext[7]_i_3_n_0 ),
        .I2(CurrProgCounter[7]),
        .O(\CurrProgContext[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \CurrProgContext[7]_i_3 
       (.I0(CurrProgCounter[4]),
        .I1(CurrProgCounter[2]),
        .I2(CurrProgCounter[1]),
        .I3(CurrProgCounter[3]),
        .I4(CurrProgCounter[5]),
        .O(\CurrProgContext[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(CurrProgCounter[0]),
        .Q(CurrProgContext[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[1]_i_1_n_0 ),
        .Q(CurrProgContext[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[2]_i_1_n_0 ),
        .Q(CurrProgContext[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[3]_i_1_n_0 ),
        .Q(CurrProgContext[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[4]_i_1_n_0 ),
        .Q(CurrProgContext[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[5]_i_1_n_0 ),
        .Q(CurrProgContext[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[6]_i_1_n_0 ),
        .Q(CurrProgContext[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgContext_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgContext[7]_i_1_n_0 ),
        .D(\CurrProgContext[7]_i_2_n_0 ),
        .Q(CurrProgContext[7]),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'h00000100)) 
    \CurrProgCounterOffset[0]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .O(\CurrProgCounterOffset[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounterOffset_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\CurrProgCounterOffset[0]_i_1_n_0 ),
        .Q(CurrProgCounterOffset),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \CurrProgCounter[0]_i_1 
       (.I0(\CurrProgCounter[0]_i_2_n_0 ),
        .I1(CurrProgCounter[0]),
        .I2(\CurrProgCounter[0]_i_3_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I4(\CurrProgCounter[0]_i_4_n_0 ),
        .O(NextProgCounter[0]));
  LUT6 #(
    .INIT(64'hCFFBFFFFCC3BCC00)) 
    \CurrProgCounter[0]_i_2 
       (.I0(CurrProgContext[0]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I5(\DATA_reg[6] [0]),
        .O(\CurrProgCounter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCF8FFFFC0C8C0C0)) 
    \CurrProgCounter[0]_i_3 
       (.I0(CurrProgContext[0]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I5(\DATA_reg[6] [0]),
        .O(\CurrProgCounter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD7ED142FFFF000C)) 
    \CurrProgCounter[0]_i_4 
       (.I0(CurrProgCounter[0]),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\DATA_reg[6] [0]),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3ACFFFFF30C50000)) 
    \CurrProgCounter[1]_i_4 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I1(CurrProgCounter[0]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(CurrProgCounter[1]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [1]),
        .O(\CurrProgCounter[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF6FF060FFFF000F)) 
    \CurrProgCounter[1]_i_5 
       (.I0(CurrProgCounter[0]),
        .I1(CurrProgCounter[1]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\DATA_reg[6] [1]),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h47FF0300)) 
    \CurrProgCounter[1]_i_6 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(CurrProgCounter[1]),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\DATA_reg[6] [1]),
        .O(\CurrProgCounter[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEF40)) 
    \CurrProgCounter[1]_i_7 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[1]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\DATA_reg[6] [1]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hD891D88050A250A2)) 
    \CurrProgCounter[2]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\CurrProgCounter[2]_i_4_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\CurrProgContext[2]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF04FF040F000F000)) 
    \CurrProgCounter[2]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[2]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\CurrProgContext[2]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrProgCounter[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \CurrProgCounter[2]_i_4 
       (.I0(CurrProgCounter[2]),
        .I1(CurrProgCounter[0]),
        .I2(CurrProgCounter[1]),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFCACFCFC5C0C0C0)) 
    \CurrProgCounter[3]_i_4 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I1(\CurrProgCounter[3]_i_8_n_0 ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\CurrProgContext[3]_i_1_n_0 ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [2]),
        .O(\CurrProgCounter[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBC8FB0B)) 
    \CurrProgCounter[3]_i_5 
       (.I0(\CurrProgCounter[3]_i_8_n_0 ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF3000)) 
    \CurrProgCounter[3]_i_6 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\CurrProgContext[3]_i_1_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\DATA_reg[6] [2]),
        .O(\CurrProgCounter[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEF40)) 
    \CurrProgCounter[3]_i_7 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[3]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7F80FFFF7F800000)) 
    \CurrProgCounter[3]_i_8 
       (.I0(CurrProgCounter[0]),
        .I1(CurrProgCounter[1]),
        .I2(CurrProgCounter[2]),
        .I3(CurrProgCounter[3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [2]),
        .O(\CurrProgCounter[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hD891D88050A250A2)) 
    \CurrProgCounter[4]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\CurrProgCounter[4]_i_4_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\CurrProgContext[4]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF04FF040F000F000)) 
    \CurrProgCounter[4]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[4]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\CurrProgContext[4]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrProgCounter[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \CurrProgCounter[4]_i_4 
       (.I0(CurrProgCounter[4]),
        .I1(CurrProgCounter[3]),
        .I2(CurrProgCounter[1]),
        .I3(CurrProgCounter[2]),
        .I4(CurrProgCounter[0]),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD891D88050A250A2)) 
    \CurrProgCounter[5]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\CurrProgCounter[5]_i_4_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\CurrProgContext[5]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF04FF040F000F000)) 
    \CurrProgCounter[5]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[5]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\CurrProgContext[5]_i_1_n_0 ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrProgCounter[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9A00)) 
    \CurrProgCounter[5]_i_4 
       (.I0(CurrProgCounter[5]),
        .I1(\DATA[0]_i_3_n_0 ),
        .I2(CurrProgCounter[0]),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFCACFCFC5C0C0C0)) 
    \CurrProgCounter[6]_i_4 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I1(\CurrProgCounter[6]_i_8_n_0 ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\CurrProgContext[6]_i_1_n_0 ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFBC8FB0B)) 
    \CurrProgCounter[6]_i_5 
       (.I0(\CurrProgCounter[6]_i_8_n_0 ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h74FF3000)) 
    \CurrProgCounter[6]_i_6 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\CurrProgContext[6]_i_1_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[6]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEF40)) 
    \CurrProgCounter[6]_i_7 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[6]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[6]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD2FFD200)) 
    \CurrProgCounter[6]_i_8 
       (.I0(CurrProgCounter[0]),
        .I1(\CurrProgContext[7]_i_3_n_0 ),
        .I2(CurrProgCounter[6]),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h34112A4C)) 
    \CurrProgCounter[7]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCACFCFC5C0C0C0)) 
    \CurrProgCounter[7]_i_5 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I1(\CurrProgCounter[7]_i_9_n_0 ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\CurrProgContext[7]_i_2_n_0 ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFBC8FB0B)) 
    \CurrProgCounter[7]_i_6 
       (.I0(\CurrProgCounter[7]_i_9_n_0 ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h74FF3000)) 
    \CurrProgCounter[7]_i_7 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\CurrProgContext[7]_i_2_n_0 ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEF40)) 
    \CurrProgCounter[7]_i_8 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(CurrProgContext[7]),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\DATA_reg[6] [3]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\CurrProgCounter[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hDF20FFFFDF200000)) 
    \CurrProgCounter[7]_i_9 
       (.I0(CurrProgCounter[0]),
        .I1(\CurrProgContext[7]_i_3_n_0 ),
        .I2(CurrProgCounter[6]),
        .I3(CurrProgCounter[7]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\DATA_reg[6] [3]),
        .O(\CurrProgCounter[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[0]),
        .Q(CurrProgCounter[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[1]),
        .Q(CurrProgCounter[1]),
        .R(RESET_IBUF));
  MUXF8 \CurrProgCounter_reg[1]_i_1 
       (.I0(\CurrProgCounter_reg[1]_i_2_n_0 ),
        .I1(\CurrProgCounter_reg[1]_i_3_n_0 ),
        .O(NextProgCounter[1]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  MUXF7 \CurrProgCounter_reg[1]_i_2 
       (.I0(\CurrProgCounter[1]_i_4_n_0 ),
        .I1(\CurrProgCounter[1]_i_5_n_0 ),
        .O(\CurrProgCounter_reg[1]_i_2_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  MUXF7 \CurrProgCounter_reg[1]_i_3 
       (.I0(\CurrProgCounter[1]_i_6_n_0 ),
        .I1(\CurrProgCounter[1]_i_7_n_0 ),
        .O(\CurrProgCounter_reg[1]_i_3_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[2]),
        .Q(CurrProgCounter[2]),
        .R(RESET_IBUF));
  MUXF7 \CurrProgCounter_reg[2]_i_1 
       (.I0(\CurrProgCounter[2]_i_2_n_0 ),
        .I1(\CurrProgCounter[2]_i_3_n_0 ),
        .O(NextProgCounter[2]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[3]),
        .Q(CurrProgCounter[3]),
        .R(RESET_IBUF));
  MUXF8 \CurrProgCounter_reg[3]_i_1 
       (.I0(\CurrProgCounter_reg[3]_i_2_n_0 ),
        .I1(\CurrProgCounter_reg[3]_i_3_n_0 ),
        .O(NextProgCounter[3]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  MUXF7 \CurrProgCounter_reg[3]_i_2 
       (.I0(\CurrProgCounter[3]_i_4_n_0 ),
        .I1(\CurrProgCounter[3]_i_5_n_0 ),
        .O(\CurrProgCounter_reg[3]_i_2_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  MUXF7 \CurrProgCounter_reg[3]_i_3 
       (.I0(\CurrProgCounter[3]_i_6_n_0 ),
        .I1(\CurrProgCounter[3]_i_7_n_0 ),
        .O(\CurrProgCounter_reg[3]_i_3_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[4]),
        .Q(CurrProgCounter[4]),
        .R(RESET_IBUF));
  MUXF7 \CurrProgCounter_reg[4]_i_1 
       (.I0(\CurrProgCounter[4]_i_2_n_0 ),
        .I1(\CurrProgCounter[4]_i_3_n_0 ),
        .O(NextProgCounter[4]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[5]),
        .Q(CurrProgCounter[5]),
        .R(RESET_IBUF));
  MUXF7 \CurrProgCounter_reg[5]_i_1 
       (.I0(\CurrProgCounter[5]_i_2_n_0 ),
        .I1(\CurrProgCounter[5]_i_3_n_0 ),
        .O(NextProgCounter[5]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[6]),
        .Q(CurrProgCounter[6]),
        .R(RESET_IBUF));
  MUXF8 \CurrProgCounter_reg[6]_i_1 
       (.I0(\CurrProgCounter_reg[6]_i_2_n_0 ),
        .I1(\CurrProgCounter_reg[6]_i_3_n_0 ),
        .O(NextProgCounter[6]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  MUXF7 \CurrProgCounter_reg[6]_i_2 
       (.I0(\CurrProgCounter[6]_i_4_n_0 ),
        .I1(\CurrProgCounter[6]_i_5_n_0 ),
        .O(\CurrProgCounter_reg[6]_i_2_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  MUXF7 \CurrProgCounter_reg[6]_i_3 
       (.I0(\CurrProgCounter[6]_i_6_n_0 ),
        .I1(\CurrProgCounter[6]_i_7_n_0 ),
        .O(\CurrProgCounter_reg[6]_i_3_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrProgCounter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrProgCounter[7]_i_1_n_0 ),
        .D(NextProgCounter[7]),
        .Q(CurrProgCounter[7]),
        .R(RESET_IBUF));
  MUXF8 \CurrProgCounter_reg[7]_i_2 
       (.I0(\CurrProgCounter_reg[7]_i_3_n_0 ),
        .I1(\CurrProgCounter_reg[7]_i_4_n_0 ),
        .O(NextProgCounter[7]),
        .S(\FSM_sequential_CurrState_reg_n_0_[2] ));
  MUXF7 \CurrProgCounter_reg[7]_i_3 
       (.I0(\CurrProgCounter[7]_i_5_n_0 ),
        .I1(\CurrProgCounter[7]_i_6_n_0 ),
        .O(\CurrProgCounter_reg[7]_i_3_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  MUXF7 \CurrProgCounter_reg[7]_i_4 
       (.I0(\CurrProgCounter[7]_i_7_n_0 ),
        .I1(\CurrProgCounter[7]_i_8_n_0 ),
        .O(\CurrProgCounter_reg[7]_i_4_n_0 ),
        .S(\FSM_sequential_CurrState_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000000015020000)) 
    \CurrRegA[7]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(CurrRegSelect),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrRegA[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[0]),
        .Q(CurrRegA[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[1]),
        .Q(CurrRegA[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[2]),
        .Q(CurrRegA[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[3]),
        .Q(CurrRegA[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[4]),
        .Q(CurrRegA[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[5]),
        .Q(CurrRegA[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[6]),
        .Q(CurrRegA[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegA_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegA[7]_i_1_n_0 ),
        .D(NextRegB[7]),
        .Q(CurrRegA[7]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0500000040080000)) 
    \CurrRegB[7]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(CurrRegSelect),
        .I2(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\CurrRegB[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[0]),
        .Q(CurrRegB[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[1]),
        .Q(CurrRegB[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[2]),
        .Q(CurrRegB[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[3]),
        .Q(CurrRegB[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[4]),
        .Q(CurrRegB[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[5]),
        .Q(CurrRegB[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[6]),
        .Q(CurrRegB[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CurrRegB_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\CurrRegB[7]_i_1_n_0 ),
        .D(NextRegB[7]),
        .Q(CurrRegB[7]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'hFFFF5EFF00051000)) 
    CurrRegSelect_i_1
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(CurrRegSelect),
        .O(CurrRegSelect_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CurrRegSelect_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(CurrRegSelect_i_1_n_0),
        .Q(CurrRegSelect),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h8080800000000080)) 
    \DATA[0]_i_1 
       (.I0(CurrProgCounter[6]),
        .I1(CurrProgCounter[7]),
        .I2(\DATA[0]_i_2_n_0 ),
        .I3(\DATA[0]_i_3_n_0 ),
        .I4(\DATA[0]_i_4_n_0 ),
        .I5(CurrProgCounter[5]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6A00000000000000)) 
    \DATA[0]_i_2 
       (.I0(CurrProgCounter[1]),
        .I1(CurrProgCounterOffset),
        .I2(CurrProgCounter[0]),
        .I3(CurrProgCounter[2]),
        .I4(CurrProgCounter[3]),
        .I5(CurrProgCounter[4]),
        .O(\DATA[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \DATA[0]_i_3 
       (.I0(CurrProgCounter[3]),
        .I1(CurrProgCounter[1]),
        .I2(CurrProgCounter[2]),
        .I3(CurrProgCounter[4]),
        .O(\DATA[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \DATA[0]_i_4 
       (.I0(CurrProgCounterOffset),
        .I1(CurrProgCounter[0]),
        .O(\DATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000010001000000)) 
    \DATA[1]_i_1 
       (.I0(\DATA[6]_i_2_n_0 ),
        .I1(CurrProgCounter[3]),
        .I2(CurrProgCounter[2]),
        .I3(CurrProgCounter[1]),
        .I4(CurrProgCounterOffset),
        .I5(CurrProgCounter[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4000011000000001)) 
    \DATA[3]_i_1 
       (.I0(\DATA[6]_i_2_n_0 ),
        .I1(CurrProgCounter[3]),
        .I2(CurrProgCounter[0]),
        .I3(CurrProgCounterOffset),
        .I4(CurrProgCounter[1]),
        .I5(CurrProgCounter[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000110000000)) 
    \DATA[6]_i_1 
       (.I0(\DATA[6]_i_2_n_0 ),
        .I1(CurrProgCounter[3]),
        .I2(CurrProgCounter[1]),
        .I3(CurrProgCounterOffset),
        .I4(CurrProgCounter[0]),
        .I5(CurrProgCounter[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFCD)) 
    \DATA[6]_i_2 
       (.I0(\DATA[0]_i_4_n_0 ),
        .I1(CurrProgCounter[4]),
        .I2(\DATA[6]_i_3_n_0 ),
        .I3(CurrProgCounter[5]),
        .I4(CurrProgCounter[6]),
        .I5(CurrProgCounter[7]),
        .O(\DATA[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \DATA[6]_i_3 
       (.I0(CurrProgCounter[2]),
        .I1(CurrProgCounter[1]),
        .I2(CurrProgCounter[3]),
        .O(\DATA[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F11FFFF0F110000)) 
    \FSM_sequential_CurrState[0]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I5(\FSM_sequential_CurrState[0]_i_2_n_0 ),
        .O(\FSM_sequential_CurrState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F4FFFF00F40000)) 
    \FSM_sequential_CurrState[0]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(BUS_INTERRUPTS_RAISE),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I5(\FSM_sequential_CurrState[0]_i_3_n_0 ),
        .O(\FSM_sequential_CurrState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFBEFFFF)) 
    \FSM_sequential_CurrState[0]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I1(\DATA_reg[6] [0]),
        .I2(\DATA_reg[6] [1]),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .O(\FSM_sequential_CurrState[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000451500000000)) 
    \FSM_sequential_CurrState[1]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\DATA_reg[6] [0]),
        .I2(\DATA_reg[6] [1]),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\FSM_sequential_CurrState[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h12025FD712020A82)) 
    \FSM_sequential_CurrState[2]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I5(\FSM_sequential_CurrState[2]_i_2_n_0 ),
        .O(\FSM_sequential_CurrState[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40540000)) 
    \FSM_sequential_CurrState[2]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I1(\DATA_reg[6] [2]),
        .I2(\DATA_reg[6] [1]),
        .I3(\DATA_reg[6] [0]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .O(\FSM_sequential_CurrState[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08303B3308300800)) 
    \FSM_sequential_CurrState[3]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I5(\FSM_sequential_CurrState[3]_i_2_n_0 ),
        .O(\FSM_sequential_CurrState[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFF01400000)) 
    \FSM_sequential_CurrState[3]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\DATA_reg[6] [1]),
        .I2(\DATA_reg[6] [0]),
        .I3(\DATA_reg[6] [2]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .O(\FSM_sequential_CurrState[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h1F5FFFFF)) 
    \FSM_sequential_CurrState[4]_i_1 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .O(\FSM_sequential_CurrState[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3077DDD530778880)) 
    \FSM_sequential_CurrState[4]_i_2 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .I1(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I2(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .I3(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I4(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .I5(\FSM_sequential_CurrState[4]_i_3_n_0 ),
        .O(\FSM_sequential_CurrState[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000444000000000)) 
    \FSM_sequential_CurrState[4]_i_3 
       (.I0(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .I1(\DATA_reg[6] [2]),
        .I2(\DATA_reg[6] [0]),
        .I3(\DATA_reg[6] [1]),
        .I4(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .I5(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .O(\FSM_sequential_CurrState[4]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrState_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_CurrState[4]_i_1_n_0 ),
        .D(\FSM_sequential_CurrState[0]_i_1_n_0 ),
        .Q(\FSM_sequential_CurrState_reg_n_0_[0] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrState_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_CurrState[4]_i_1_n_0 ),
        .D(ALU0_n_0),
        .Q(\FSM_sequential_CurrState_reg_n_0_[1] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrState_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_CurrState[4]_i_1_n_0 ),
        .D(\FSM_sequential_CurrState[2]_i_1_n_0 ),
        .Q(\FSM_sequential_CurrState_reg_n_0_[2] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrState_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_CurrState[4]_i_1_n_0 ),
        .D(\FSM_sequential_CurrState[3]_i_1_n_0 ),
        .Q(\FSM_sequential_CurrState_reg_n_0_[3] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrState_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_sequential_CurrState[4]_i_1_n_0 ),
        .D(\FSM_sequential_CurrState[4]_i_2_n_0 ),
        .Q(\FSM_sequential_CurrState_reg_n_0_[4] ),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \LED_OUT[7]_i_1 
       (.I0(\LED_OUT[7]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(BUS_ADDR),
        .I5(Q[6]),
        .O(E));
  LUT4 #(
    .INIT(16'h0010)) 
    \LED_OUT[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(O7),
        .I3(Q[1]),
        .O(\LED_OUT[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    Mem_reg_i_9
       (.I0(O7),
        .I1(BUS_ADDR),
        .O(WEA));
  LUT2 #(
    .INIT(4'h1)) 
    RAMBusWE_i_1
       (.I0(BUS_ADDR),
        .I1(O7),
        .O(RAMBusWE));
  LUT3 #(
    .INIT(8'hBA)) 
    \Timer[0]_i_1 
       (.I0(RESET_IBUF),
        .I1(\Timer[0]_i_4_n_0 ),
        .I2(Q[1]),
        .O(\Timer_reg[7] ));
  LUT2 #(
    .INIT(4'h7)) 
    \Timer[0]_i_14 
       (.I0(BUS_ADDR),
        .I1(Q[6]),
        .O(\Timer[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \Timer[0]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\Timer[0]_i_14_n_0 ),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\Timer[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    TransmitTimerValue_i_1
       (.I0(Q[1]),
        .I1(\Timer[0]_i_4_n_0 ),
        .O(TransmitTimerValue));
  LUT2 #(
    .INIT(4'h1)) 
    mouse_WE_i_1
       (.I0(O7),
        .I1(mouse_WE_i_2_n_0),
        .O(mouse_WE_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    mouse_WE_i_2
       (.I0(BUS_ADDR),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(mouse_WE_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(mouse_WE_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    mouse_WE_i_3
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(mouse_WE_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \mouse_memory[0][7]_i_1 
       (.I0(mouse_WE_i_2_n_0),
        .I1(Q[1]),
        .I2(O7),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\mouse_memory_reg[0][7] ));
  LUT3 #(
    .INIT(8'hDF)) 
    \mouse_memory[1][7]_i_1 
       (.I0(O7),
        .I1(mouse_WE_i_2_n_0),
        .I2(Q[0]),
        .O(\mouse_memory_reg[1][0] ));
endmodule

(* ECO_CHECKSUM = "624331f" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Processor_wrapper
   (CLK,
    RESET,
    CLK_MOUSE,
    DATA_MOUSE,
    LED_OUT);
  input CLK;
  input RESET;
  inout CLK_MOUSE;
  inout DATA_MOUSE;
  output [7:0]LED_OUT;

  wire [6:0]BUS_ADDR;
  wire [7:0]BUS_DATA;
  wire BUS_INTERRUPTS_ACK;
  wire BUS_INTERRUPTS_RAISE;
  wire BUS_WE;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire CLK_MOUSE;
  wire CLK_MOUSE_IBUF;
  wire CLK_MOUSE_TRI;
  wire [7:0]CurrBusDataOut;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire DATA_MOUSE;
  wire DATA_MOUSE_IBUF;
  wire DATA_MOUSE_OBUF;
  wire DATA_MOUSE_TRI;
  wire [7:0]LED_OUT;
  wire [7:0]LED_OUT_OBUF;
  wire Processor_n_11;
  wire Processor_n_12;
  wire Processor_n_13;
  wire Processor_n_14;
  wire Processor_n_15;
  wire Processor_n_16;
  wire Processor_n_17;
  wire Processor_n_18;
  wire Processor_n_19;
  wire Processor_n_9;
  wire RAMBusWE;
  wire RAM_n_0;
  wire RAM_n_1;
  wire RAM_n_2;
  wire RAM_n_3;
  wire RAM_n_4;
  wire RAM_n_5;
  wire RAM_n_6;
  wire RAM_n_7;
  wire RAM_n_8;
  wire RESET;
  wire RESET_IBUF;
  wire [6:0]ROM_DATA;
  wire Timer_n_8;
  wire [7:0]Timer_reg;
  wire TransmitTimerValue;
PULLUP pullup_CLK_MOUSE
       (.O(CLK_MOUSE));
PULLUP pullup_DATA_MOUSE
       (.O(DATA_MOUSE));

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  (* XILINX_REPORT_XFORM = "IOBUF" *) 
  IOBUF CLK_MOUSE_IOBUF_inst
       (.I(1'b0),
        .IO(CLK_MOUSE),
        .O(CLK_MOUSE_IBUF),
        .T(CLK_MOUSE_TRI));
  (* XILINX_REPORT_XFORM = "IOBUF" *) 
  IOBUF DATA_MOUSE_IOBUF_inst
       (.I(DATA_MOUSE_OBUF),
        .IO(DATA_MOUSE),
        .O(DATA_MOUSE_IBUF),
        .T(DATA_MOUSE_TRI));
  OBUF \LED_OUT_OBUF[0]_inst 
       (.I(LED_OUT_OBUF[0]),
        .O(LED_OUT[0]));
  OBUF \LED_OUT_OBUF[1]_inst 
       (.I(LED_OUT_OBUF[1]),
        .O(LED_OUT[1]));
  OBUF \LED_OUT_OBUF[2]_inst 
       (.I(LED_OUT_OBUF[2]),
        .O(LED_OUT[2]));
  OBUF \LED_OUT_OBUF[3]_inst 
       (.I(LED_OUT_OBUF[3]),
        .O(LED_OUT[3]));
  OBUF \LED_OUT_OBUF[4]_inst 
       (.I(LED_OUT_OBUF[4]),
        .O(LED_OUT[4]));
  OBUF \LED_OUT_OBUF[5]_inst 
       (.I(LED_OUT_OBUF[5]),
        .O(LED_OUT[5]));
  OBUF \LED_OUT_OBUF[6]_inst 
       (.I(LED_OUT_OBUF[6]),
        .O(LED_OUT[6]));
  OBUF \LED_OUT_OBUF[7]_inst 
       (.I(LED_OUT_OBUF[7]),
        .O(LED_OUT[7]));
  LEDs LEDs
       (.BUS_DATA(BUS_DATA),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(Processor_n_9),
        .Q(LED_OUT_OBUF),
        .RESET_IBUF(RESET_IBUF));
  Processor Processor
       (.BUS_DATA(BUS_DATA),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK),
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({Processor_n_13,Processor_n_14,Processor_n_15,Processor_n_16}),
        .\DATA_reg[6] ({ROM_DATA[6],ROM_DATA[3],ROM_DATA[1:0]}),
        .E(Processor_n_9),
        .O7(BUS_WE),
        .Q(BUS_ADDR),
        .RAMBusWE(RAMBusWE),
        .RESET_IBUF(RESET_IBUF),
        .\Timer_reg[7] (Processor_n_11),
        .TransmitTimerValue(TransmitTimerValue),
        .WEA(Processor_n_19),
        .mouse_WE_reg(Processor_n_17),
        .\mouse_memory_reg[0][7] (Processor_n_12),
        .\mouse_memory_reg[0][7]_0 (CurrBusDataOut),
        .\mouse_memory_reg[1][0] (Processor_n_18));
  RAM RAM
       (.BUS_DATA(BUS_DATA),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q(BUS_ADDR),
        .RAMBusWE(RAMBusWE),
        .WEA(Processor_n_19),
        .\mouse_memory_reg[0][0] (RAM_n_0),
        .\mouse_memory_reg[0][0]_0 (RAM_n_1),
        .\mouse_memory_reg[0][1] (RAM_n_2),
        .\mouse_memory_reg[0][2] (RAM_n_3),
        .\mouse_memory_reg[0][3] (RAM_n_4),
        .\mouse_memory_reg[0][4] (RAM_n_5),
        .\mouse_memory_reg[0][5] (RAM_n_6),
        .\mouse_memory_reg[0][6] (RAM_n_7),
        .\mouse_memory_reg[0][7] (RAM_n_8));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  ROM ROM
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({Processor_n_13,Processor_n_14,Processor_n_15,Processor_n_16}),
        .Q({ROM_DATA[6],ROM_DATA[3],ROM_DATA[1:0]}));
  Timer Timer
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\CurrBusAddr_reg[1] (Processor_n_11),
        .RESET_IBUF(RESET_IBUF),
        .Timer_reg(Timer_reg),
        .TransmitTimerValue(TransmitTimerValue),
        .\mouse_memory_reg[0][0] (Timer_n_8));
  MouseBusInterface mouse_interface
       (.BUS_DATA(BUS_DATA),
        .BUS_INTERRUPTS_ACK(BUS_INTERRUPTS_ACK),
        .BUS_INTERRUPTS_RAISE(BUS_INTERRUPTS_RAISE),
        .BUS_WE(BUS_WE),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLK_MOUSE_TRI(CLK_MOUSE_TRI),
        .\CurrBusAddr_reg[1] (Processor_n_12),
        .CurrBusDataOutWE_reg(Processor_n_17),
        .CurrBusDataOutWE_reg_0(Processor_n_18),
        .\CurrBusDataOut_reg[7] (CurrBusDataOut),
        .D(CLK_MOUSE_IBUF),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .DATA_MOUSE_OBUF(DATA_MOUSE_OBUF),
        .DATA_MOUSE_TRI(DATA_MOUSE_TRI),
        .Mem_reg(RAM_n_1),
        .Mem_reg_0(RAM_n_2),
        .Mem_reg_1(RAM_n_3),
        .Mem_reg_2(RAM_n_4),
        .Mem_reg_3(RAM_n_5),
        .Mem_reg_4(RAM_n_6),
        .Mem_reg_5(RAM_n_7),
        .Mem_reg_6(RAM_n_8),
        .Q(BUS_ADDR[1:0]),
        .RAMBusWE_reg(RAM_n_0),
        .RESET_IBUF(RESET_IBUF),
        .Timer_reg(Timer_reg),
        .TransmitTimerValue_reg(Timer_n_8));
endmodule

module RAM
   (\mouse_memory_reg[0][0] ,
    \mouse_memory_reg[0][0]_0 ,
    \mouse_memory_reg[0][1] ,
    \mouse_memory_reg[0][2] ,
    \mouse_memory_reg[0][3] ,
    \mouse_memory_reg[0][4] ,
    \mouse_memory_reg[0][5] ,
    \mouse_memory_reg[0][6] ,
    \mouse_memory_reg[0][7] ,
    CLK_IBUF_BUFG,
    Q,
    BUS_DATA,
    WEA,
    RAMBusWE);
  output \mouse_memory_reg[0][0] ;
  output \mouse_memory_reg[0][0]_0 ;
  output \mouse_memory_reg[0][1] ;
  output \mouse_memory_reg[0][2] ;
  output \mouse_memory_reg[0][3] ;
  output \mouse_memory_reg[0][4] ;
  output \mouse_memory_reg[0][5] ;
  output \mouse_memory_reg[0][6] ;
  output \mouse_memory_reg[0][7] ;
  input CLK_IBUF_BUFG;
  input [6:0]Q;
  input [7:0]BUS_DATA;
  input [0:0]WEA;
  input RAMBusWE;

  wire [7:0]BUS_DATA;
  wire CLK_IBUF_BUFG;
  wire [7:0]Out;
  wire [6:0]Q;
  wire RAMBusWE;
  wire [0:0]WEA;
  wire \mouse_memory_reg[0][0] ;
  wire \mouse_memory_reg[0][0]_0 ;
  wire \mouse_memory_reg[0][1] ;
  wire \mouse_memory_reg[0][2] ;
  wire \mouse_memory_reg[0][3] ;
  wire \mouse_memory_reg[0][4] ;
  wire \mouse_memory_reg[0][5] ;
  wire \mouse_memory_reg[0][6] ;
  wire \mouse_memory_reg[0][7] ;
  wire NLW_Mem_reg_REGCEAREGCE_UNCONNECTED;
  wire NLW_Mem_reg_REGCEB_UNCONNECTED;
  wire [15:8]NLW_Mem_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_Mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_Mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_Mem_reg_DOPBDOP_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-4 {cell *THIS*} {string 7}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "Mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "35" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000FF),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    Mem_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,BUS_DATA}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_Mem_reg_DOADO_UNCONNECTED[15:8],Out}),
        .DOBDO(NLW_Mem_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_Mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_Mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(NLW_Mem_reg_REGCEAREGCE_UNCONNECTED),
        .REGCEB(NLW_Mem_reg_REGCEB_UNCONNECTED),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_27
       (.I0(Out[7]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][7] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_29
       (.I0(Out[6]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][6] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_31
       (.I0(Out[5]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][5] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_33
       (.I0(Out[4]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][4] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_35
       (.I0(Out[3]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][3] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_37
       (.I0(Out[2]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][2] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_39
       (.I0(Out[1]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][1] ));
  LUT2 #(
    .INIT(4'h8)) 
    Mem_reg_i_41
       (.I0(Out[0]),
        .I1(\mouse_memory_reg[0][0] ),
        .O(\mouse_memory_reg[0][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    RAMBusWE_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(RAMBusWE),
        .Q(\mouse_memory_reg[0][0] ),
        .R(1'b0));
endmodule

module ROM
   (Q,
    D,
    CLK_IBUF_BUFG);
  output [3:0]Q;
  input [3:0]D;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]Q;

  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \DATA_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

module Read_Remote_Data
   (send_byte_read_data,
    read_enable_read_data,
    read_data_success,
    \byte_to_send_current_reg[0]_0 ,
    \Curr_ByteToSend_reg[5] ,
    \Curr_ByteToSend_reg[3] ,
    data_enable_next2_out,
    \FSM_sequential_state_current_reg[1]_0 ,
    \FSM_sequential_state_current_reg[1]_1 ,
    \Curr_ByteToSend_reg[3]_0 ,
    \Curr_ByteToSend_reg[0] ,
    \Curr_TimeoutCounter_reg[0] ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    byte_recieved,
    ByteSentToMouse,
    read_data_enable_current,
    out,
    ready_remote,
    complete_current_reg_0,
    in0,
    ready_enable_data,
    ready_reset,
    enable_data_success,
    read_enable_data,
    \Curr_MSCodeShiftReg_reg[2] );
  output send_byte_read_data;
  output read_enable_read_data;
  output read_data_success;
  output \byte_to_send_current_reg[0]_0 ;
  output \Curr_ByteToSend_reg[5] ;
  output \Curr_ByteToSend_reg[3] ;
  output data_enable_next2_out;
  output \FSM_sequential_state_current_reg[1]_0 ;
  output \FSM_sequential_state_current_reg[1]_1 ;
  output \Curr_ByteToSend_reg[3]_0 ;
  output \Curr_ByteToSend_reg[0] ;
  output \Curr_TimeoutCounter_reg[0] ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input byte_recieved;
  input ByteSentToMouse;
  input read_data_enable_current;
  input [2:0]out;
  input ready_remote;
  input complete_current_reg_0;
  input [0:0]in0;
  input ready_enable_data;
  input ready_reset;
  input enable_data_success;
  input read_enable_data;
  input \Curr_MSCodeShiftReg_reg[2] ;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend_reg[0] ;
  wire \Curr_ByteToSend_reg[3] ;
  wire \Curr_ByteToSend_reg[3]_0 ;
  wire \Curr_ByteToSend_reg[5] ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire \FSM_sequential_state_current[0]_i_1__2_n_0 ;
  wire \FSM_sequential_state_current[1]_i_1__1_n_0 ;
  wire \FSM_sequential_state_current[1]_i_2__0_n_0 ;
  wire \FSM_sequential_state_current[2]_i_1__1_n_0 ;
  wire \FSM_sequential_state_current[2]_i_2__3_n_0 ;
  wire \FSM_sequential_state_current_reg[1]_0 ;
  wire \FSM_sequential_state_current_reg[1]_1 ;
  wire RESET_IBUF;
  wire byte_recieved;
  wire \byte_to_send_current[0]_i_1__0_n_0 ;
  wire \byte_to_send_current_reg[0]_0 ;
  wire complete_current_i_1__3_n_0;
  wire complete_current_reg_0;
  wire data_enable_next2_out;
  wire enable_data_success;
  wire enable_read_current_i_1__0_n_0;
  wire [0:0]in0;
  wire [2:0]out;
  wire read_data_enable_current;
  wire read_data_success;
  wire read_enable_data;
  wire read_enable_read_data;
  wire ready_enable_data;
  wire ready_read_data;
  wire ready_remote;
  wire ready_reset;
  wire send_byte_current_i_1__1_n_0;
  wire send_byte_read_data;
  (* RTL_KEEP = "yes" *) wire [2:0]state_current;
  wire success_current_i_1__1_n_0;

  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \Curr_ByteToSend[3]_i_5 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(read_data_success),
        .I3(ready_read_data),
        .I4(\byte_to_send_current_reg[0]_0 ),
        .I5(out[0]),
        .O(\Curr_ByteToSend_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \Curr_ByteToSend[3]_i_6 
       (.I0(\byte_to_send_current_reg[0]_0 ),
        .I1(ready_remote),
        .O(\Curr_ByteToSend_reg[3] ));
  LUT5 #(
    .INIT(32'h08880000)) 
    \Curr_ByteToSend[7]_i_14 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(ready_read_data),
        .I3(read_data_success),
        .I4(send_byte_read_data),
        .O(\Curr_ByteToSend_reg[0] ));
  LUT4 #(
    .INIT(16'h0888)) 
    \Curr_ByteToSend[7]_i_21 
       (.I0(out[0]),
        .I1(\byte_to_send_current_reg[0]_0 ),
        .I2(ready_read_data),
        .I3(read_data_success),
        .O(\Curr_ByteToSend_reg[5] ));
  LUT6 #(
    .INIT(64'h8880808000808080)) 
    \FSM_sequential_Curr_State[2]_i_18 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(read_enable_read_data),
        .I3(read_data_success),
        .I4(ready_read_data),
        .I5(read_enable_data),
        .O(\Curr_TimeoutCounter_reg[0] ));
  LUT5 #(
    .INIT(32'h1055FF00)) 
    \FSM_sequential_state_current[0]_i_1__2 
       (.I0(state_current[2]),
        .I1(\Curr_MSCodeShiftReg_reg[2] ),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .I4(\FSM_sequential_state_current[2]_i_2__3_n_0 ),
        .O(\FSM_sequential_state_current[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h06AA)) 
    \FSM_sequential_state_current[1]_i_1__1 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(\FSM_sequential_state_current[2]_i_2__3_n_0 ),
        .O(\FSM_sequential_state_current[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_sequential_state_current[1]_i_1__2 
       (.I0(\FSM_sequential_state_current[1]_i_2__0_n_0 ),
        .I1(complete_current_reg_0),
        .I2(\FSM_sequential_state_current_reg[1]_1 ),
        .I3(in0),
        .O(\FSM_sequential_state_current_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hE6CCE644)) 
    \FSM_sequential_state_current[1]_i_2__0 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(read_data_success),
        .I3(out[1]),
        .I4(enable_data_success),
        .O(\FSM_sequential_state_current[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h40AA)) 
    \FSM_sequential_state_current[2]_i_1__1 
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(\FSM_sequential_state_current[2]_i_2__3_n_0 ),
        .O(\FSM_sequential_state_current[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7377733300000000)) 
    \FSM_sequential_state_current[2]_i_2__3 
       (.I0(state_current[2]),
        .I1(state_current[1]),
        .I2(byte_recieved),
        .I3(state_current[0]),
        .I4(ByteSentToMouse),
        .I5(read_data_enable_current),
        .O(\FSM_sequential_state_current[2]_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'hD591C48000000000)) 
    \FSM_sequential_state_current[2]_i_4 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(ready_read_data),
        .I3(ready_enable_data),
        .I4(ready_reset),
        .I5(out[0]),
        .O(\FSM_sequential_state_current_reg[1]_1 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[0]_i_1__2_n_0 ),
        .Q(state_current[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[1]_i_1__1_n_0 ),
        .Q(state_current[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[2]_i_1__1_n_0 ),
        .Q(state_current[2]),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFF5F0008)) 
    \byte_to_send_current[0]_i_1__0 
       (.I0(read_data_enable_current),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(state_current[1]),
        .I4(\byte_to_send_current_reg[0]_0 ),
        .O(\byte_to_send_current[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\byte_to_send_current[0]_i_1__0_n_0 ),
        .Q(\byte_to_send_current_reg[0]_0 ),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hFF20)) 
    complete_current_i_1__3
       (.I0(state_current[2]),
        .I1(state_current[1]),
        .I2(read_data_enable_current),
        .I3(ready_read_data),
        .O(complete_current_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    complete_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(complete_current_i_1__3_n_0),
        .Q(ready_read_data),
        .R(RESET_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    data_enable_current_i_3
       (.I0(ready_read_data),
        .I1(read_data_success),
        .O(data_enable_next2_out));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    enable_read_current_i_1__0
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(read_data_enable_current),
        .I4(read_enable_read_data),
        .O(enable_read_current_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_read_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(enable_read_current_i_1__0_n_0),
        .Q(read_enable_read_data),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    send_byte_current_i_1__1
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .I2(state_current[1]),
        .I3(read_data_enable_current),
        .I4(send_byte_read_data),
        .O(send_byte_current_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(send_byte_current_i_1__1_n_0),
        .Q(send_byte_read_data),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hF7FF0400)) 
    success_current_i_1__1
       (.I0(state_current[0]),
        .I1(read_data_enable_current),
        .I2(state_current[1]),
        .I3(state_current[2]),
        .I4(read_data_success),
        .O(success_current_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    success_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(success_current_i_1__1_n_0),
        .Q(read_data_success),
        .R(RESET_IBUF));
endmodule

module Remote_Mode
   (ready_remote,
    read_data_enable_current_reg,
    \Curr_ByteToSend_reg[4] ,
    \FSM_sequential_state_current_reg[0]_0 ,
    \FSM_sequential_state_current_reg[0]_1 ,
    \Curr_ByteToSend_reg[0] ,
    \Curr_TimeoutCounter_reg[0] ,
    \Curr_ByteToSend_reg[7] ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    byte_recieved,
    ByteSentToMouse,
    remote_enable_current,
    out,
    read_data_enable_current,
    \FSM_sequential_state_current_reg[1]_0 ,
    in0,
    \counter_current_reg[15] ,
    ready_microsoft,
    send_byte_read_data,
    read_enable_read_data,
    \byte_to_send_current_reg[0] ,
    \Curr_MSCodeShiftReg_reg[2] );
  output ready_remote;
  output read_data_enable_current_reg;
  output \Curr_ByteToSend_reg[4] ;
  output \FSM_sequential_state_current_reg[0]_0 ;
  output \FSM_sequential_state_current_reg[0]_1 ;
  output \Curr_ByteToSend_reg[0] ;
  output \Curr_TimeoutCounter_reg[0] ;
  output \Curr_ByteToSend_reg[7] ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input byte_recieved;
  input ByteSentToMouse;
  input remote_enable_current;
  input [2:0]out;
  input read_data_enable_current;
  input \FSM_sequential_state_current_reg[1]_0 ;
  input [0:0]in0;
  input \counter_current_reg[15] ;
  input ready_microsoft;
  input send_byte_read_data;
  input read_enable_read_data;
  input \byte_to_send_current_reg[0] ;
  input \Curr_MSCodeShiftReg_reg[2] ;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend_reg[0] ;
  wire \Curr_ByteToSend_reg[4] ;
  wire \Curr_ByteToSend_reg[7] ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire \FSM_sequential_state_current[0]_i_1__1_n_0 ;
  wire \FSM_sequential_state_current[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_current[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_current[2]_i_2__2_n_0 ;
  wire \FSM_sequential_state_current_reg[0]_0 ;
  wire \FSM_sequential_state_current_reg[0]_1 ;
  wire \FSM_sequential_state_current_reg[1]_0 ;
  wire RESET_IBUF;
  wire byte_recieved;
  wire \byte_to_send_current[4]_i_1__0_n_0 ;
  wire \byte_to_send_current_reg[0] ;
  wire \byte_to_send_current_reg_n_0_[4] ;
  wire complete_current_i_1__2_n_0;
  wire \counter_current_reg[15] ;
  wire enable_read_current_i_1_n_0;
  wire [2:0]out;
  wire read_data_enable_current;
  wire read_data_enable_current_reg;
  wire read_enable_read_data;
  wire read_enable_remote;
  wire ready_microsoft;
  wire ready_remote;
  wire remote_enable_current;
  wire send_byte_current_i_1__0_n_0;
  wire send_byte_read_data;
  wire send_byte_remote;
  (* RTL_KEEP = "yes" *) wire [2:0]state_current;

  LUT4 #(
    .INIT(16'h0080)) 
    \Curr_ByteToSend[4]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\byte_to_send_current_reg_n_0_[4] ),
        .I3(ready_remote),
        .O(\Curr_ByteToSend_reg[4] ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \Curr_ByteToSend[7]_i_16 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(send_byte_remote),
        .I3(ready_remote),
        .I4(send_byte_read_data),
        .O(\Curr_ByteToSend_reg[0] ));
  LUT5 #(
    .INIT(32'h88800800)) 
    \Curr_ByteToSend[7]_i_5 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(ready_remote),
        .I3(\byte_to_send_current_reg_n_0_[4] ),
        .I4(\byte_to_send_current_reg[0] ),
        .O(\Curr_ByteToSend_reg[7] ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \FSM_sequential_Curr_State[2]_i_22 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(read_enable_remote),
        .I3(ready_remote),
        .I4(read_enable_read_data),
        .O(\Curr_TimeoutCounter_reg[0] ));
  LUT5 #(
    .INIT(32'h1055FF00)) 
    \FSM_sequential_state_current[0]_i_1__1 
       (.I0(state_current[2]),
        .I1(\Curr_MSCodeShiftReg_reg[2] ),
        .I2(state_current[1]),
        .I3(state_current[0]),
        .I4(\FSM_sequential_state_current[2]_i_2__2_n_0 ),
        .O(\FSM_sequential_state_current[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h4F4F4FF0)) 
    \FSM_sequential_state_current[0]_i_1__3 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_sequential_state_current_reg[0]_1 ),
        .I4(\FSM_sequential_state_current_reg[1]_0 ),
        .O(\FSM_sequential_state_current_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h06AA)) 
    \FSM_sequential_state_current[1]_i_1__0 
       (.I0(state_current[1]),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(\FSM_sequential_state_current[2]_i_2__2_n_0 ),
        .O(\FSM_sequential_state_current[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h40AA)) 
    \FSM_sequential_state_current[2]_i_1__0 
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(\FSM_sequential_state_current[2]_i_2__2_n_0 ),
        .O(\FSM_sequential_state_current[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7377733300000000)) 
    \FSM_sequential_state_current[2]_i_2__2 
       (.I0(state_current[2]),
        .I1(state_current[1]),
        .I2(byte_recieved),
        .I3(state_current[0]),
        .I4(ByteSentToMouse),
        .I5(remote_enable_current),
        .O(\FSM_sequential_state_current[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000BBBB33000303)) 
    \FSM_sequential_state_current[2]_i_3__0 
       (.I0(ready_remote),
        .I1(out[0]),
        .I2(\counter_current_reg[15] ),
        .I3(ready_microsoft),
        .I4(out[2]),
        .I5(out[1]),
        .O(\FSM_sequential_state_current_reg[0]_1 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[0]_i_1__1_n_0 ),
        .Q(state_current[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[1]_i_1__0_n_0 ),
        .Q(state_current[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state_current[2]_i_1__0_n_0 ),
        .Q(state_current[2]),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFF5F0008)) 
    \byte_to_send_current[4]_i_1__0 
       (.I0(remote_enable_current),
        .I1(state_current[0]),
        .I2(state_current[2]),
        .I3(state_current[1]),
        .I4(\byte_to_send_current_reg_n_0_[4] ),
        .O(\byte_to_send_current[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\byte_to_send_current[4]_i_1__0_n_0 ),
        .Q(\byte_to_send_current_reg_n_0_[4] ),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hFF20)) 
    complete_current_i_1__2
       (.I0(state_current[2]),
        .I1(state_current[1]),
        .I2(remote_enable_current),
        .I3(ready_remote),
        .O(complete_current_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    complete_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(complete_current_i_1__2_n_0),
        .Q(ready_remote),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    enable_read_current_i_1
       (.I0(state_current[2]),
        .I1(state_current[0]),
        .I2(state_current[1]),
        .I3(remote_enable_current),
        .I4(read_enable_remote),
        .O(enable_read_current_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    enable_read_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(enable_read_current_i_1_n_0),
        .Q(read_enable_remote),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hFFFF8880)) 
    read_data_enable_current_i_1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(ready_remote),
        .I3(out[2]),
        .I4(read_data_enable_current),
        .O(read_data_enable_current_reg));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    send_byte_current_i_1__0
       (.I0(state_current[0]),
        .I1(state_current[2]),
        .I2(state_current[1]),
        .I3(remote_enable_current),
        .I4(send_byte_remote),
        .O(send_byte_current_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(send_byte_current_i_1__0_n_0),
        .Q(send_byte_remote),
        .R(RESET_IBUF));
endmodule

module Reset_Mouse
   (read_enable_reset,
    ready_reset,
    out,
    reset_enable_current_reg,
    \FSM_onehot_state_current_reg[0]_0 ,
    \FSM_onehot_state_current_reg[6]_0 ,
    SendByteToMouse,
    \Curr_ByteToSend_reg[4] ,
    \Curr_ByteToSend_reg[4]_0 ,
    \Curr_TimeoutCounter_reg[0] ,
    \Curr_ByteToSend_reg[3] ,
    \Curr_ByteToSend_reg[2] ,
    RESET_IBUF,
    CLK_IBUF_BUFG,
    reset_enable_current,
    \FSM_sequential_state_current_reg[2] ,
    \counter_current_reg[15]_0 ,
    counter_current_reg,
    \counter_current_reg[10]_0 ,
    \counter_current_reg[15]_1 ,
    \counter_current_reg[20]_0 ,
    byte_recieved,
    ByteSentToMouse,
    \Curr_MSCodeShiftReg_reg[2] ,
    \FSM_sequential_state_current_reg[1] ,
    \FSM_sequential_state_current_reg[2]_0 ,
    \FSM_sequential_state_current_reg[1]_0 ,
    \FSM_sequential_state_current_reg[1]_1 ,
    \FSM_sequential_state_current_reg[0] ,
    success_current_reg,
    \FSM_sequential_state_current_reg[1]_2 ,
    \FSM_sequential_state_current_reg[1]_3 ,
    \FSM_sequential_state_current_reg[2]_1 ,
    \FSM_sequential_state_current_reg[2]_2 ,
    \FSM_sequential_state_current_reg[2]_3 ,
    \byte_to_send_current_reg[2] ,
    \byte_to_send_current_reg[0]_0 ,
    D);
  output read_enable_reset;
  output ready_reset;
  output [1:0]out;
  output reset_enable_current_reg;
  output \FSM_onehot_state_current_reg[0]_0 ;
  output \FSM_onehot_state_current_reg[6]_0 ;
  output SendByteToMouse;
  output [0:0]\Curr_ByteToSend_reg[4] ;
  output \Curr_ByteToSend_reg[4]_0 ;
  output \Curr_TimeoutCounter_reg[0] ;
  output \Curr_ByteToSend_reg[3] ;
  output \Curr_ByteToSend_reg[2] ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;
  input reset_enable_current;
  input [2:0]\FSM_sequential_state_current_reg[2] ;
  input \counter_current_reg[15]_0 ;
  input [1:0]counter_current_reg;
  input \counter_current_reg[10]_0 ;
  input \counter_current_reg[15]_1 ;
  input \counter_current_reg[20]_0 ;
  input byte_recieved;
  input ByteSentToMouse;
  input \Curr_MSCodeShiftReg_reg[2] ;
  input \FSM_sequential_state_current_reg[1] ;
  input \FSM_sequential_state_current_reg[2]_0 ;
  input \FSM_sequential_state_current_reg[1]_0 ;
  input \FSM_sequential_state_current_reg[1]_1 ;
  input \FSM_sequential_state_current_reg[0] ;
  input success_current_reg;
  input \FSM_sequential_state_current_reg[1]_2 ;
  input \FSM_sequential_state_current_reg[1]_3 ;
  input \FSM_sequential_state_current_reg[2]_1 ;
  input \FSM_sequential_state_current_reg[2]_2 ;
  input \FSM_sequential_state_current_reg[2]_3 ;
  input \byte_to_send_current_reg[2] ;
  input \byte_to_send_current_reg[0]_0 ;
  input [2:0]D;

  wire ByteSentToMouse;
  wire CLK_IBUF_BUFG;
  wire \Curr_ByteToSend[7]_i_7_n_0 ;
  wire \Curr_ByteToSend[7]_i_9_n_0 ;
  wire \Curr_ByteToSend_reg[2] ;
  wire \Curr_ByteToSend_reg[3] ;
  wire [0:0]\Curr_ByteToSend_reg[4] ;
  wire \Curr_ByteToSend_reg[4]_0 ;
  wire \Curr_MSCodeShiftReg_reg[2] ;
  wire \Curr_TimeoutCounter_reg[0] ;
  wire [2:0]D;
  wire \FSM_onehot_state_current[0]_i_1_n_0 ;
  wire \FSM_onehot_state_current[2]_i_1_n_0 ;
  wire \FSM_onehot_state_current[3]_i_1_n_0 ;
  wire \FSM_onehot_state_current[4]_i_1_n_0 ;
  wire \FSM_onehot_state_current[5]_i_1_n_0 ;
  wire \FSM_onehot_state_current[8]_i_1_n_0 ;
  wire \FSM_onehot_state_current[8]_i_3_n_0 ;
  wire \FSM_onehot_state_current_reg[0]_0 ;
  wire \FSM_onehot_state_current_reg[6]_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_current_reg_n_0_[8] ;
  wire \FSM_sequential_state_current_reg[0] ;
  wire \FSM_sequential_state_current_reg[1] ;
  wire \FSM_sequential_state_current_reg[1]_0 ;
  wire \FSM_sequential_state_current_reg[1]_1 ;
  wire \FSM_sequential_state_current_reg[1]_2 ;
  wire \FSM_sequential_state_current_reg[1]_3 ;
  wire [2:0]\FSM_sequential_state_current_reg[2] ;
  wire \FSM_sequential_state_current_reg[2]_0 ;
  wire \FSM_sequential_state_current_reg[2]_1 ;
  wire \FSM_sequential_state_current_reg[2]_2 ;
  wire \FSM_sequential_state_current_reg[2]_3 ;
  wire RESET_IBUF;
  wire SendByteToMouse;
  wire byte_recieved;
  wire \byte_to_send_current[0]_i_1_n_0 ;
  wire \byte_to_send_current_reg[0]_0 ;
  wire \byte_to_send_current_reg[2] ;
  wire \byte_to_send_current_reg_n_0_[0] ;
  wire complete_current_i_1__0_n_0;
  wire [23:0]counter_current;
  wire \counter_current[23]_i_10_n_0 ;
  wire \counter_current[23]_i_1_n_0 ;
  wire \counter_current[23]_i_3_n_0 ;
  wire \counter_current[23]_i_5_n_0 ;
  wire \counter_current[23]_i_9_n_0 ;
  wire [1:0]counter_current_reg;
  wire \counter_current_reg[10]_0 ;
  wire \counter_current_reg[12]_i_2_n_0 ;
  wire \counter_current_reg[15]_0 ;
  wire \counter_current_reg[15]_1 ;
  wire \counter_current_reg[16]_i_2_n_0 ;
  wire \counter_current_reg[20]_0 ;
  wire \counter_current_reg[20]_i_2_n_0 ;
  wire \counter_current_reg[4]_i_2_n_0 ;
  wire \counter_current_reg[8]_i_2_n_0 ;
  wire [23:0]counter_next;
  wire [23:1]counter_next0;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire read_enable_current_i_1__0_n_0;
  wire read_enable_next;
  wire read_enable_reset;
  wire ready_reset;
  wire reset_enable_current;
  wire reset_enable_current_reg;
  wire send_byte_current_i_1__2_n_0;
  wire send_byte_reset;
  wire success_current_reg;
  wire [2:0]\NLW_counter_current_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_current_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_current_reg[23]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_current_reg[8]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h4070)) 
    \Curr_ByteToSend[2]_i_3 
       (.I0(ready_reset),
        .I1(\FSM_sequential_state_current_reg[2] [0]),
        .I2(\byte_to_send_current_reg_n_0_[0] ),
        .I3(\counter_current_reg[15]_0 ),
        .O(\Curr_ByteToSend_reg[2] ));
  LUT6 #(
    .INIT(64'h4700440047334400)) 
    \Curr_ByteToSend[3]_i_4 
       (.I0(\byte_to_send_current_reg[0]_0 ),
        .I1(\FSM_sequential_state_current_reg[2] [1]),
        .I2(ready_reset),
        .I3(\FSM_sequential_state_current_reg[2] [0]),
        .I4(\byte_to_send_current_reg_n_0_[0] ),
        .I5(\counter_current_reg[15]_0 ),
        .O(\Curr_ByteToSend_reg[3] ));
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    \Curr_ByteToSend[4]_i_1 
       (.I0(\Curr_ByteToSend_reg[4]_0 ),
        .I1(\FSM_sequential_state_current_reg[1]_1 ),
        .I2(\FSM_sequential_state_current_reg[2] [2]),
        .I3(\FSM_sequential_state_current_reg[0] ),
        .I4(success_current_reg),
        .O(\Curr_ByteToSend_reg[4] ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBB88B8)) 
    \Curr_ByteToSend[7]_i_3 
       (.I0(\Curr_ByteToSend[7]_i_7_n_0 ),
        .I1(\FSM_sequential_state_current_reg[2] [0]),
        .I2(\FSM_sequential_state_current_reg[1] ),
        .I3(\Curr_ByteToSend[7]_i_9_n_0 ),
        .I4(\FSM_sequential_state_current_reg[2]_0 ),
        .I5(\FSM_sequential_state_current_reg[1]_0 ),
        .O(SendByteToMouse));
  LUT6 #(
    .INIT(64'h0388008803BB0088)) 
    \Curr_ByteToSend[7]_i_6 
       (.I0(\byte_to_send_current_reg[2] ),
        .I1(\FSM_sequential_state_current_reg[2] [1]),
        .I2(ready_reset),
        .I3(\FSM_sequential_state_current_reg[2] [0]),
        .I4(\byte_to_send_current_reg_n_0_[0] ),
        .I5(\counter_current_reg[15]_0 ),
        .O(\Curr_ByteToSend_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEFEEEEE)) 
    \Curr_ByteToSend[7]_i_7 
       (.I0(\FSM_sequential_state_current_reg[1]_2 ),
        .I1(\FSM_sequential_state_current_reg[1]_3 ),
        .I2(\FSM_sequential_state_current_reg[2]_1 ),
        .I3(ready_reset),
        .I4(send_byte_reset),
        .I5(\FSM_sequential_state_current_reg[2]_2 ),
        .O(\Curr_ByteToSend[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF555557FF)) 
    \Curr_ByteToSend[7]_i_9 
       (.I0(send_byte_reset),
        .I1(counter_current_reg[0]),
        .I2(\counter_current_reg[10]_0 ),
        .I3(counter_current_reg[1]),
        .I4(\counter_current_reg[15]_1 ),
        .I5(\counter_current_reg[20]_0 ),
        .O(\Curr_ByteToSend[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h11100000)) 
    \FSM_onehot_state_current[0]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\FSM_onehot_state_current_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_current_reg[0]_0 ),
        .O(\FSM_onehot_state_current[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state_current[2]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[0] ),
        .O(\FSM_onehot_state_current[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202030202)) 
    \FSM_onehot_state_current[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I5(\Curr_MSCodeShiftReg_reg[2] ),
        .O(\FSM_onehot_state_current[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state_current[4]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .O(\FSM_onehot_state_current[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_onehot_state_current[5]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\Curr_MSCodeShiftReg_reg[2] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_current_reg_n_0_[2] ),
        .O(\FSM_onehot_state_current[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_state_current[6]_i_2 
       (.I0(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I5(out[0]),
        .O(\FSM_onehot_state_current_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \FSM_onehot_state_current[8]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I4(reset_enable_current),
        .I5(\FSM_onehot_state_current[8]_i_3_n_0 ),
        .O(\FSM_onehot_state_current[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_state_current[8]_i_3 
       (.I0(read_enable_next),
        .I1(byte_recieved),
        .I2(ByteSentToMouse),
        .I3(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I5(\counter_current[23]_i_3_n_0 ),
        .O(\FSM_onehot_state_current[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state_current[8]_i_6 
       (.I0(\FSM_onehot_state_current_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(\FSM_onehot_state_current_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state_current[8]_i_8 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .O(read_enable_next));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[0] ),
        .S(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_current_reg_n_0_[1] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[2] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[3] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_current_reg_n_0_[4] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(\FSM_onehot_state_current[5]_i_1_n_0 ),
        .Q(out[0]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(D[0]),
        .Q(out[1]),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(D[1]),
        .Q(\FSM_onehot_state_current_reg_n_0_[7] ),
        .R(RESET_IBUF));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_current_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\FSM_onehot_state_current[8]_i_1_n_0 ),
        .D(D[2]),
        .Q(\FSM_onehot_state_current_reg_n_0_[8] ),
        .R(RESET_IBUF));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    \FSM_sequential_Curr_State[2]_i_19 
       (.I0(\FSM_sequential_state_current_reg[2]_3 ),
        .I1(read_enable_reset),
        .I2(ready_reset),
        .I3(\FSM_sequential_state_current_reg[2] [2]),
        .I4(\FSM_sequential_state_current_reg[2] [1]),
        .O(\Curr_TimeoutCounter_reg[0] ));
  LUT5 #(
    .INIT(32'hDDDF8888)) 
    \byte_to_send_current[0]_i_1 
       (.I0(reset_enable_current),
        .I1(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_current_reg_n_0_[8] ),
        .I4(\byte_to_send_current_reg_n_0_[0] ),
        .O(\byte_to_send_current[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_to_send_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\byte_to_send_current[0]_i_1_n_0 ),
        .Q(\byte_to_send_current_reg_n_0_[0] ),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'hFFA8)) 
    complete_current_i_1__0
       (.I0(reset_enable_current),
        .I1(\FSM_onehot_state_current_reg_n_0_[8] ),
        .I2(\FSM_onehot_state_current_reg_n_0_[7] ),
        .I3(ready_reset),
        .O(complete_current_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    complete_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(complete_current_i_1__0_n_0),
        .Q(ready_reset),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'h02)) 
    \counter_current[0]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_current[0]),
        .O(counter_next[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[10]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[10]),
        .O(counter_next[10]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[11]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[11]),
        .O(counter_next[11]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[12]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[12]),
        .O(counter_next[12]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[13]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[13]),
        .O(counter_next[13]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[14]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[14]),
        .O(counter_next[14]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[15]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[15]),
        .O(counter_next[15]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[16]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[16]),
        .O(counter_next[16]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[17]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[17]),
        .O(counter_next[17]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[18]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[18]),
        .O(counter_next[18]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[19]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[19]),
        .O(counter_next[19]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[1]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[1]),
        .O(counter_next[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[20]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[20]),
        .O(counter_next[20]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[21]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[21]),
        .O(counter_next[21]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[22]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[22]),
        .O(counter_next[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_current[23]_i_1 
       (.I0(reset_enable_current),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .O(\counter_current[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_current[23]_i_10 
       (.I0(counter_current[12]),
        .I1(counter_current[11]),
        .I2(counter_current[13]),
        .I3(counter_current[10]),
        .I4(counter_current[15]),
        .O(\counter_current[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[23]_i_2 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[23]),
        .O(counter_next[23]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_current[23]_i_3 
       (.I0(counter_current[20]),
        .I1(counter_current[22]),
        .I2(counter_current[21]),
        .I3(counter_current[23]),
        .I4(\counter_current[23]_i_5_n_0 ),
        .O(\counter_current[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \counter_current[23]_i_5 
       (.I0(\counter_current[23]_i_9_n_0 ),
        .I1(\counter_current[23]_i_10_n_0 ),
        .I2(counter_current[9]),
        .I3(counter_current[6]),
        .I4(counter_current[8]),
        .I5(counter_current[7]),
        .O(\counter_current[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \counter_current[23]_i_9 
       (.I0(counter_current[17]),
        .I1(counter_current[16]),
        .I2(counter_current[18]),
        .I3(counter_current[19]),
        .I4(counter_current[14]),
        .I5(counter_current[15]),
        .O(\counter_current[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[2]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[2]),
        .O(counter_next[2]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[3]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[3]),
        .O(counter_next[3]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[4]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[4]),
        .O(counter_next[4]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[5]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[5]),
        .O(counter_next[5]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[6]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[6]),
        .O(counter_next[6]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[7]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[7]),
        .O(counter_next[7]));
  LUT3 #(
    .INIT(8'h20)) 
    \counter_current[8]_i_1 
       (.I0(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I1(\counter_current[23]_i_3_n_0 ),
        .I2(counter_next0[8]),
        .O(counter_next[8]));
  LUT3 #(
    .INIT(8'h40)) 
    \counter_current[9]_i_1 
       (.I0(\counter_current[23]_i_3_n_0 ),
        .I1(\FSM_onehot_state_current_reg_n_0_[1] ),
        .I2(counter_next0[9]),
        .O(counter_next[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[0]),
        .Q(counter_current[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[10]),
        .Q(counter_current[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[11]),
        .Q(counter_current[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[12]),
        .Q(counter_current[12]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[12]_i_2 
       (.CI(\counter_current_reg[8]_i_2_n_0 ),
        .CO({\counter_current_reg[12]_i_2_n_0 ,\NLW_counter_current_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_next0[12:9]),
        .S(counter_current[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[13]),
        .Q(counter_current[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[14]),
        .Q(counter_current[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[15]),
        .Q(counter_current[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[16]),
        .Q(counter_current[16]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[16]_i_2 
       (.CI(\counter_current_reg[12]_i_2_n_0 ),
        .CO({\counter_current_reg[16]_i_2_n_0 ,\NLW_counter_current_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_next0[16:13]),
        .S(counter_current[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[17]),
        .Q(counter_current[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[18]),
        .Q(counter_current[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[19]),
        .Q(counter_current[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[1]),
        .Q(counter_current[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[20]),
        .Q(counter_current[20]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[20]_i_2 
       (.CI(\counter_current_reg[16]_i_2_n_0 ),
        .CO({\counter_current_reg[20]_i_2_n_0 ,\NLW_counter_current_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_next0[20:17]),
        .S(counter_current[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[21]),
        .Q(counter_current[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[22]),
        .Q(counter_current[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[23]),
        .Q(counter_current[23]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[23]_i_4 
       (.CI(\counter_current_reg[20]_i_2_n_0 ),
        .CO(\NLW_counter_current_reg[23]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_current_reg[23]_i_4_O_UNCONNECTED [3],counter_next0[23:21]}),
        .S({1'b0,counter_current[23:21]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[2]),
        .Q(counter_current[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[3]),
        .Q(counter_current[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[4]),
        .Q(counter_current[4]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_current_reg[4]_i_2_n_0 ,\NLW_counter_current_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter_current[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_next0[4:1]),
        .S(counter_current[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[5]),
        .Q(counter_current[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[6]),
        .Q(counter_current[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[7]),
        .Q(counter_current[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[8]),
        .Q(counter_current[8]),
        .R(RESET_IBUF));
  CARRY4 \counter_current_reg[8]_i_2 
       (.CI(\counter_current_reg[4]_i_2_n_0 ),
        .CO({\counter_current_reg[8]_i_2_n_0 ,\NLW_counter_current_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter_next0[8:5]),
        .S(counter_current[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_current_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(\counter_current[23]_i_1_n_0 ),
        .D(counter_next[9]),
        .Q(counter_current[9]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'hFDFDFFFF01010003)) 
    enable_current_i_1
       (.I0(ready_reset),
        .I1(\FSM_sequential_state_current_reg[2] [1]),
        .I2(\FSM_sequential_state_current_reg[2] [2]),
        .I3(\counter_current_reg[15]_0 ),
        .I4(\FSM_sequential_state_current_reg[2] [0]),
        .I5(reset_enable_current),
        .O(reset_enable_current_reg));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    read_enable_current_i_1__0
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\FSM_onehot_state_current_reg_n_0_[4] ),
        .I3(reset_enable_current),
        .I4(read_enable_reset),
        .O(read_enable_current_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_enable_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(read_enable_current_i_1__0_n_0),
        .Q(read_enable_reset),
        .R(RESET_IBUF));
  LUT3 #(
    .INIT(8'hB8)) 
    send_byte_current_i_1__2
       (.I0(\FSM_onehot_state_current_reg_n_0_[2] ),
        .I1(reset_enable_current),
        .I2(send_byte_reset),
        .O(send_byte_current_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    send_byte_current_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(send_byte_current_i_1__2_n_0),
        .Q(send_byte_reset),
        .R(RESET_IBUF));
endmodule

module Timer
   (Timer_reg,
    \mouse_memory_reg[0][0] ,
    \CurrBusAddr_reg[1] ,
    CLK_IBUF_BUFG,
    TransmitTimerValue,
    RESET_IBUF);
  output [7:0]Timer_reg;
  output \mouse_memory_reg[0][0] ;
  input \CurrBusAddr_reg[1] ;
  input CLK_IBUF_BUFG;
  input TransmitTimerValue;
  input RESET_IBUF;

  wire \0]_i_13_n_0 ;
  wire \0]_i_15_n_0 ;
  wire \0]_i_16_n_0 ;
  wire \0]_i_17_n_0 ;
  wire \0]_i_18_n_0 ;
  wire \0]_i_2_n_0 ;
  wire \0]_i_5_n_0 ;
  wire \0]_i_6_n_0 ;
  wire \0]_i_7_n_0 ;
  wire \0]_i_8_n_0 ;
  wire \0]_i_9_n_0 ;
  wire CLK_IBUF_BUFG;
  wire \CurrBusAddr_reg[1] ;
  wire [31:0]DownCounter;
  wire \DownCounter[31]_i_3_n_0 ;
  wire \DownCounter[31]_i_7_n_0 ;
  wire \DownCounter[31]_i_8_n_0 ;
  wire \DownCounter[31]_i_9_n_0 ;
  wire \DownCounter_reg[12]_i_2_n_0 ;
  wire \DownCounter_reg[16]_i_2_n_0 ;
  wire \DownCounter_reg[20]_i_2_n_0 ;
  wire \DownCounter_reg[24]_i_2_n_0 ;
  wire \DownCounter_reg[28]_i_2_n_0 ;
  wire \DownCounter_reg[4]_i_2_n_0 ;
  wire \DownCounter_reg[8]_i_2_n_0 ;
  wire \DownCounter_reg_n_0_[0] ;
  wire \DownCounter_reg_n_0_[10] ;
  wire \DownCounter_reg_n_0_[11] ;
  wire \DownCounter_reg_n_0_[12] ;
  wire \DownCounter_reg_n_0_[13] ;
  wire \DownCounter_reg_n_0_[14] ;
  wire \DownCounter_reg_n_0_[15] ;
  wire \DownCounter_reg_n_0_[16] ;
  wire \DownCounter_reg_n_0_[17] ;
  wire \DownCounter_reg_n_0_[18] ;
  wire \DownCounter_reg_n_0_[19] ;
  wire \DownCounter_reg_n_0_[1] ;
  wire \DownCounter_reg_n_0_[20] ;
  wire \DownCounter_reg_n_0_[21] ;
  wire \DownCounter_reg_n_0_[22] ;
  wire \DownCounter_reg_n_0_[23] ;
  wire \DownCounter_reg_n_0_[24] ;
  wire \DownCounter_reg_n_0_[25] ;
  wire \DownCounter_reg_n_0_[26] ;
  wire \DownCounter_reg_n_0_[27] ;
  wire \DownCounter_reg_n_0_[28] ;
  wire \DownCounter_reg_n_0_[29] ;
  wire \DownCounter_reg_n_0_[2] ;
  wire \DownCounter_reg_n_0_[30] ;
  wire \DownCounter_reg_n_0_[31] ;
  wire \DownCounter_reg_n_0_[3] ;
  wire \DownCounter_reg_n_0_[4] ;
  wire \DownCounter_reg_n_0_[5] ;
  wire \DownCounter_reg_n_0_[6] ;
  wire \DownCounter_reg_n_0_[7] ;
  wire \DownCounter_reg_n_0_[8] ;
  wire \DownCounter_reg_n_0_[9] ;
  wire RESET_IBUF;
  wire [7:0]Timer_reg;
  wire TransmitTimerValue;
  wire [31:1]data0;
  wire \mouse_memory_reg[0][0] ;
  wire \reg[0]_i_3_n_0 ;
  wire \reg[0]_i_3_n_4 ;
  wire \reg[0]_i_3_n_5 ;
  wire \reg[0]_i_3_n_6 ;
  wire \reg[0]_i_3_n_7 ;
  wire \reg[4]_i_1_n_4 ;
  wire \reg[4]_i_1_n_5 ;
  wire \reg[4]_i_1_n_6 ;
  wire \reg[4]_i_1_n_7 ;
  wire [2:0]\NLW_DownCounter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_DownCounter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_DownCounter_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_DownCounter_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_reg[0]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg[4]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \0]_i_13 
       (.I0(Timer_reg[0]),
        .O(\0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \0]_i_15 
       (.I0(\DownCounter_reg_n_0_[29] ),
        .I1(\DownCounter_reg_n_0_[20] ),
        .I2(\DownCounter_reg_n_0_[26] ),
        .I3(\DownCounter_reg_n_0_[24] ),
        .I4(\DownCounter_reg_n_0_[25] ),
        .I5(\DownCounter_reg_n_0_[12] ),
        .O(\0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \0]_i_16 
       (.I0(\DownCounter_reg_n_0_[27] ),
        .I1(\DownCounter_reg_n_0_[28] ),
        .I2(\DownCounter_reg_n_0_[19] ),
        .I3(\DownCounter_reg_n_0_[18] ),
        .O(\0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \0]_i_17 
       (.I0(\DownCounter_reg_n_0_[16] ),
        .I1(\DownCounter_reg_n_0_[17] ),
        .I2(\DownCounter_reg_n_0_[11] ),
        .I3(\DownCounter_reg_n_0_[10] ),
        .I4(\DownCounter_reg_n_0_[23] ),
        .I5(\DownCounter_reg_n_0_[22] ),
        .O(\0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \0]_i_18 
       (.I0(\DownCounter_reg_n_0_[30] ),
        .I1(\DownCounter_reg_n_0_[13] ),
        .I2(\DownCounter_reg_n_0_[5] ),
        .I3(\DownCounter_reg_n_0_[4] ),
        .I4(\DownCounter_reg_n_0_[28] ),
        .I5(\DownCounter_reg_n_0_[7] ),
        .O(\0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \0]_i_2 
       (.I0(\0]_i_5_n_0 ),
        .I1(\0]_i_6_n_0 ),
        .I2(\0]_i_7_n_0 ),
        .I3(\0]_i_8_n_0 ),
        .I4(\DownCounter_reg_n_0_[6] ),
        .I5(\0]_i_9_n_0 ),
        .O(\0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \0]_i_5 
       (.I0(\0]_i_15_n_0 ),
        .I1(\0]_i_16_n_0 ),
        .I2(\0]_i_17_n_0 ),
        .I3(\0]_i_18_n_0 ),
        .O(\0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000D0D000D)) 
    \0]_i_6 
       (.I0(\DownCounter_reg_n_0_[9] ),
        .I1(\DownCounter_reg_n_0_[10] ),
        .I2(\DownCounter_reg_n_0_[11] ),
        .I3(\DownCounter_reg_n_0_[3] ),
        .I4(\DownCounter_reg_n_0_[4] ),
        .I5(\DownCounter_reg_n_0_[5] ),
        .O(\0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \0]_i_7 
       (.I0(\DownCounter_reg_n_0_[14] ),
        .I1(\DownCounter_reg_n_0_[31] ),
        .I2(\DownCounter_reg_n_0_[8] ),
        .I3(\DownCounter_reg_n_0_[2] ),
        .I4(\DownCounter_reg_n_0_[1] ),
        .I5(\DownCounter_reg_n_0_[0] ),
        .O(\0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \0]_i_8 
       (.I0(\DownCounter_reg_n_0_[23] ),
        .I1(\DownCounter_reg_n_0_[22] ),
        .I2(\DownCounter_reg_n_0_[21] ),
        .O(\0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \0]_i_9 
       (.I0(\DownCounter_reg_n_0_[17] ),
        .I1(\DownCounter_reg_n_0_[16] ),
        .I2(\DownCounter_reg_n_0_[15] ),
        .O(\0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \DownCounter[0]_i_1 
       (.I0(\DownCounter_reg_n_0_[0] ),
        .O(DownCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[10]_i_1 
       (.I0(data0[10]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[11]_i_1 
       (.I0(data0[11]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[12]_i_1 
       (.I0(data0[12]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[13]_i_1 
       (.I0(data0[13]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[14]_i_1 
       (.I0(data0[14]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[15]_i_1 
       (.I0(data0[15]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[16]_i_1 
       (.I0(data0[16]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[17]_i_1 
       (.I0(data0[17]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[18]_i_1 
       (.I0(data0[18]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[19]_i_1 
       (.I0(data0[19]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[1]_i_1 
       (.I0(data0[1]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[20]_i_1 
       (.I0(data0[20]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[20]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[21]_i_1 
       (.I0(data0[21]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[22]_i_1 
       (.I0(data0[22]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[23]_i_1 
       (.I0(data0[23]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[24]_i_1 
       (.I0(data0[24]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[25]_i_1 
       (.I0(data0[25]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[25]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[26]_i_1 
       (.I0(data0[26]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[27]_i_1 
       (.I0(data0[27]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[27]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[28]_i_1 
       (.I0(data0[28]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[29]_i_1 
       (.I0(data0[29]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[2]_i_1 
       (.I0(data0[2]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[30]_i_1 
       (.I0(data0[30]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[30]));
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[31]_i_1 
       (.I0(data0[31]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[31]));
  LUT6 #(
    .INIT(64'hBA00000000000000)) 
    \DownCounter[31]_i_3 
       (.I0(\DownCounter_reg_n_0_[11] ),
        .I1(\DownCounter_reg_n_0_[10] ),
        .I2(\DownCounter_reg_n_0_[9] ),
        .I3(\0]_i_5_n_0 ),
        .I4(\DownCounter[31]_i_7_n_0 ),
        .I5(\DownCounter[31]_i_8_n_0 ),
        .O(\DownCounter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2F200F2)) 
    \DownCounter[31]_i_7 
       (.I0(\DownCounter_reg_n_0_[15] ),
        .I1(\DownCounter_reg_n_0_[16] ),
        .I2(\DownCounter_reg_n_0_[17] ),
        .I3(\DownCounter_reg_n_0_[21] ),
        .I4(\DownCounter_reg_n_0_[22] ),
        .I5(\DownCounter_reg_n_0_[23] ),
        .O(\DownCounter[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F2000000)) 
    \DownCounter[31]_i_8 
       (.I0(\DownCounter_reg_n_0_[3] ),
        .I1(\DownCounter_reg_n_0_[4] ),
        .I2(\DownCounter_reg_n_0_[5] ),
        .I3(\DownCounter[31]_i_9_n_0 ),
        .I4(\DownCounter_reg_n_0_[1] ),
        .I5(\DownCounter_reg_n_0_[31] ),
        .O(\DownCounter[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \DownCounter[31]_i_9 
       (.I0(\DownCounter_reg_n_0_[14] ),
        .I1(\DownCounter_reg_n_0_[6] ),
        .I2(\DownCounter_reg_n_0_[8] ),
        .I3(\DownCounter_reg_n_0_[7] ),
        .I4(\DownCounter_reg_n_0_[2] ),
        .I5(\DownCounter_reg_n_0_[0] ),
        .O(\DownCounter[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[3]_i_1 
       (.I0(data0[3]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[4]_i_1 
       (.I0(data0[4]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[5]_i_1 
       (.I0(data0[5]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[6]_i_1 
       (.I0(data0[6]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[7]_i_1 
       (.I0(data0[7]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[8]_i_1 
       (.I0(data0[8]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DownCounter[9]_i_1 
       (.I0(data0[9]),
        .I1(\DownCounter[31]_i_3_n_0 ),
        .O(DownCounter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[0]),
        .Q(\DownCounter_reg_n_0_[0] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[10]),
        .Q(\DownCounter_reg_n_0_[10] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[11]),
        .Q(\DownCounter_reg_n_0_[11] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[12]),
        .Q(\DownCounter_reg_n_0_[12] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[12]_i_2 
       (.CI(\DownCounter_reg[8]_i_2_n_0 ),
        .CO({\DownCounter_reg[12]_i_2_n_0 ,\NLW_DownCounter_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\DownCounter_reg_n_0_[12] ,\DownCounter_reg_n_0_[11] ,\DownCounter_reg_n_0_[10] ,\DownCounter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[13]),
        .Q(\DownCounter_reg_n_0_[13] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[14]),
        .Q(\DownCounter_reg_n_0_[14] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[15]),
        .Q(\DownCounter_reg_n_0_[15] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[16]),
        .Q(\DownCounter_reg_n_0_[16] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[16]_i_2 
       (.CI(\DownCounter_reg[12]_i_2_n_0 ),
        .CO({\DownCounter_reg[16]_i_2_n_0 ,\NLW_DownCounter_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\DownCounter_reg_n_0_[16] ,\DownCounter_reg_n_0_[15] ,\DownCounter_reg_n_0_[14] ,\DownCounter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[17]),
        .Q(\DownCounter_reg_n_0_[17] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[18]),
        .Q(\DownCounter_reg_n_0_[18] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[19]),
        .Q(\DownCounter_reg_n_0_[19] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[1]),
        .Q(\DownCounter_reg_n_0_[1] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[20]),
        .Q(\DownCounter_reg_n_0_[20] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[20]_i_2 
       (.CI(\DownCounter_reg[16]_i_2_n_0 ),
        .CO({\DownCounter_reg[20]_i_2_n_0 ,\NLW_DownCounter_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\DownCounter_reg_n_0_[20] ,\DownCounter_reg_n_0_[19] ,\DownCounter_reg_n_0_[18] ,\DownCounter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[21]),
        .Q(\DownCounter_reg_n_0_[21] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[22]),
        .Q(\DownCounter_reg_n_0_[22] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[23]),
        .Q(\DownCounter_reg_n_0_[23] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[24]),
        .Q(\DownCounter_reg_n_0_[24] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[24]_i_2 
       (.CI(\DownCounter_reg[20]_i_2_n_0 ),
        .CO({\DownCounter_reg[24]_i_2_n_0 ,\NLW_DownCounter_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\DownCounter_reg_n_0_[24] ,\DownCounter_reg_n_0_[23] ,\DownCounter_reg_n_0_[22] ,\DownCounter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[25]),
        .Q(\DownCounter_reg_n_0_[25] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[26]),
        .Q(\DownCounter_reg_n_0_[26] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[27]),
        .Q(\DownCounter_reg_n_0_[27] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[28]),
        .Q(\DownCounter_reg_n_0_[28] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[28]_i_2 
       (.CI(\DownCounter_reg[24]_i_2_n_0 ),
        .CO({\DownCounter_reg[28]_i_2_n_0 ,\NLW_DownCounter_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\DownCounter_reg_n_0_[28] ,\DownCounter_reg_n_0_[27] ,\DownCounter_reg_n_0_[26] ,\DownCounter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[29]),
        .Q(\DownCounter_reg_n_0_[29] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[2]),
        .Q(\DownCounter_reg_n_0_[2] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[30]),
        .Q(\DownCounter_reg_n_0_[30] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[31]),
        .Q(\DownCounter_reg_n_0_[31] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[31]_i_2 
       (.CI(\DownCounter_reg[28]_i_2_n_0 ),
        .CO(\NLW_DownCounter_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DownCounter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\DownCounter_reg_n_0_[31] ,\DownCounter_reg_n_0_[30] ,\DownCounter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[3]),
        .Q(\DownCounter_reg_n_0_[3] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[4]),
        .Q(\DownCounter_reg_n_0_[4] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\DownCounter_reg[4]_i_2_n_0 ,\NLW_DownCounter_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\DownCounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\DownCounter_reg_n_0_[4] ,\DownCounter_reg_n_0_[3] ,\DownCounter_reg_n_0_[2] ,\DownCounter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[5]),
        .Q(\DownCounter_reg_n_0_[5] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[6]),
        .Q(\DownCounter_reg_n_0_[6] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[7]),
        .Q(\DownCounter_reg_n_0_[7] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[8]),
        .Q(\DownCounter_reg_n_0_[8] ),
        .R(RESET_IBUF));
  CARRY4 \DownCounter_reg[8]_i_2 
       (.CI(\DownCounter_reg[4]_i_2_n_0 ),
        .CO({\DownCounter_reg[8]_i_2_n_0 ,\NLW_DownCounter_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\DownCounter_reg_n_0_[8] ,\DownCounter_reg_n_0_[7] ,\DownCounter_reg_n_0_[6] ,\DownCounter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \DownCounter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(DownCounter[9]),
        .Q(\DownCounter_reg_n_0_[9] ),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[0]_i_3_n_7 ),
        .Q(Timer_reg[0]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[0]_i_3_n_6 ),
        .Q(Timer_reg[1]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[0]_i_3_n_5 ),
        .Q(Timer_reg[2]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[0]_i_3_n_4 ),
        .Q(Timer_reg[3]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[4]_i_1_n_7 ),
        .Q(Timer_reg[4]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[4]_i_1_n_6 ),
        .Q(Timer_reg[5]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[4]_i_1_n_5 ),
        .Q(Timer_reg[6]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \Timer_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\0]_i_2_n_0 ),
        .D(\reg[4]_i_1_n_4 ),
        .Q(Timer_reg[7]),
        .R(\CurrBusAddr_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    TransmitTimerValue_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(TransmitTimerValue),
        .Q(\mouse_memory_reg[0][0] ),
        .R(1'b0));
  CARRY4 \reg[0]_i_3 
       (.CI(1'b0),
        .CO({\reg[0]_i_3_n_0 ,\NLW_reg[0]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\reg[0]_i_3_n_4 ,\reg[0]_i_3_n_5 ,\reg[0]_i_3_n_6 ,\reg[0]_i_3_n_7 }),
        .S({Timer_reg[3:1],\0]_i_13_n_0 }));
  CARRY4 \reg[4]_i_1 
       (.CI(\reg[0]_i_3_n_0 ),
        .CO(\NLW_reg[4]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\reg[4]_i_1_n_4 ,\reg[4]_i_1_n_5 ,\reg[4]_i_1_n_6 ,\reg[4]_i_1_n_7 }),
        .S(Timer_reg[7:4]));
endmodule

module Transceiver
   (DATA_MOUSE_OBUF,
    CLK_MOUSE_TRI,
    DATA_MOUSE_TRI,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    DATA_MOUSE_IBUF,
    D);
  output DATA_MOUSE_OBUF;
  output CLK_MOUSE_TRI;
  output DATA_MOUSE_TRI;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input DATA_MOUSE_IBUF;
  input [0:0]D;

  wire ByteSentToMouse;
  wire [7:0]ByteToSendToMouse;
  wire CLK_IBUF_BUFG;
  wire CLK_MOUSE_TRI;
  wire ClkMouseIn;
  wire ClkMouseInDly;
  wire ClkMouseIn_i_1_n_0;
  wire ClkMouseIn_i_2_n_0;
  wire ClkMouseIn_i_3_n_0;
  wire ClkMouseIn_i_4_n_0;
  wire [0:0]D;
  wire DATA_MOUSE_IBUF;
  wire DATA_MOUSE_OBUF;
  wire DATA_MOUSE_TRI;
  wire MSM_n_0;
  wire MSM_n_1;
  wire MSM_n_2;
  wire MSM_n_3;
  wire MSM_n_4;
  wire MSM_n_5;
  wire MSM_n_6;
  wire [7:0]MouseClkFilter;
  wire \MouseClkFilter[7]_i_1_n_0 ;
  wire Next_State0;
  wire Next_State0_0;
  wire RESET_IBUF;
  wire R_n_1;
  wire R_n_2;
  wire R_n_3;
  wire R_n_4;
  wire R_n_5;
  wire R_n_6;
  wire R_n_7;
  wire R_n_8;
  wire SendByteToMouse;
  wire byte_recieved;

  LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
    ClkMouseIn_i_1
       (.I0(ClkMouseIn),
        .I1(MouseClkFilter[3]),
        .I2(MouseClkFilter[4]),
        .I3(MouseClkFilter[7]),
        .I4(ClkMouseIn_i_2_n_0),
        .I5(ClkMouseIn_i_3_n_0),
        .O(ClkMouseIn_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    ClkMouseIn_i_2
       (.I0(MouseClkFilter[2]),
        .I1(MouseClkFilter[1]),
        .I2(MouseClkFilter[6]),
        .I3(ClkMouseIn),
        .I4(MouseClkFilter[5]),
        .I5(MouseClkFilter[0]),
        .O(ClkMouseIn_i_2_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAAE)) 
    ClkMouseIn_i_3
       (.I0(RESET_IBUF),
        .I1(ClkMouseIn_i_4_n_0),
        .I2(MouseClkFilter[4]),
        .I3(MouseClkFilter[3]),
        .I4(MouseClkFilter[7]),
        .O(ClkMouseIn_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ClkMouseIn_i_4
       (.I0(MouseClkFilter[2]),
        .I1(MouseClkFilter[1]),
        .I2(ClkMouseIn),
        .I3(MouseClkFilter[6]),
        .I4(MouseClkFilter[5]),
        .I5(MouseClkFilter[0]),
        .O(ClkMouseIn_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ClkMouseIn_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ClkMouseIn_i_1_n_0),
        .Q(ClkMouseIn),
        .R(1'b0));
  MouseMasterSM MSM
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\Curr_ByteToSend_reg[7] (ByteToSendToMouse),
        .\Curr_MSCodeShiftReg_reg[2] (R_n_1),
        .\Curr_MSCodeShiftReg_reg[2]_0 (R_n_2),
        .\Curr_MSCodeShiftReg_reg[3] (R_n_4),
        .\Curr_MSCodeShiftReg_reg[5] (R_n_3),
        .\Curr_TimeoutCounter_reg[0] (MSM_n_4),
        .D({R_n_6,R_n_7,R_n_8}),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .\FSM_onehot_state_current_reg[0] (MSM_n_5),
        .\FSM_onehot_state_current_reg[6] (MSM_n_6),
        .\FSM_sequential_state_current_reg[4] (R_n_5),
        .RESET_IBUF(RESET_IBUF),
        .SendByteToMouse(SendByteToMouse),
        .byte_recieved(byte_recieved),
        .out({MSM_n_0,MSM_n_1}),
        .read_enable_current_reg({MSM_n_2,MSM_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    \MouseClkFilter[7]_i_1 
       (.I0(RESET_IBUF),
        .O(\MouseClkFilter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(D),
        .Q(MouseClkFilter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[0]),
        .Q(MouseClkFilter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[1]),
        .Q(MouseClkFilter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[2]),
        .Q(MouseClkFilter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[3]),
        .Q(MouseClkFilter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[4]),
        .Q(MouseClkFilter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[5]),
        .Q(MouseClkFilter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MouseClkFilter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(\MouseClkFilter[7]_i_1_n_0 ),
        .D(MouseClkFilter[6]),
        .Q(MouseClkFilter[7]),
        .R(1'b0));
  MouseReceiver R
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .ClkMouseIn(ClkMouseIn),
        .ClkMouseInDly(ClkMouseInDly),
        .Curr_MouseDataOut_reg(MSM_n_4),
        .D({R_n_6,R_n_7,R_n_8}),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .\FSM_onehot_state_current_reg[3] (MSM_n_5),
        .\FSM_onehot_state_current_reg[4] (MSM_n_6),
        .\FSM_onehot_state_current_reg[5] (R_n_1),
        .\FSM_onehot_state_current_reg[6] ({MSM_n_2,MSM_n_3}),
        .\FSM_sequential_state_current_reg[0] (R_n_2),
        .\FSM_sequential_state_current_reg[0]_0 (R_n_3),
        .\FSM_sequential_state_current_reg[0]_1 (R_n_5),
        .\FSM_sequential_state_current_reg[3] (R_n_4),
        .Next_State0(Next_State0),
        .Next_State0_0(Next_State0_0),
        .RESET_IBUF(RESET_IBUF),
        .byte_recieved(byte_recieved),
        .out({MSM_n_0,MSM_n_1}));
  MouseTransmitter T
       (.ByteSentToMouse(ByteSentToMouse),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CLK_MOUSE_TRI(CLK_MOUSE_TRI),
        .ClkMouseIn(ClkMouseIn),
        .ClkMouseInDly(ClkMouseInDly),
        .Curr_MouseDataOut_reg_0(MSM_n_4),
        .D(ByteToSendToMouse),
        .DATA_MOUSE_IBUF(DATA_MOUSE_IBUF),
        .DATA_MOUSE_OBUF(DATA_MOUSE_OBUF),
        .DATA_MOUSE_TRI(DATA_MOUSE_TRI),
        .Next_State0(Next_State0_0),
        .Next_State0_0(Next_State0),
        .RESET_IBUF(RESET_IBUF),
        .SendByteToMouse(SendByteToMouse));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
