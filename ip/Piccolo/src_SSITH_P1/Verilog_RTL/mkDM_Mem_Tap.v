//
// Generated by Bluespec Compiler, version 2021.07-14-g5f987061 (build 5f987061)
//
// On Tue Nov 16 19:45:24 GMT 2021
//
//
// Ports:
// Name                         I/O  size props
// slave_aw_canPut                O     1 reg
// RDY_slave_aw_put               O     1 reg
// slave_w_canPut                 O     1 reg
// RDY_slave_w_put                O     1 reg
// slave_b_canPeek                O     1 reg
// slave_b_peek                   O     6 reg
// RDY_slave_b_peek               O     1 reg
// RDY_slave_b_drop               O     1 reg
// slave_ar_canPut                O     1 reg
// RDY_slave_ar_put               O     1 reg
// slave_r_canPeek                O     1 reg
// slave_r_peek                   O    72 reg
// RDY_slave_r_peek               O     1 reg
// RDY_slave_r_drop               O     1 reg
// master_aw_canPeek              O     1 reg
// master_aw_peek                 O    97 reg
// RDY_master_aw_peek             O     1 reg
// RDY_master_aw_drop             O     1 reg
// master_w_canPeek               O     1 reg
// master_w_peek                  O    74 reg
// RDY_master_w_peek              O     1 reg
// RDY_master_w_drop              O     1 reg
// master_b_canPut                O     1 reg
// RDY_master_b_put               O     1 reg
// master_ar_canPeek              O     1 reg
// master_ar_peek                 O    97 reg
// RDY_master_ar_peek             O     1 reg
// RDY_master_ar_drop             O     1 reg
// master_r_canPut                O     1 reg
// RDY_master_r_put               O     1 reg
// trace_data_out_get             O   235 reg
// RDY_trace_data_out_get         O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// slave_aw_put_val               I    97 reg
// slave_w_put_val                I    74 reg
// slave_ar_put_val               I    97 reg
// master_b_put_val               I     6 reg
// master_r_put_val               I    72 reg
// EN_slave_aw_put                I     1
// EN_slave_w_put                 I     1
// EN_slave_b_drop                I     1
// EN_slave_ar_put                I     1
// EN_slave_r_drop                I     1
// EN_master_aw_drop              I     1
// EN_master_w_drop               I     1
// EN_master_b_put                I     1
// EN_master_ar_drop              I     1
// EN_master_r_put                I     1
// EN_trace_data_out_get          I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkDM_Mem_Tap(CLK,
		    RST_N,

		    slave_aw_canPut,

		    slave_aw_put_val,
		    EN_slave_aw_put,
		    RDY_slave_aw_put,

		    slave_w_canPut,

		    slave_w_put_val,
		    EN_slave_w_put,
		    RDY_slave_w_put,

		    slave_b_canPeek,

		    slave_b_peek,
		    RDY_slave_b_peek,

		    EN_slave_b_drop,
		    RDY_slave_b_drop,

		    slave_ar_canPut,

		    slave_ar_put_val,
		    EN_slave_ar_put,
		    RDY_slave_ar_put,

		    slave_r_canPeek,

		    slave_r_peek,
		    RDY_slave_r_peek,

		    EN_slave_r_drop,
		    RDY_slave_r_drop,

		    master_aw_canPeek,

		    master_aw_peek,
		    RDY_master_aw_peek,

		    EN_master_aw_drop,
		    RDY_master_aw_drop,

		    master_w_canPeek,

		    master_w_peek,
		    RDY_master_w_peek,

		    EN_master_w_drop,
		    RDY_master_w_drop,

		    master_b_canPut,

		    master_b_put_val,
		    EN_master_b_put,
		    RDY_master_b_put,

		    master_ar_canPeek,

		    master_ar_peek,
		    RDY_master_ar_peek,

		    EN_master_ar_drop,
		    RDY_master_ar_drop,

		    master_r_canPut,

		    master_r_put_val,
		    EN_master_r_put,
		    RDY_master_r_put,

		    EN_trace_data_out_get,
		    trace_data_out_get,
		    RDY_trace_data_out_get);
  input  CLK;
  input  RST_N;

  // value method slave_aw_canPut
  output slave_aw_canPut;

  // action method slave_aw_put
  input  [96 : 0] slave_aw_put_val;
  input  EN_slave_aw_put;
  output RDY_slave_aw_put;

  // value method slave_w_canPut
  output slave_w_canPut;

  // action method slave_w_put
  input  [73 : 0] slave_w_put_val;
  input  EN_slave_w_put;
  output RDY_slave_w_put;

  // value method slave_b_canPeek
  output slave_b_canPeek;

  // value method slave_b_peek
  output [5 : 0] slave_b_peek;
  output RDY_slave_b_peek;

  // action method slave_b_drop
  input  EN_slave_b_drop;
  output RDY_slave_b_drop;

  // value method slave_ar_canPut
  output slave_ar_canPut;

  // action method slave_ar_put
  input  [96 : 0] slave_ar_put_val;
  input  EN_slave_ar_put;
  output RDY_slave_ar_put;

  // value method slave_r_canPeek
  output slave_r_canPeek;

  // value method slave_r_peek
  output [71 : 0] slave_r_peek;
  output RDY_slave_r_peek;

  // action method slave_r_drop
  input  EN_slave_r_drop;
  output RDY_slave_r_drop;

  // value method master_aw_canPeek
  output master_aw_canPeek;

  // value method master_aw_peek
  output [96 : 0] master_aw_peek;
  output RDY_master_aw_peek;

  // action method master_aw_drop
  input  EN_master_aw_drop;
  output RDY_master_aw_drop;

  // value method master_w_canPeek
  output master_w_canPeek;

  // value method master_w_peek
  output [73 : 0] master_w_peek;
  output RDY_master_w_peek;

  // action method master_w_drop
  input  EN_master_w_drop;
  output RDY_master_w_drop;

  // value method master_b_canPut
  output master_b_canPut;

  // action method master_b_put
  input  [5 : 0] master_b_put_val;
  input  EN_master_b_put;
  output RDY_master_b_put;

  // value method master_ar_canPeek
  output master_ar_canPeek;

  // value method master_ar_peek
  output [96 : 0] master_ar_peek;
  output RDY_master_ar_peek;

  // action method master_ar_drop
  input  EN_master_ar_drop;
  output RDY_master_ar_drop;

  // value method master_r_canPut
  output master_r_canPut;

  // action method master_r_put
  input  [71 : 0] master_r_put_val;
  input  EN_master_r_put;
  output RDY_master_r_put;

  // actionvalue method trace_data_out_get
  input  EN_trace_data_out_get;
  output [234 : 0] trace_data_out_get;
  output RDY_trace_data_out_get;

  // signals for module outputs
  wire [234 : 0] trace_data_out_get;
  wire [96 : 0] master_ar_peek, master_aw_peek;
  wire [73 : 0] master_w_peek;
  wire [71 : 0] slave_r_peek;
  wire [5 : 0] slave_b_peek;
  wire RDY_master_ar_drop,
       RDY_master_ar_peek,
       RDY_master_aw_drop,
       RDY_master_aw_peek,
       RDY_master_b_put,
       RDY_master_r_put,
       RDY_master_w_drop,
       RDY_master_w_peek,
       RDY_slave_ar_put,
       RDY_slave_aw_put,
       RDY_slave_b_drop,
       RDY_slave_b_peek,
       RDY_slave_r_drop,
       RDY_slave_r_peek,
       RDY_slave_w_put,
       RDY_trace_data_out_get,
       master_ar_canPeek,
       master_aw_canPeek,
       master_b_canPut,
       master_r_canPut,
       master_w_canPeek,
       slave_ar_canPut,
       slave_aw_canPut,
       slave_b_canPeek,
       slave_r_canPeek,
       slave_w_canPut;

  // ports of submodule f_trace_data
  wire [234 : 0] f_trace_data$D_IN, f_trace_data$D_OUT;
  wire f_trace_data$CLR,
       f_trace_data$DEQ,
       f_trace_data$EMPTY_N,
       f_trace_data$ENQ,
       f_trace_data$FULL_N;

  // ports of submodule masterPortShim_arff
  wire [96 : 0] masterPortShim_arff$D_IN, masterPortShim_arff$D_OUT;
  wire masterPortShim_arff$CLR,
       masterPortShim_arff$DEQ,
       masterPortShim_arff$EMPTY_N,
       masterPortShim_arff$ENQ,
       masterPortShim_arff$FULL_N;

  // ports of submodule masterPortShim_awff
  wire [96 : 0] masterPortShim_awff$D_IN, masterPortShim_awff$D_OUT;
  wire masterPortShim_awff$CLR,
       masterPortShim_awff$DEQ,
       masterPortShim_awff$EMPTY_N,
       masterPortShim_awff$ENQ,
       masterPortShim_awff$FULL_N;

  // ports of submodule masterPortShim_bff
  wire [5 : 0] masterPortShim_bff$D_IN, masterPortShim_bff$D_OUT;
  wire masterPortShim_bff$CLR,
       masterPortShim_bff$DEQ,
       masterPortShim_bff$EMPTY_N,
       masterPortShim_bff$ENQ,
       masterPortShim_bff$FULL_N;

  // ports of submodule masterPortShim_rff
  wire [71 : 0] masterPortShim_rff$D_IN, masterPortShim_rff$D_OUT;
  wire masterPortShim_rff$CLR,
       masterPortShim_rff$DEQ,
       masterPortShim_rff$EMPTY_N,
       masterPortShim_rff$ENQ,
       masterPortShim_rff$FULL_N;

  // ports of submodule masterPortShim_wff
  wire [73 : 0] masterPortShim_wff$D_IN, masterPortShim_wff$D_OUT;
  wire masterPortShim_wff$CLR,
       masterPortShim_wff$DEQ,
       masterPortShim_wff$EMPTY_N,
       masterPortShim_wff$ENQ,
       masterPortShim_wff$FULL_N;

  // ports of submodule slavePortShim_arff
  wire [96 : 0] slavePortShim_arff$D_IN, slavePortShim_arff$D_OUT;
  wire slavePortShim_arff$CLR,
       slavePortShim_arff$DEQ,
       slavePortShim_arff$EMPTY_N,
       slavePortShim_arff$ENQ,
       slavePortShim_arff$FULL_N;

  // ports of submodule slavePortShim_awff
  wire [96 : 0] slavePortShim_awff$D_IN, slavePortShim_awff$D_OUT;
  wire slavePortShim_awff$CLR,
       slavePortShim_awff$DEQ,
       slavePortShim_awff$EMPTY_N,
       slavePortShim_awff$ENQ,
       slavePortShim_awff$FULL_N;

  // ports of submodule slavePortShim_bff
  wire [5 : 0] slavePortShim_bff$D_IN, slavePortShim_bff$D_OUT;
  wire slavePortShim_bff$CLR,
       slavePortShim_bff$DEQ,
       slavePortShim_bff$EMPTY_N,
       slavePortShim_bff$ENQ,
       slavePortShim_bff$FULL_N;

  // ports of submodule slavePortShim_rff
  wire [71 : 0] slavePortShim_rff$D_IN, slavePortShim_rff$D_OUT;
  wire slavePortShim_rff$CLR,
       slavePortShim_rff$DEQ,
       slavePortShim_rff$EMPTY_N,
       slavePortShim_rff$ENQ,
       slavePortShim_rff$FULL_N;

  // ports of submodule slavePortShim_wff
  wire [73 : 0] slavePortShim_wff$D_IN, slavePortShim_wff$D_OUT;
  wire slavePortShim_wff$CLR,
       slavePortShim_wff$DEQ,
       slavePortShim_wff$EMPTY_N,
       slavePortShim_wff$ENQ,
       slavePortShim_wff$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_connect,
       CAN_FIRE_RL_connect_1,
       CAN_FIRE_RL_connect_2,
       CAN_FIRE_RL_ug_snk_1_doPut,
       CAN_FIRE_RL_ug_snk_1_setCanPut,
       CAN_FIRE_RL_ug_snk_1_warnDoPut,
       CAN_FIRE_RL_ug_snk_2_doPut,
       CAN_FIRE_RL_ug_snk_2_setCanPut,
       CAN_FIRE_RL_ug_snk_2_warnDoPut,
       CAN_FIRE_RL_ug_snk_doPut,
       CAN_FIRE_RL_ug_snk_setCanPut,
       CAN_FIRE_RL_ug_snk_warnDoPut,
       CAN_FIRE_RL_ug_src_1_doDrop,
       CAN_FIRE_RL_ug_src_1_setCanPeek,
       CAN_FIRE_RL_ug_src_1_setPeek,
       CAN_FIRE_RL_ug_src_1_warnDoDrop,
       CAN_FIRE_RL_ug_src_2_doDrop,
       CAN_FIRE_RL_ug_src_2_setCanPeek,
       CAN_FIRE_RL_ug_src_2_setPeek,
       CAN_FIRE_RL_ug_src_2_warnDoDrop,
       CAN_FIRE_RL_ug_src_doDrop,
       CAN_FIRE_RL_ug_src_setCanPeek,
       CAN_FIRE_RL_ug_src_setPeek,
       CAN_FIRE_RL_ug_src_warnDoDrop,
       CAN_FIRE_RL_write_reqs,
       CAN_FIRE_master_ar_drop,
       CAN_FIRE_master_aw_drop,
       CAN_FIRE_master_b_put,
       CAN_FIRE_master_r_put,
       CAN_FIRE_master_w_drop,
       CAN_FIRE_slave_ar_put,
       CAN_FIRE_slave_aw_put,
       CAN_FIRE_slave_b_drop,
       CAN_FIRE_slave_r_drop,
       CAN_FIRE_slave_w_put,
       CAN_FIRE_trace_data_out_get,
       WILL_FIRE_RL_connect,
       WILL_FIRE_RL_connect_1,
       WILL_FIRE_RL_connect_2,
       WILL_FIRE_RL_ug_snk_1_doPut,
       WILL_FIRE_RL_ug_snk_1_setCanPut,
       WILL_FIRE_RL_ug_snk_1_warnDoPut,
       WILL_FIRE_RL_ug_snk_2_doPut,
       WILL_FIRE_RL_ug_snk_2_setCanPut,
       WILL_FIRE_RL_ug_snk_2_warnDoPut,
       WILL_FIRE_RL_ug_snk_doPut,
       WILL_FIRE_RL_ug_snk_setCanPut,
       WILL_FIRE_RL_ug_snk_warnDoPut,
       WILL_FIRE_RL_ug_src_1_doDrop,
       WILL_FIRE_RL_ug_src_1_setCanPeek,
       WILL_FIRE_RL_ug_src_1_setPeek,
       WILL_FIRE_RL_ug_src_1_warnDoDrop,
       WILL_FIRE_RL_ug_src_2_doDrop,
       WILL_FIRE_RL_ug_src_2_setCanPeek,
       WILL_FIRE_RL_ug_src_2_setPeek,
       WILL_FIRE_RL_ug_src_2_warnDoDrop,
       WILL_FIRE_RL_ug_src_doDrop,
       WILL_FIRE_RL_ug_src_setCanPeek,
       WILL_FIRE_RL_ug_src_setPeek,
       WILL_FIRE_RL_ug_src_warnDoDrop,
       WILL_FIRE_RL_write_reqs,
       WILL_FIRE_master_ar_drop,
       WILL_FIRE_master_aw_drop,
       WILL_FIRE_master_b_put,
       WILL_FIRE_master_r_put,
       WILL_FIRE_master_w_drop,
       WILL_FIRE_slave_ar_put,
       WILL_FIRE_slave_aw_put,
       WILL_FIRE_slave_b_drop,
       WILL_FIRE_slave_r_drop,
       WILL_FIRE_slave_w_put,
       WILL_FIRE_trace_data_out_get;

  // remaining internal signals
  reg [63 : 0] y__h1938;
  reg [31 : 0] CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1;
  reg [2 : 0] sz__h1686;
  wire [63 : 0] stval__h1675, x__h1937;
  wire [31 : 0] x__h1840;
  wire slavePortShim_wff_i_notEmpty_AND_masterPortShi_ETC___d10;

  // value method slave_aw_canPut
  assign slave_aw_canPut = slavePortShim_awff$FULL_N ;

  // action method slave_aw_put
  assign RDY_slave_aw_put = slavePortShim_awff$FULL_N ;
  assign CAN_FIRE_slave_aw_put = slavePortShim_awff$FULL_N ;
  assign WILL_FIRE_slave_aw_put = EN_slave_aw_put ;

  // value method slave_w_canPut
  assign slave_w_canPut = slavePortShim_wff$FULL_N ;

  // action method slave_w_put
  assign RDY_slave_w_put = slavePortShim_wff$FULL_N ;
  assign CAN_FIRE_slave_w_put = slavePortShim_wff$FULL_N ;
  assign WILL_FIRE_slave_w_put = EN_slave_w_put ;

  // value method slave_b_canPeek
  assign slave_b_canPeek = slavePortShim_bff$EMPTY_N ;

  // value method slave_b_peek
  assign slave_b_peek = slavePortShim_bff$D_OUT ;
  assign RDY_slave_b_peek = slavePortShim_bff$EMPTY_N ;

  // action method slave_b_drop
  assign RDY_slave_b_drop = slavePortShim_bff$EMPTY_N ;
  assign CAN_FIRE_slave_b_drop = slavePortShim_bff$EMPTY_N ;
  assign WILL_FIRE_slave_b_drop = EN_slave_b_drop ;

  // value method slave_ar_canPut
  assign slave_ar_canPut = slavePortShim_arff$FULL_N ;

  // action method slave_ar_put
  assign RDY_slave_ar_put = slavePortShim_arff$FULL_N ;
  assign CAN_FIRE_slave_ar_put = slavePortShim_arff$FULL_N ;
  assign WILL_FIRE_slave_ar_put = EN_slave_ar_put ;

  // value method slave_r_canPeek
  assign slave_r_canPeek = slavePortShim_rff$EMPTY_N ;

  // value method slave_r_peek
  assign slave_r_peek = slavePortShim_rff$D_OUT ;
  assign RDY_slave_r_peek = slavePortShim_rff$EMPTY_N ;

  // action method slave_r_drop
  assign RDY_slave_r_drop = slavePortShim_rff$EMPTY_N ;
  assign CAN_FIRE_slave_r_drop = slavePortShim_rff$EMPTY_N ;
  assign WILL_FIRE_slave_r_drop = EN_slave_r_drop ;

  // value method master_aw_canPeek
  assign master_aw_canPeek = masterPortShim_awff$EMPTY_N ;

  // value method master_aw_peek
  assign master_aw_peek = masterPortShim_awff$D_OUT ;
  assign RDY_master_aw_peek = masterPortShim_awff$EMPTY_N ;

  // action method master_aw_drop
  assign RDY_master_aw_drop = masterPortShim_awff$EMPTY_N ;
  assign CAN_FIRE_master_aw_drop = masterPortShim_awff$EMPTY_N ;
  assign WILL_FIRE_master_aw_drop = EN_master_aw_drop ;

  // value method master_w_canPeek
  assign master_w_canPeek = masterPortShim_wff$EMPTY_N ;

  // value method master_w_peek
  assign master_w_peek = masterPortShim_wff$D_OUT ;
  assign RDY_master_w_peek = masterPortShim_wff$EMPTY_N ;

  // action method master_w_drop
  assign RDY_master_w_drop = masterPortShim_wff$EMPTY_N ;
  assign CAN_FIRE_master_w_drop = masterPortShim_wff$EMPTY_N ;
  assign WILL_FIRE_master_w_drop = EN_master_w_drop ;

  // value method master_b_canPut
  assign master_b_canPut = masterPortShim_bff$FULL_N ;

  // action method master_b_put
  assign RDY_master_b_put = masterPortShim_bff$FULL_N ;
  assign CAN_FIRE_master_b_put = masterPortShim_bff$FULL_N ;
  assign WILL_FIRE_master_b_put = EN_master_b_put ;

  // value method master_ar_canPeek
  assign master_ar_canPeek = masterPortShim_arff$EMPTY_N ;

  // value method master_ar_peek
  assign master_ar_peek = masterPortShim_arff$D_OUT ;
  assign RDY_master_ar_peek = masterPortShim_arff$EMPTY_N ;

  // action method master_ar_drop
  assign RDY_master_ar_drop = masterPortShim_arff$EMPTY_N ;
  assign CAN_FIRE_master_ar_drop = masterPortShim_arff$EMPTY_N ;
  assign WILL_FIRE_master_ar_drop = EN_master_ar_drop ;

  // value method master_r_canPut
  assign master_r_canPut = masterPortShim_rff$FULL_N ;

  // action method master_r_put
  assign RDY_master_r_put = masterPortShim_rff$FULL_N ;
  assign CAN_FIRE_master_r_put = masterPortShim_rff$FULL_N ;
  assign WILL_FIRE_master_r_put = EN_master_r_put ;

  // actionvalue method trace_data_out_get
  assign trace_data_out_get = f_trace_data$D_OUT ;
  assign RDY_trace_data_out_get = f_trace_data$EMPTY_N ;
  assign CAN_FIRE_trace_data_out_get = f_trace_data$EMPTY_N ;
  assign WILL_FIRE_trace_data_out_get = EN_trace_data_out_get ;

  // submodule f_trace_data
  FIFO2 #(.width(32'd235), .guarded(1'd1)) f_trace_data(.RST(RST_N),
							.CLK(CLK),
							.D_IN(f_trace_data$D_IN),
							.ENQ(f_trace_data$ENQ),
							.DEQ(f_trace_data$DEQ),
							.CLR(f_trace_data$CLR),
							.D_OUT(f_trace_data$D_OUT),
							.FULL_N(f_trace_data$FULL_N),
							.EMPTY_N(f_trace_data$EMPTY_N));

  // submodule masterPortShim_arff
  FIFO2 #(.width(32'd97), .guarded(1'd1)) masterPortShim_arff(.RST(RST_N),
							      .CLK(CLK),
							      .D_IN(masterPortShim_arff$D_IN),
							      .ENQ(masterPortShim_arff$ENQ),
							      .DEQ(masterPortShim_arff$DEQ),
							      .CLR(masterPortShim_arff$CLR),
							      .D_OUT(masterPortShim_arff$D_OUT),
							      .FULL_N(masterPortShim_arff$FULL_N),
							      .EMPTY_N(masterPortShim_arff$EMPTY_N));

  // submodule masterPortShim_awff
  FIFO2 #(.width(32'd97), .guarded(1'd1)) masterPortShim_awff(.RST(RST_N),
							      .CLK(CLK),
							      .D_IN(masterPortShim_awff$D_IN),
							      .ENQ(masterPortShim_awff$ENQ),
							      .DEQ(masterPortShim_awff$DEQ),
							      .CLR(masterPortShim_awff$CLR),
							      .D_OUT(masterPortShim_awff$D_OUT),
							      .FULL_N(masterPortShim_awff$FULL_N),
							      .EMPTY_N(masterPortShim_awff$EMPTY_N));

  // submodule masterPortShim_bff
  FIFO2 #(.width(32'd6), .guarded(1'd1)) masterPortShim_bff(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(masterPortShim_bff$D_IN),
							    .ENQ(masterPortShim_bff$ENQ),
							    .DEQ(masterPortShim_bff$DEQ),
							    .CLR(masterPortShim_bff$CLR),
							    .D_OUT(masterPortShim_bff$D_OUT),
							    .FULL_N(masterPortShim_bff$FULL_N),
							    .EMPTY_N(masterPortShim_bff$EMPTY_N));

  // submodule masterPortShim_rff
  FIFO2 #(.width(32'd72), .guarded(1'd1)) masterPortShim_rff(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(masterPortShim_rff$D_IN),
							     .ENQ(masterPortShim_rff$ENQ),
							     .DEQ(masterPortShim_rff$DEQ),
							     .CLR(masterPortShim_rff$CLR),
							     .D_OUT(masterPortShim_rff$D_OUT),
							     .FULL_N(masterPortShim_rff$FULL_N),
							     .EMPTY_N(masterPortShim_rff$EMPTY_N));

  // submodule masterPortShim_wff
  FIFO2 #(.width(32'd74), .guarded(1'd1)) masterPortShim_wff(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(masterPortShim_wff$D_IN),
							     .ENQ(masterPortShim_wff$ENQ),
							     .DEQ(masterPortShim_wff$DEQ),
							     .CLR(masterPortShim_wff$CLR),
							     .D_OUT(masterPortShim_wff$D_OUT),
							     .FULL_N(masterPortShim_wff$FULL_N),
							     .EMPTY_N(masterPortShim_wff$EMPTY_N));

  // submodule slavePortShim_arff
  FIFO2 #(.width(32'd97), .guarded(1'd1)) slavePortShim_arff(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(slavePortShim_arff$D_IN),
							     .ENQ(slavePortShim_arff$ENQ),
							     .DEQ(slavePortShim_arff$DEQ),
							     .CLR(slavePortShim_arff$CLR),
							     .D_OUT(slavePortShim_arff$D_OUT),
							     .FULL_N(slavePortShim_arff$FULL_N),
							     .EMPTY_N(slavePortShim_arff$EMPTY_N));

  // submodule slavePortShim_awff
  FIFO2 #(.width(32'd97), .guarded(1'd1)) slavePortShim_awff(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(slavePortShim_awff$D_IN),
							     .ENQ(slavePortShim_awff$ENQ),
							     .DEQ(slavePortShim_awff$DEQ),
							     .CLR(slavePortShim_awff$CLR),
							     .D_OUT(slavePortShim_awff$D_OUT),
							     .FULL_N(slavePortShim_awff$FULL_N),
							     .EMPTY_N(slavePortShim_awff$EMPTY_N));

  // submodule slavePortShim_bff
  FIFO2 #(.width(32'd6), .guarded(1'd1)) slavePortShim_bff(.RST(RST_N),
							   .CLK(CLK),
							   .D_IN(slavePortShim_bff$D_IN),
							   .ENQ(slavePortShim_bff$ENQ),
							   .DEQ(slavePortShim_bff$DEQ),
							   .CLR(slavePortShim_bff$CLR),
							   .D_OUT(slavePortShim_bff$D_OUT),
							   .FULL_N(slavePortShim_bff$FULL_N),
							   .EMPTY_N(slavePortShim_bff$EMPTY_N));

  // submodule slavePortShim_rff
  FIFO2 #(.width(32'd72), .guarded(1'd1)) slavePortShim_rff(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(slavePortShim_rff$D_IN),
							    .ENQ(slavePortShim_rff$ENQ),
							    .DEQ(slavePortShim_rff$DEQ),
							    .CLR(slavePortShim_rff$CLR),
							    .D_OUT(slavePortShim_rff$D_OUT),
							    .FULL_N(slavePortShim_rff$FULL_N),
							    .EMPTY_N(slavePortShim_rff$EMPTY_N));

  // submodule slavePortShim_wff
  FIFO2 #(.width(32'd74), .guarded(1'd1)) slavePortShim_wff(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(slavePortShim_wff$D_IN),
							    .ENQ(slavePortShim_wff$ENQ),
							    .DEQ(slavePortShim_wff$DEQ),
							    .CLR(slavePortShim_wff$CLR),
							    .D_OUT(slavePortShim_wff$D_OUT),
							    .FULL_N(slavePortShim_wff$FULL_N),
							    .EMPTY_N(slavePortShim_wff$EMPTY_N));

  // rule RL_write_reqs
  assign CAN_FIRE_RL_write_reqs =
	     slavePortShim_awff$EMPTY_N && slavePortShim_wff$EMPTY_N &&
	     slavePortShim_wff_i_notEmpty_AND_masterPortShi_ETC___d10 ;
  assign WILL_FIRE_RL_write_reqs = CAN_FIRE_RL_write_reqs ;

  // rule RL_ug_src_setCanPeek
  assign CAN_FIRE_RL_ug_src_setCanPeek = 1'd1 ;
  assign WILL_FIRE_RL_ug_src_setCanPeek = 1'd1 ;

  // rule RL_ug_src_setPeek
  assign CAN_FIRE_RL_ug_src_setPeek = slavePortShim_arff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_setPeek = slavePortShim_arff$EMPTY_N ;

  // rule RL_ug_snk_setCanPut
  assign CAN_FIRE_RL_ug_snk_setCanPut = 1'd1 ;
  assign WILL_FIRE_RL_ug_snk_setCanPut = 1'd1 ;

  // rule RL_connect
  assign CAN_FIRE_RL_connect =
	     slavePortShim_arff$EMPTY_N && masterPortShim_arff$FULL_N ;
  assign WILL_FIRE_RL_connect = CAN_FIRE_RL_connect ;

  // rule RL_ug_src_warnDoDrop
  assign CAN_FIRE_RL_ug_src_warnDoDrop =
	     CAN_FIRE_RL_connect && !slavePortShim_arff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_warnDoDrop = CAN_FIRE_RL_ug_src_warnDoDrop ;

  // rule RL_ug_src_doDrop
  assign CAN_FIRE_RL_ug_src_doDrop =
	     slavePortShim_arff$EMPTY_N && CAN_FIRE_RL_connect ;
  assign WILL_FIRE_RL_ug_src_doDrop = CAN_FIRE_RL_ug_src_doDrop ;

  // rule RL_ug_snk_warnDoPut
  assign CAN_FIRE_RL_ug_snk_warnDoPut =
	     CAN_FIRE_RL_connect && !masterPortShim_arff$FULL_N ;
  assign WILL_FIRE_RL_ug_snk_warnDoPut = CAN_FIRE_RL_ug_snk_warnDoPut ;

  // rule RL_ug_snk_doPut
  assign CAN_FIRE_RL_ug_snk_doPut =
	     masterPortShim_arff$FULL_N && CAN_FIRE_RL_connect ;
  assign WILL_FIRE_RL_ug_snk_doPut = CAN_FIRE_RL_ug_snk_doPut ;

  // rule RL_ug_src_1_setCanPeek
  assign CAN_FIRE_RL_ug_src_1_setCanPeek = 1'd1 ;
  assign WILL_FIRE_RL_ug_src_1_setCanPeek = 1'd1 ;

  // rule RL_ug_src_1_setPeek
  assign CAN_FIRE_RL_ug_src_1_setPeek = masterPortShim_bff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_1_setPeek = masterPortShim_bff$EMPTY_N ;

  // rule RL_ug_snk_1_setCanPut
  assign CAN_FIRE_RL_ug_snk_1_setCanPut = 1'd1 ;
  assign WILL_FIRE_RL_ug_snk_1_setCanPut = 1'd1 ;

  // rule RL_connect_1
  assign CAN_FIRE_RL_connect_1 =
	     masterPortShim_bff$EMPTY_N && slavePortShim_bff$FULL_N ;
  assign WILL_FIRE_RL_connect_1 = CAN_FIRE_RL_connect_1 ;

  // rule RL_ug_src_1_warnDoDrop
  assign CAN_FIRE_RL_ug_src_1_warnDoDrop =
	     CAN_FIRE_RL_connect_1 && !masterPortShim_bff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_1_warnDoDrop = CAN_FIRE_RL_ug_src_1_warnDoDrop ;

  // rule RL_ug_src_1_doDrop
  assign CAN_FIRE_RL_ug_src_1_doDrop =
	     masterPortShim_bff$EMPTY_N && CAN_FIRE_RL_connect_1 ;
  assign WILL_FIRE_RL_ug_src_1_doDrop = CAN_FIRE_RL_ug_src_1_doDrop ;

  // rule RL_ug_snk_1_warnDoPut
  assign CAN_FIRE_RL_ug_snk_1_warnDoPut =
	     CAN_FIRE_RL_connect_1 && !slavePortShim_bff$FULL_N ;
  assign WILL_FIRE_RL_ug_snk_1_warnDoPut = CAN_FIRE_RL_ug_snk_1_warnDoPut ;

  // rule RL_ug_snk_1_doPut
  assign CAN_FIRE_RL_ug_snk_1_doPut =
	     slavePortShim_bff$FULL_N && CAN_FIRE_RL_connect_1 ;
  assign WILL_FIRE_RL_ug_snk_1_doPut = CAN_FIRE_RL_ug_snk_1_doPut ;

  // rule RL_ug_src_2_setCanPeek
  assign CAN_FIRE_RL_ug_src_2_setCanPeek = 1'd1 ;
  assign WILL_FIRE_RL_ug_src_2_setCanPeek = 1'd1 ;

  // rule RL_ug_src_2_setPeek
  assign CAN_FIRE_RL_ug_src_2_setPeek = masterPortShim_rff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_2_setPeek = masterPortShim_rff$EMPTY_N ;

  // rule RL_ug_snk_2_setCanPut
  assign CAN_FIRE_RL_ug_snk_2_setCanPut = 1'd1 ;
  assign WILL_FIRE_RL_ug_snk_2_setCanPut = 1'd1 ;

  // rule RL_connect_2
  assign CAN_FIRE_RL_connect_2 =
	     masterPortShim_rff$EMPTY_N && slavePortShim_rff$FULL_N ;
  assign WILL_FIRE_RL_connect_2 = CAN_FIRE_RL_connect_2 ;

  // rule RL_ug_src_2_warnDoDrop
  assign CAN_FIRE_RL_ug_src_2_warnDoDrop =
	     CAN_FIRE_RL_connect_2 && !masterPortShim_rff$EMPTY_N ;
  assign WILL_FIRE_RL_ug_src_2_warnDoDrop = CAN_FIRE_RL_ug_src_2_warnDoDrop ;

  // rule RL_ug_src_2_doDrop
  assign CAN_FIRE_RL_ug_src_2_doDrop =
	     masterPortShim_rff$EMPTY_N && CAN_FIRE_RL_connect_2 ;
  assign WILL_FIRE_RL_ug_src_2_doDrop = CAN_FIRE_RL_ug_src_2_doDrop ;

  // rule RL_ug_snk_2_warnDoPut
  assign CAN_FIRE_RL_ug_snk_2_warnDoPut =
	     CAN_FIRE_RL_connect_2 && !slavePortShim_rff$FULL_N ;
  assign WILL_FIRE_RL_ug_snk_2_warnDoPut = CAN_FIRE_RL_ug_snk_2_warnDoPut ;

  // rule RL_ug_snk_2_doPut
  assign CAN_FIRE_RL_ug_snk_2_doPut =
	     slavePortShim_rff$FULL_N && CAN_FIRE_RL_connect_2 ;
  assign WILL_FIRE_RL_ug_snk_2_doPut = CAN_FIRE_RL_ug_snk_2_doPut ;

  // submodule f_trace_data
  assign f_trace_data$D_IN =
	     { 5'd4,
	       32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ,
	       1'bx /* unspecified value */ ,
	       32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ,
	       5'bxxxxx /* unspecified value */ ,
	       x__h1840,
	       stval__h1675[31:0],
	       slavePortShim_awff$D_OUT[92:0],
	       3'bxxx /* unspecified value */  } ;
  assign f_trace_data$ENQ = CAN_FIRE_RL_write_reqs ;
  assign f_trace_data$DEQ = EN_trace_data_out_get ;
  assign f_trace_data$CLR = 1'b0 ;

  // submodule masterPortShim_arff
  assign masterPortShim_arff$D_IN = slavePortShim_arff$D_OUT ;
  assign masterPortShim_arff$ENQ = CAN_FIRE_RL_ug_snk_doPut ;
  assign masterPortShim_arff$DEQ = EN_master_ar_drop ;
  assign masterPortShim_arff$CLR = 1'b0 ;

  // submodule masterPortShim_awff
  assign masterPortShim_awff$D_IN = slavePortShim_awff$D_OUT ;
  assign masterPortShim_awff$ENQ = CAN_FIRE_RL_write_reqs ;
  assign masterPortShim_awff$DEQ = EN_master_aw_drop ;
  assign masterPortShim_awff$CLR = 1'b0 ;

  // submodule masterPortShim_bff
  assign masterPortShim_bff$D_IN = master_b_put_val ;
  assign masterPortShim_bff$ENQ = EN_master_b_put ;
  assign masterPortShim_bff$DEQ = CAN_FIRE_RL_ug_src_1_doDrop ;
  assign masterPortShim_bff$CLR = 1'b0 ;

  // submodule masterPortShim_rff
  assign masterPortShim_rff$D_IN = master_r_put_val ;
  assign masterPortShim_rff$ENQ = EN_master_r_put ;
  assign masterPortShim_rff$DEQ = CAN_FIRE_RL_ug_src_2_doDrop ;
  assign masterPortShim_rff$CLR = 1'b0 ;

  // submodule masterPortShim_wff
  assign masterPortShim_wff$D_IN = slavePortShim_wff$D_OUT ;
  assign masterPortShim_wff$ENQ = CAN_FIRE_RL_write_reqs ;
  assign masterPortShim_wff$DEQ = EN_master_w_drop ;
  assign masterPortShim_wff$CLR = 1'b0 ;

  // submodule slavePortShim_arff
  assign slavePortShim_arff$D_IN = slave_ar_put_val ;
  assign slavePortShim_arff$ENQ = EN_slave_ar_put ;
  assign slavePortShim_arff$DEQ =
	     slavePortShim_arff$EMPTY_N && CAN_FIRE_RL_connect ;
  assign slavePortShim_arff$CLR = 1'b0 ;

  // submodule slavePortShim_awff
  assign slavePortShim_awff$D_IN = slave_aw_put_val ;
  assign slavePortShim_awff$ENQ = EN_slave_aw_put ;
  assign slavePortShim_awff$DEQ =
	     slavePortShim_awff$EMPTY_N && slavePortShim_wff$EMPTY_N &&
	     slavePortShim_wff_i_notEmpty_AND_masterPortShi_ETC___d10 ;
  assign slavePortShim_awff$CLR = 1'b0 ;

  // submodule slavePortShim_bff
  assign slavePortShim_bff$D_IN = masterPortShim_bff$D_OUT ;
  assign slavePortShim_bff$ENQ =
	     slavePortShim_bff$FULL_N && CAN_FIRE_RL_connect_1 ;
  assign slavePortShim_bff$DEQ = EN_slave_b_drop ;
  assign slavePortShim_bff$CLR = 1'b0 ;

  // submodule slavePortShim_rff
  assign slavePortShim_rff$D_IN = masterPortShim_rff$D_OUT ;
  assign slavePortShim_rff$ENQ =
	     slavePortShim_rff$FULL_N && CAN_FIRE_RL_connect_2 ;
  assign slavePortShim_rff$DEQ = EN_slave_r_drop ;
  assign slavePortShim_rff$CLR = 1'b0 ;

  // submodule slavePortShim_wff
  assign slavePortShim_wff$D_IN = slave_w_put_val ;
  assign slavePortShim_wff$ENQ = EN_slave_w_put ;
  assign slavePortShim_wff$DEQ =
	     slavePortShim_awff$EMPTY_N && slavePortShim_wff$EMPTY_N &&
	     slavePortShim_wff_i_notEmpty_AND_masterPortShi_ETC___d10 ;
  assign slavePortShim_wff$CLR = 1'b0 ;

  // remaining internal signals
  assign slavePortShim_wff_i_notEmpty_AND_masterPortShi_ETC___d10 =
	     slavePortShim_wff$EMPTY_N && masterPortShim_awff$FULL_N &&
	     masterPortShim_wff$FULL_N &&
	     f_trace_data$FULL_N ;
  assign stval__h1675 = x__h1937 & y__h1938 ;
  assign x__h1840 = { 29'd0, sz__h1686 } ;
  assign x__h1937 =
	     slavePortShim_wff$D_OUT[73:10] >>
	     CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 ;
  always@(slavePortShim_wff$D_OUT)
  begin
    case (slavePortShim_wff$D_OUT[9:2])
      8'h03, 8'h0C, 8'h30, 8'hC0: sz__h1686 = 3'b001;
      8'h0F, 8'hF0: sz__h1686 = 3'b010;
      8'h10, 8'h20, 8'h40, 8'h80: sz__h1686 = 3'b0;
      8'hFF: sz__h1686 = 3'b011;
      default: sz__h1686 = 3'b0;
    endcase
  end
  always@(slavePortShim_wff$D_OUT)
  begin
    case (slavePortShim_wff$D_OUT[9:2])
      8'h02: CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd8;
      8'h03, 8'h0F, 8'hFF:
	  CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd0;
      8'h04, 8'h0C:
	  CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd16;
      8'h08: CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd24;
      8'h10, 8'h30, 8'hF0:
	  CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd32;
      8'h20: CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd40;
      8'h40, 8'hC0:
	  CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd48;
      8'h80: CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd56;
      default: CASE_slavePortShim_wffD_OUT_BITS_9_TO_2_0x2_8_ETC__q1 = 32'd0;
    endcase
  end
  always@(slavePortShim_wff$D_OUT)
  begin
    case (slavePortShim_wff$D_OUT[9:2])
      8'h01, 8'h02, 8'h04, 8'h08, 8'h10, 8'h20, 8'h40, 8'h80:
	  y__h1938 = 64'h00000000000000FF;
      8'h03, 8'h0C, 8'h30, 8'hC0: y__h1938 = 64'h000000000000FFFF;
      8'h0F, 8'hF0: y__h1938 = 64'h00000000FFFFFFFF;
      8'hFF: y__h1938 = 64'hFFFFFFFFFFFFFFFF;
      default: y__h1938 = 64'd0;
    endcase
  end

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_src_warnDoDrop)
	$display("WARNING: %m - dropping from Source that can't be dropped from");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_snk_warnDoPut)
	$display("WARNING: %m - putting into a Sink that can't be put into");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_src_1_warnDoDrop)
	$display("WARNING: %m - dropping from Source that can't be dropped from");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_snk_1_warnDoPut)
	$display("WARNING: %m - putting into a Sink that can't be put into");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_src_2_warnDoDrop)
	$display("WARNING: %m - dropping from Source that can't be dropped from");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_ug_snk_2_warnDoPut)
	$display("WARNING: %m - putting into a Sink that can't be put into");
  end
  // synopsys translate_on
endmodule  // mkDM_Mem_Tap

