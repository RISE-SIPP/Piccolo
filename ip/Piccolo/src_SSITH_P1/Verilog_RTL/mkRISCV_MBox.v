//
// Generated by Bluespec Compiler, version 2021.07-14-g5f987061 (build 5f987061)
//
// On Tue Nov 16 19:45:13 GMT 2021
//
//
// Ports:
// Name                         I/O  size props
// RDY_set_verbosity              O     1 const
// RDY_req_reset                  O     1 const
// RDY_rsp_reset                  O     1 const
// valid                          O     1
// word                           O    32
// CLK                            I     1 clock
// RST_N                          I     1 reset
// set_verbosity_verbosity        I     4 reg
// req_is_OP_not_OP_32            I     1 reg
// req_f3                         I     3
// req_v1                         I    32
// req_v2                         I    32
// EN_set_verbosity               I     1
// EN_req_reset                   I     1 unused
// EN_rsp_reset                   I     1 unused
// EN_req                         I     1
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

module mkRISCV_MBox(CLK,
		    RST_N,

		    set_verbosity_verbosity,
		    EN_set_verbosity,
		    RDY_set_verbosity,

		    EN_req_reset,
		    RDY_req_reset,

		    EN_rsp_reset,
		    RDY_rsp_reset,

		    req_is_OP_not_OP_32,
		    req_f3,
		    req_v1,
		    req_v2,
		    EN_req,

		    valid,

		    word);
  input  CLK;
  input  RST_N;

  // action method set_verbosity
  input  [3 : 0] set_verbosity_verbosity;
  input  EN_set_verbosity;
  output RDY_set_verbosity;

  // action method req_reset
  input  EN_req_reset;
  output RDY_req_reset;

  // action method rsp_reset
  input  EN_rsp_reset;
  output RDY_rsp_reset;

  // action method req
  input  req_is_OP_not_OP_32;
  input  [2 : 0] req_f3;
  input  [31 : 0] req_v1;
  input  [31 : 0] req_v2;
  input  EN_req;

  // value method valid
  output valid;

  // value method word
  output [31 : 0] word;

  // signals for module outputs
  wire [31 : 0] word;
  wire RDY_req_reset, RDY_rsp_reset, RDY_set_verbosity, valid;

  // inlined wires
  wire dw_valid$whas;

  // register cfg_verbosity
  reg [3 : 0] cfg_verbosity;
  wire [3 : 0] cfg_verbosity$D_IN;
  wire cfg_verbosity$EN;

  // register intDiv_rg_denom2
  reg [31 : 0] intDiv_rg_denom2;
  reg [31 : 0] intDiv_rg_denom2$D_IN;
  wire intDiv_rg_denom2$EN;

  // register intDiv_rg_denom_is_signed
  reg intDiv_rg_denom_is_signed;
  wire intDiv_rg_denom_is_signed$D_IN, intDiv_rg_denom_is_signed$EN;

  // register intDiv_rg_n
  reg [31 : 0] intDiv_rg_n;
  reg [31 : 0] intDiv_rg_n$D_IN;
  wire intDiv_rg_n$EN;

  // register intDiv_rg_numer_is_signed
  reg intDiv_rg_numer_is_signed;
  wire intDiv_rg_numer_is_signed$D_IN, intDiv_rg_numer_is_signed$EN;

  // register intDiv_rg_quo
  reg [31 : 0] intDiv_rg_quo;
  reg [31 : 0] intDiv_rg_quo$D_IN;
  wire intDiv_rg_quo$EN;

  // register intDiv_rg_quoIsNeg
  reg intDiv_rg_quoIsNeg;
  wire intDiv_rg_quoIsNeg$D_IN, intDiv_rg_quoIsNeg$EN;

  // register intDiv_rg_remIsNeg
  reg intDiv_rg_remIsNeg;
  wire intDiv_rg_remIsNeg$D_IN, intDiv_rg_remIsNeg$EN;

  // register intDiv_rg_state
  reg [2 : 0] intDiv_rg_state;
  reg [2 : 0] intDiv_rg_state$D_IN;
  wire intDiv_rg_state$EN;

  // register rg_f3
  reg [2 : 0] rg_f3;
  wire [2 : 0] rg_f3$D_IN;
  wire rg_f3$EN;

  // register rg_is_OP_not_OP_32
  reg rg_is_OP_not_OP_32;
  wire rg_is_OP_not_OP_32$D_IN, rg_is_OP_not_OP_32$EN;

  // register rg_result
  reg [31 : 0] rg_result;
  wire [31 : 0] rg_result$D_IN;
  wire rg_result$EN;

  // register rg_state
  reg [1 : 0] rg_state;
  wire [1 : 0] rg_state$D_IN;
  wire rg_state$EN;

  // register rg_v1
  reg [31 : 0] rg_v1;
  reg [31 : 0] rg_v1$D_IN;
  wire rg_v1$EN;

  // register rg_v2
  reg [31 : 0] rg_v2;
  wire [31 : 0] rg_v2$D_IN;
  wire rg_v2$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_intDiv_rl_loop1,
       CAN_FIRE_RL_intDiv_rl_loop2,
       CAN_FIRE_RL_intDiv_rl_start_div_by_zero,
       CAN_FIRE_RL_intDiv_rl_start_overflow,
       CAN_FIRE_RL_intDiv_rl_start_s,
       CAN_FIRE_RL_rg_div_rem,
       CAN_FIRE_RL_rl_mul,
       CAN_FIRE_RL_rl_mul2,
       CAN_FIRE_req,
       CAN_FIRE_req_reset,
       CAN_FIRE_rsp_reset,
       CAN_FIRE_set_verbosity,
       WILL_FIRE_RL_intDiv_rl_loop1,
       WILL_FIRE_RL_intDiv_rl_loop2,
       WILL_FIRE_RL_intDiv_rl_start_div_by_zero,
       WILL_FIRE_RL_intDiv_rl_start_overflow,
       WILL_FIRE_RL_intDiv_rl_start_s,
       WILL_FIRE_RL_rg_div_rem,
       WILL_FIRE_RL_rl_mul,
       WILL_FIRE_RL_rl_mul2,
       WILL_FIRE_req,
       WILL_FIRE_req_reset,
       WILL_FIRE_rsp_reset,
       WILL_FIRE_set_verbosity;

  // inputs to muxes for submodule ports
  wire [31 : 0] MUX_dw_result$wset_1__VAL_2,
		MUX_intDiv_rg_denom2$write_1__VAL_1,
		MUX_intDiv_rg_denom2$write_1__VAL_2,
		MUX_intDiv_rg_denom2$write_1__VAL_3,
		MUX_intDiv_rg_n$write_1__VAL_1,
		MUX_intDiv_rg_n$write_1__VAL_2,
		MUX_intDiv_rg_quo$write_1__VAL_1,
		MUX_rg_v1$write_1__VAL_2,
		MUX_rg_v1$write_1__VAL_3;
  wire [1 : 0] MUX_rg_state$write_1__VAL_1;
  wire MUX_intDiv_rg_denom2$write_1__SEL_1,
       MUX_intDiv_rg_denom2$write_1__SEL_2,
       MUX_intDiv_rg_quo$write_1__SEL_1,
       MUX_intDiv_rg_state$write_1__SEL_1,
       MUX_intDiv_rg_state$write_1__SEL_2,
       MUX_intDiv_rg_state$write_1__SEL_3,
       MUX_rg_v1$write_1__SEL_2;

  // declarations used by system tasks
  // synopsys translate_off
  reg [31 : 0] v__h3300;
  reg [31 : 0] v__h3294;
  // synopsys translate_on

  // remaining internal signals
  wire [127 : 0] SEXT_rg_v1__03_MUL_0_CONCAT_rg_v2_09___d113,
		 SEXT_rg_v1__03_MUL_SEXT_rg_v2__04___d105,
		 _0_CONCAT_rg_v1_08_MUL_0_CONCAT_rg_v2_09___d110;
  wire [63 : 0] SEXT_rg_v1____d103, rg_v1_MUL_rg_v2___d100, v1__h3187;
  wire [31 : 0] _theResult___fst__h765,
		_theResult___snd_fst__h760,
		denom___1__h698,
		numer___1__h697,
		v__h3111,
		v__h3169,
		v__h3220,
		x__h2652,
		x__h2756,
		x__h2815,
		x__h2830,
		y__h2513;
  wire IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_31_ETC___d39,
       intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47,
       rg_v1_ULT_intDiv_rg_denom2_4___d59,
       rg_v1_ULT_rg_v2___d55;

  // action method set_verbosity
  assign RDY_set_verbosity = 1'd1 ;
  assign CAN_FIRE_set_verbosity = 1'd1 ;
  assign WILL_FIRE_set_verbosity = EN_set_verbosity ;

  // action method req_reset
  assign RDY_req_reset = 1'd1 ;
  assign CAN_FIRE_req_reset = 1'd1 ;
  assign WILL_FIRE_req_reset = EN_req_reset ;

  // action method rsp_reset
  assign RDY_rsp_reset = 1'd1 ;
  assign CAN_FIRE_rsp_reset = 1'd1 ;
  assign WILL_FIRE_rsp_reset = EN_rsp_reset ;

  // action method req
  assign CAN_FIRE_req = 1'd1 ;
  assign WILL_FIRE_req = EN_req ;

  // value method valid
  assign valid = dw_valid$whas ;

  // value method word
  assign word =
	     WILL_FIRE_RL_rl_mul2 ? rg_result : MUX_dw_result$wset_1__VAL_2 ;

  // rule RL_rl_mul
  assign CAN_FIRE_RL_rl_mul = rg_state == 2'd0 ;
  assign WILL_FIRE_RL_rl_mul = rg_state == 2'd0 ;

  // rule RL_rl_mul2
  assign CAN_FIRE_RL_rl_mul2 = rg_state == 2'd1 ;
  assign WILL_FIRE_RL_rl_mul2 = CAN_FIRE_RL_rl_mul2 ;

  // rule RL_rg_div_rem
  assign CAN_FIRE_RL_rg_div_rem =
	     rg_state == 2'd2 && intDiv_rg_state == 3'd4 ;
  assign WILL_FIRE_RL_rg_div_rem = CAN_FIRE_RL_rg_div_rem ;

  // rule RL_intDiv_rl_start_div_by_zero
  assign CAN_FIRE_RL_intDiv_rl_start_div_by_zero =
	     intDiv_rg_state == 3'd1 && rg_v2 == 32'd0 ;
  assign WILL_FIRE_RL_intDiv_rl_start_div_by_zero =
	     CAN_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // rule RL_intDiv_rl_start_overflow
  assign CAN_FIRE_RL_intDiv_rl_start_overflow =
	     intDiv_rg_state == 3'd1 && intDiv_rg_numer_is_signed &&
	     rg_v1 == 32'h80000000 &&
	     intDiv_rg_denom_is_signed &&
	     rg_v2 == 32'hFFFFFFFF ;
  assign WILL_FIRE_RL_intDiv_rl_start_overflow =
	     CAN_FIRE_RL_intDiv_rl_start_overflow ;

  // rule RL_intDiv_rl_start_s
  assign CAN_FIRE_RL_intDiv_rl_start_s =
	     intDiv_rg_state == 3'd1 && rg_v2 != 32'd0 &&
	     (!intDiv_rg_numer_is_signed || rg_v1 != 32'h80000000 ||
	      !intDiv_rg_denom_is_signed ||
	      rg_v2 != 32'hFFFFFFFF) ;
  assign WILL_FIRE_RL_intDiv_rl_start_s = CAN_FIRE_RL_intDiv_rl_start_s ;

  // rule RL_intDiv_rl_loop1
  assign CAN_FIRE_RL_intDiv_rl_loop1 = intDiv_rg_state == 3'd2 ;
  assign WILL_FIRE_RL_intDiv_rl_loop1 = CAN_FIRE_RL_intDiv_rl_loop1 ;

  // rule RL_intDiv_rl_loop2
  assign CAN_FIRE_RL_intDiv_rl_loop2 = intDiv_rg_state == 3'd3 ;
  assign WILL_FIRE_RL_intDiv_rl_loop2 = CAN_FIRE_RL_intDiv_rl_loop2 ;

  // inputs to muxes for submodule ports
  assign MUX_intDiv_rg_denom2$write_1__SEL_1 =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 ;
  assign MUX_intDiv_rg_denom2$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ;
  assign MUX_intDiv_rg_quo$write_1__SEL_1 =
	     WILL_FIRE_RL_intDiv_rl_loop2 &&
	     (rg_v1_ULT_rg_v2___d55 && intDiv_rg_quoIsNeg ||
	      !rg_v1_ULT_rg_v2___d55 && !rg_v1_ULT_intDiv_rg_denom2_4___d59) ;
  assign MUX_intDiv_rg_state$write_1__SEL_1 = EN_req && req_f3[2] ;
  assign MUX_intDiv_rg_state$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 && rg_v1_ULT_rg_v2___d55 ;
  assign MUX_intDiv_rg_state$write_1__SEL_3 =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     !intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 ;
  assign MUX_rg_v1$write_1__SEL_2 =
	     WILL_FIRE_RL_intDiv_rl_loop2 &&
	     (rg_v1_ULT_rg_v2___d55 && intDiv_rg_remIsNeg ||
	      !rg_v1_ULT_rg_v2___d55 && !rg_v1_ULT_intDiv_rg_denom2_4___d59) ;
  assign MUX_dw_result$wset_1__VAL_2 = rg_f3[1] ? rg_v1 : intDiv_rg_quo ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_1 =
	     { intDiv_rg_denom2[30:0], 1'd0 } ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_2 =
	     { 1'd0, intDiv_rg_denom2[31:1] } ;
  assign MUX_intDiv_rg_denom2$write_1__VAL_3 =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       denom___1__h698 :
	       _theResult___snd_fst__h760 ;
  assign MUX_intDiv_rg_n$write_1__VAL_1 = { intDiv_rg_n[30:0], 1'd0 } ;
  assign MUX_intDiv_rg_n$write_1__VAL_2 = { 1'd0, intDiv_rg_n[31:1] } ;
  assign MUX_intDiv_rg_quo$write_1__VAL_1 =
	     rg_v1_ULT_rg_v2___d55 ? x__h2756 : x__h2830 ;
  assign MUX_rg_state$write_1__VAL_1 = req_f3[2] ? 2'd2 : 2'd0 ;
  assign MUX_rg_v1$write_1__VAL_2 =
	     rg_v1_ULT_rg_v2___d55 ? x__h2815 : x__h2652 ;
  assign MUX_rg_v1$write_1__VAL_3 =
	     intDiv_rg_numer_is_signed ? numer___1__h697 : rg_v1 ;

  // inlined wires
  assign dw_valid$whas = WILL_FIRE_RL_rg_div_rem || WILL_FIRE_RL_rl_mul2 ;

  // register cfg_verbosity
  assign cfg_verbosity$D_IN = set_verbosity_verbosity ;
  assign cfg_verbosity$EN = EN_set_verbosity ;

  // register intDiv_rg_denom2
  always@(MUX_intDiv_rg_denom2$write_1__SEL_1 or
	  MUX_intDiv_rg_denom2$write_1__VAL_1 or
	  MUX_intDiv_rg_denom2$write_1__SEL_2 or
	  MUX_intDiv_rg_denom2$write_1__VAL_2 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  MUX_intDiv_rg_denom2$write_1__VAL_3)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_denom2$write_1__SEL_1:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_1;
      MUX_intDiv_rg_denom2$write_1__SEL_2:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_2;
      WILL_FIRE_RL_intDiv_rl_start_s:
	  intDiv_rg_denom2$D_IN = MUX_intDiv_rg_denom2$write_1__VAL_3;
      default: intDiv_rg_denom2$D_IN =
		   32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_denom2$EN =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_denom_is_signed
  assign intDiv_rg_denom_is_signed$D_IN = !req_f3[0] ;
  assign intDiv_rg_denom_is_signed$EN = MUX_intDiv_rg_state$write_1__SEL_1 ;

  // register intDiv_rg_n
  always@(MUX_intDiv_rg_denom2$write_1__SEL_1 or
	  MUX_intDiv_rg_n$write_1__VAL_1 or
	  MUX_intDiv_rg_denom2$write_1__SEL_2 or
	  MUX_intDiv_rg_n$write_1__VAL_2 or WILL_FIRE_RL_intDiv_rl_start_s)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_denom2$write_1__SEL_1:
	  intDiv_rg_n$D_IN = MUX_intDiv_rg_n$write_1__VAL_1;
      MUX_intDiv_rg_denom2$write_1__SEL_2:
	  intDiv_rg_n$D_IN = MUX_intDiv_rg_n$write_1__VAL_2;
      WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_n$D_IN = 32'd1;
      default: intDiv_rg_n$D_IN =
		   32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_n$EN =
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_loop2 && !rg_v1_ULT_rg_v2___d55 &&
	     rg_v1_ULT_intDiv_rg_denom2_4___d59 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_numer_is_signed
  assign intDiv_rg_numer_is_signed$D_IN = !req_f3[0] ;
  assign intDiv_rg_numer_is_signed$EN = MUX_intDiv_rg_state$write_1__SEL_1 ;

  // register intDiv_rg_quo
  always@(MUX_intDiv_rg_quo$write_1__SEL_1 or
	  MUX_intDiv_rg_quo$write_1__VAL_1 or
	  WILL_FIRE_RL_intDiv_rl_start_overflow or
	  rg_v1 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  WILL_FIRE_RL_intDiv_rl_start_div_by_zero)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_intDiv_rg_quo$write_1__SEL_1:
	  intDiv_rg_quo$D_IN = MUX_intDiv_rg_quo$write_1__VAL_1;
      WILL_FIRE_RL_intDiv_rl_start_overflow: intDiv_rg_quo$D_IN = rg_v1;
      WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_quo$D_IN = 32'd0;
      WILL_FIRE_RL_intDiv_rl_start_div_by_zero:
	  intDiv_rg_quo$D_IN = 32'hFFFFFFFF;
      default: intDiv_rg_quo$D_IN =
		   32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
    endcase
  end
  assign intDiv_rg_quo$EN =
	     MUX_intDiv_rg_quo$write_1__SEL_1 ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // register intDiv_rg_quoIsNeg
  assign intDiv_rg_quoIsNeg$D_IN =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       rg_v1[31] != rg_v2[31] :
	       IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_31_ETC___d39 ;
  assign intDiv_rg_quoIsNeg$EN = CAN_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_remIsNeg
  assign intDiv_rg_remIsNeg$D_IN =
	     (intDiv_rg_numer_is_signed && intDiv_rg_denom_is_signed) ?
	       rg_v1[31] :
	       intDiv_rg_numer_is_signed && rg_v1[31] ;
  assign intDiv_rg_remIsNeg$EN = CAN_FIRE_RL_intDiv_rl_start_s ;

  // register intDiv_rg_state
  always@(MUX_intDiv_rg_state$write_1__SEL_1 or
	  MUX_intDiv_rg_state$write_1__SEL_2 or
	  MUX_intDiv_rg_state$write_1__SEL_3 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  WILL_FIRE_RL_intDiv_rl_start_overflow or
	  WILL_FIRE_RL_intDiv_rl_start_div_by_zero)
  case (1'b1)
    MUX_intDiv_rg_state$write_1__SEL_1: intDiv_rg_state$D_IN = 3'd1;
    MUX_intDiv_rg_state$write_1__SEL_2: intDiv_rg_state$D_IN = 3'd4;
    MUX_intDiv_rg_state$write_1__SEL_3: intDiv_rg_state$D_IN = 3'd3;
    WILL_FIRE_RL_intDiv_rl_start_s: intDiv_rg_state$D_IN = 3'd2;
    WILL_FIRE_RL_intDiv_rl_start_overflow ||
    WILL_FIRE_RL_intDiv_rl_start_div_by_zero:
	intDiv_rg_state$D_IN = 3'd4;
    default: intDiv_rg_state$D_IN = 3'bxxx /* unspecified value */ ;
  endcase
  assign intDiv_rg_state$EN =
	     WILL_FIRE_RL_intDiv_rl_loop2 && rg_v1_ULT_rg_v2___d55 ||
	     EN_req && req_f3[2] ||
	     WILL_FIRE_RL_intDiv_rl_loop1 &&
	     !intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ||
	     WILL_FIRE_RL_intDiv_rl_start_div_by_zero ;

  // register rg_f3
  assign rg_f3$D_IN = req_f3 ;
  assign rg_f3$EN = EN_req ;

  // register rg_is_OP_not_OP_32
  assign rg_is_OP_not_OP_32$D_IN = req_is_OP_not_OP_32 ;
  assign rg_is_OP_not_OP_32$EN = EN_req ;

  // register rg_result
  assign rg_result$D_IN =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b0) ?
	       rg_v1_MUL_rg_v2___d100[31:0] :
	       v__h3111 ;
  assign rg_result$EN = rg_state == 2'd0 ;

  // register rg_state
  assign rg_state$D_IN = EN_req ? MUX_rg_state$write_1__VAL_1 : 2'd1 ;
  assign rg_state$EN = EN_req || WILL_FIRE_RL_rl_mul ;

  // register rg_v1
  always@(EN_req or
	  req_v1 or
	  MUX_rg_v1$write_1__SEL_2 or
	  MUX_rg_v1$write_1__VAL_2 or
	  WILL_FIRE_RL_intDiv_rl_start_s or
	  MUX_rg_v1$write_1__VAL_3 or WILL_FIRE_RL_intDiv_rl_start_overflow)
  case (1'b1)
    EN_req: rg_v1$D_IN = req_v1;
    MUX_rg_v1$write_1__SEL_2: rg_v1$D_IN = MUX_rg_v1$write_1__VAL_2;
    WILL_FIRE_RL_intDiv_rl_start_s: rg_v1$D_IN = MUX_rg_v1$write_1__VAL_3;
    WILL_FIRE_RL_intDiv_rl_start_overflow: rg_v1$D_IN = 32'd0;
    default: rg_v1$D_IN =
		 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx /* unspecified value */ ;
  endcase
  assign rg_v1$EN =
	     MUX_rg_v1$write_1__SEL_2 || EN_req ||
	     WILL_FIRE_RL_intDiv_rl_start_s ||
	     WILL_FIRE_RL_intDiv_rl_start_overflow ;

  // register rg_v2
  assign rg_v2$D_IN = EN_req ? req_v2 : MUX_intDiv_rg_denom2$write_1__VAL_3 ;
  assign rg_v2$EN = EN_req || WILL_FIRE_RL_intDiv_rl_start_s ;

  // remaining internal signals
  assign IF_intDiv_rg_numer_is_signed_THEN_rg_v1_BIT_31_ETC___d39 =
	     intDiv_rg_numer_is_signed ?
	       rg_v1[31] :
	       intDiv_rg_denom_is_signed && rg_v2[31] ;
  assign SEXT_rg_v1__03_MUL_0_CONCAT_rg_v2_09___d113 =
	     SEXT_rg_v1____d103 * { 32'd0, rg_v2 } ;
  assign SEXT_rg_v1__03_MUL_SEXT_rg_v2__04___d105 =
	     SEXT_rg_v1____d103 * { {32{rg_v2[31]}}, rg_v2 } ;
  assign SEXT_rg_v1____d103 = { {32{rg_v1[31]}}, rg_v1 } ;
  assign _0_CONCAT_rg_v1_08_MUL_0_CONCAT_rg_v2_09___d110 =
	     v1__h3187 * { 32'd0, rg_v2 } ;
  assign _theResult___fst__h765 =
	     intDiv_rg_denom_is_signed ? denom___1__h698 : rg_v2 ;
  assign _theResult___snd_fst__h760 =
	     intDiv_rg_numer_is_signed ? rg_v2 : _theResult___fst__h765 ;
  assign denom___1__h698 = rg_v2[31] ? -rg_v2 : rg_v2 ;
  assign intDiv_rg_denom2_4_ULE_0_CONCAT_rg_v1_BITS_31__ETC___d47 =
	     intDiv_rg_denom2 <= y__h2513 ;
  assign numer___1__h697 = rg_v1[31] ? x__h2815 : rg_v1 ;
  assign rg_v1_MUL_rg_v2___d100 = rg_v1 * rg_v2 ;
  assign rg_v1_ULT_intDiv_rg_denom2_4___d59 = rg_v1 < intDiv_rg_denom2 ;
  assign rg_v1_ULT_rg_v2___d55 = rg_v1 < rg_v2 ;
  assign v1__h3187 = { 32'd0, rg_v1 } ;
  assign v__h3111 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b001) ?
	       SEXT_rg_v1__03_MUL_SEXT_rg_v2__04___d105[63:32] :
	       v__h3169 ;
  assign v__h3169 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b011) ?
	       _0_CONCAT_rg_v1_08_MUL_0_CONCAT_rg_v2_09___d110[63:32] :
	       v__h3220 ;
  assign v__h3220 =
	     (rg_is_OP_not_OP_32 && rg_f3 == 3'b010) ?
	       SEXT_rg_v1__03_MUL_0_CONCAT_rg_v2_09___d113[63:32] :
	       32'hFFFFFFFF ;
  assign x__h2652 = rg_v1 - intDiv_rg_denom2 ;
  assign x__h2756 = -intDiv_rg_quo ;
  assign x__h2815 = -rg_v1 ;
  assign x__h2830 = intDiv_rg_quo + intDiv_rg_n ;
  assign y__h2513 = { 1'd0, rg_v1[31:1] } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        cfg_verbosity <= `BSV_ASSIGNMENT_DELAY 4'd0;
	intDiv_rg_state <= `BSV_ASSIGNMENT_DELAY 3'd0;
      end
    else
      begin
        if (cfg_verbosity$EN)
	  cfg_verbosity <= `BSV_ASSIGNMENT_DELAY cfg_verbosity$D_IN;
	if (intDiv_rg_state$EN)
	  intDiv_rg_state <= `BSV_ASSIGNMENT_DELAY intDiv_rg_state$D_IN;
      end
    if (intDiv_rg_denom2$EN)
      intDiv_rg_denom2 <= `BSV_ASSIGNMENT_DELAY intDiv_rg_denom2$D_IN;
    if (intDiv_rg_denom_is_signed$EN)
      intDiv_rg_denom_is_signed <= `BSV_ASSIGNMENT_DELAY
	  intDiv_rg_denom_is_signed$D_IN;
    if (intDiv_rg_n$EN) intDiv_rg_n <= `BSV_ASSIGNMENT_DELAY intDiv_rg_n$D_IN;
    if (intDiv_rg_numer_is_signed$EN)
      intDiv_rg_numer_is_signed <= `BSV_ASSIGNMENT_DELAY
	  intDiv_rg_numer_is_signed$D_IN;
    if (intDiv_rg_quo$EN)
      intDiv_rg_quo <= `BSV_ASSIGNMENT_DELAY intDiv_rg_quo$D_IN;
    if (intDiv_rg_quoIsNeg$EN)
      intDiv_rg_quoIsNeg <= `BSV_ASSIGNMENT_DELAY intDiv_rg_quoIsNeg$D_IN;
    if (intDiv_rg_remIsNeg$EN)
      intDiv_rg_remIsNeg <= `BSV_ASSIGNMENT_DELAY intDiv_rg_remIsNeg$D_IN;
    if (rg_f3$EN) rg_f3 <= `BSV_ASSIGNMENT_DELAY rg_f3$D_IN;
    if (rg_is_OP_not_OP_32$EN)
      rg_is_OP_not_OP_32 <= `BSV_ASSIGNMENT_DELAY rg_is_OP_not_OP_32$D_IN;
    if (rg_result$EN) rg_result <= `BSV_ASSIGNMENT_DELAY rg_result$D_IN;
    if (rg_state$EN) rg_state <= `BSV_ASSIGNMENT_DELAY rg_state$D_IN;
    if (rg_v1$EN) rg_v1 <= `BSV_ASSIGNMENT_DELAY rg_v1$D_IN;
    if (rg_v2$EN) rg_v2 <= `BSV_ASSIGNMENT_DELAY rg_v2$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    cfg_verbosity = 4'hA;
    intDiv_rg_denom2 = 32'hAAAAAAAA;
    intDiv_rg_denom_is_signed = 1'h0;
    intDiv_rg_n = 32'hAAAAAAAA;
    intDiv_rg_numer_is_signed = 1'h0;
    intDiv_rg_quo = 32'hAAAAAAAA;
    intDiv_rg_quoIsNeg = 1'h0;
    intDiv_rg_remIsNeg = 1'h0;
    intDiv_rg_state = 3'h2;
    rg_f3 = 3'h2;
    rg_is_OP_not_OP_32 = 1'h0;
    rg_result = 32'hAAAAAAAA;
    rg_state = 2'h2;
    rg_v1 = 32'hAAAAAAAA;
    rg_v2 = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul && cfg_verbosity > 4'd1)
	$display("    RISCV_MBox.rl_mul");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul &&
	  (!rg_is_OP_not_OP_32 ||
	   rg_f3 != 3'b0 && rg_f3 != 3'b001 && rg_f3 != 3'b011 &&
	   rg_f3 != 3'b010))
	begin
	  v__h3300 = $stime;
	  #0;
	end
    v__h3294 = v__h3300 / 32'd10;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul &&
	  (!rg_is_OP_not_OP_32 ||
	   rg_f3 != 3'b0 && rg_f3 != 3'b001 && rg_f3 != 3'b011 &&
	   rg_f3 != 3'b010))
	$display("%0d: ERROR: RISCV_MBox.rl_mul: illegal f3.", v__h3294);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul &&
	  (!rg_is_OP_not_OP_32 ||
	   rg_f3 != 3'b0 && rg_f3 != 3'b001 && rg_f3 != 3'b011 &&
	   rg_f3 != 3'b010))
	$display("    f3 0x%0h  v1 0x%0h  v2 0x%0h", rg_f3, rg_v1, rg_v2);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_rl_mul &&
	  (!rg_is_OP_not_OP_32 ||
	   rg_f3 != 3'b0 && rg_f3 != 3'b001 && rg_f3 != 3'b011 &&
	   rg_f3 != 3'b010))
	$finish(32'd1);
  end
  // synopsys translate_on
endmodule  // mkRISCV_MBox
