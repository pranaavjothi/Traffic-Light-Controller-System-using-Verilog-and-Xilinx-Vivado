// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec  4 20:12:04 2021
// Host        : DESKTOP-AMCSNKT running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Xilinx/Vivado/2020.2/project_traffic_controller/project_traffic_controller.sim/sim_1/impl/timing/xsim/controller_TB_time_impl.v
// Design      : traffic_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e79cd15d" *) (* S0 = "0" *) (* S1 = "1" *) 
(* S10 = "10" *) (* S11 = "11" *) (* S2 = "2" *) 
(* S3 = "3" *) (* S4 = "4" *) (* S5 = "5" *) 
(* S6 = "6" *) (* S7 = "7" *) (* S8 = "8" *) 
(* S9 = "9" *) (* sec_even = "10" *) (* sec_odd = "5" *) 
(* NotValidForBitStream *)
module traffic_controller
   (clk,
    rst,
    light_D0,
    light_D1,
    light_D2,
    light_D3,
    light_D4,
    light_D5,
    light_D6,
    light_D7,
    light_D8,
    light_D9);
  input clk;
  input rst;
  output [2:0]light_D0;
  output [2:0]light_D1;
  output [2:0]light_D2;
  output [2:0]light_D3;
  output [2:0]light_D4;
  output [2:0]light_D5;
  output [2:0]light_D6;
  output [2:0]light_D7;
  output [2:0]light_D8;
  output [2:0]light_D9;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire [3:0]count__0;
  wire [2:0]light_D0;
  wire [2:0]light_D0_OBUF;
  wire [2:0]light_D1;
  wire [2:0]light_D1_OBUF;
  wire [2:0]light_D2;
  wire [2:0]light_D2_OBUF;
  wire [2:0]light_D3;
  wire [2:0]light_D3_OBUF;
  wire [2:0]light_D4;
  wire [2:0]light_D4_OBUF;
  wire [2:0]light_D5;
  wire [2:0]light_D5_OBUF;
  wire [2:0]light_D6;
  wire [2:0]light_D6_OBUF;
  wire [2:0]light_D7;
  wire [2:0]light_D7_OBUF;
  wire [2:0]light_D8;
  wire [2:0]light_D8_OBUF;
  wire [2:0]light_D9;
  wire [2:0]light_D9_OBUF;
  wire [3:0]ps;
  wire [3:0]ps__0;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("controller_TB_time_impl.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'h0055FE00)) 
    \FSM_sequential_ps[0]_i_1 
       (.I0(count__0[2]),
        .I1(count__0[1]),
        .I2(count__0[0]),
        .I3(count__0[3]),
        .I4(ps[0]),
        .O(ps__0[0]));
  LUT4 #(
    .INIT(16'h57A8)) 
    \FSM_sequential_ps[1]_i_1 
       (.I0(ps[0]),
        .I1(count__0[2]),
        .I2(count__0[3]),
        .I3(ps[1]),
        .O(ps__0[1]));
  LUT6 #(
    .INIT(64'h1112222222222222)) 
    \FSM_sequential_ps[2]_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(count__0[3]),
        .I3(count__0[2]),
        .I4(ps[1]),
        .I5(ps[0]),
        .O(ps__0[2]));
  LUT6 #(
    .INIT(64'h1E10F0F0F0F0F0F0)) 
    \FSM_sequential_ps[3]_i_1 
       (.I0(count__0[2]),
        .I1(count__0[3]),
        .I2(ps[3]),
        .I3(ps[2]),
        .I4(ps[1]),
        .I5(ps[0]),
        .O(ps__0[3]));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S2:0010,S11:1011,S10:1010,S1:0001,S0:0000,S9:1001,S7:0111,S8:1000,S6:0110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ps__0[0]),
        .Q(ps[0]));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S2:0010,S11:1011,S10:1010,S1:0001,S0:0000,S9:1001,S7:0111,S8:1000,S6:0110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ps__0[1]),
        .Q(ps[1]));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S2:0010,S11:1011,S10:1010,S1:0001,S0:0000,S9:1001,S7:0111,S8:1000,S6:0110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ps__0[2]),
        .Q(ps[2]));
  (* FSM_ENCODED_STATES = "S3:0011,S4:0100,S2:0010,S11:1011,S10:1010,S1:0001,S0:0000,S9:1001,S7:0111,S8:1000,S6:0110,S5:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_ps_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(ps__0[3]),
        .Q(ps[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* \PinAttr:I4:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000031F)) 
    \count[0]_i_1 
       (.I0(count__0[1]),
        .I1(ps[0]),
        .I2(count__0[3]),
        .I3(count__0[2]),
        .I4(count__0[0]),
        .O(\count[0]_i_1_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00060066)) 
    \count[1]_i_1 
       (.I0(count__0[0]),
        .I1(count__0[1]),
        .I2(count__0[2]),
        .I3(count__0[3]),
        .I4(ps[0]),
        .O(\count[1]_i_1_n_0 ));
  (* \PinAttr:I4:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h03101010)) 
    \count[2]_i_1 
       (.I0(ps[0]),
        .I1(count__0[3]),
        .I2(count__0[2]),
        .I3(count__0[1]),
        .I4(count__0[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count[3]_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .O(count));
  (* \PinAttr:I4:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000004)) 
    \count[3]_i_2 
       (.I0(ps[0]),
        .I1(count__0[3]),
        .I2(count__0[2]),
        .I3(count__0[1]),
        .I4(count__0[0]),
        .O(\count[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .CLR(rst_IBUF),
        .D(\count[0]_i_1_n_0 ),
        .Q(count__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .CLR(rst_IBUF),
        .D(\count[1]_i_1_n_0 ),
        .Q(count__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .CLR(rst_IBUF),
        .D(\count[2]_i_1_n_0 ),
        .Q(count__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(count),
        .CLR(rst_IBUF),
        .D(\count[3]_i_2_n_0 ),
        .Q(count__0[3]));
  OBUF \light_D0_OBUF[0]_inst 
       (.I(light_D0_OBUF[0]),
        .O(light_D0[0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \light_D0_OBUF[0]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(ps[3]),
        .I3(ps[2]),
        .O(light_D0_OBUF[0]));
  OBUF \light_D0_OBUF[1]_inst 
       (.I(light_D0_OBUF[1]),
        .O(light_D0[1]));
  LUT4 #(
    .INIT(16'h0004)) 
    \light_D0_OBUF[1]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(ps[3]),
        .I3(ps[2]),
        .O(light_D0_OBUF[1]));
  OBUF \light_D0_OBUF[2]_inst 
       (.I(light_D0_OBUF[2]),
        .O(light_D0[2]));
  LUT3 #(
    .INIT(8'h76)) 
    \light_D0_OBUF[2]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[1]),
        .O(light_D0_OBUF[2]));
  OBUF \light_D1_OBUF[0]_inst 
       (.I(light_D1_OBUF[0]),
        .O(light_D1[0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \light_D1_OBUF[0]_inst_i_1 
       (.I0(ps[0]),
        .I1(ps[1]),
        .I2(ps[3]),
        .I3(ps[2]),
        .O(light_D1_OBUF[0]));
  OBUF \light_D1_OBUF[1]_inst 
       (.I(light_D8_OBUF[1]),
        .O(light_D1[1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \light_D1_OBUF[1]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D8_OBUF[1]));
  OBUF \light_D1_OBUF[2]_inst 
       (.I(light_D1_OBUF[2]),
        .O(light_D1[2]));
  LUT3 #(
    .INIT(8'h1F)) 
    \light_D1_OBUF[2]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[1]),
        .I2(ps[2]),
        .O(light_D1_OBUF[2]));
  OBUF \light_D2_OBUF[0]_inst 
       (.I(light_D2_OBUF[0]),
        .O(light_D2[0]));
  LUT4 #(
    .INIT(16'h0100)) 
    \light_D2_OBUF[0]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(ps[2]),
        .I3(ps[3]),
        .O(light_D2_OBUF[0]));
  OBUF \light_D2_OBUF[1]_inst 
       (.I(light_D5_OBUF[1]),
        .O(light_D2[1]));
  LUT4 #(
    .INIT(16'h0400)) 
    \light_D2_OBUF[1]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(ps[2]),
        .I3(ps[3]),
        .O(light_D5_OBUF[1]));
  OBUF \light_D2_OBUF[2]_inst 
       (.I(light_D2_OBUF[2]),
        .O(light_D2[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \light_D2_OBUF[2]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[1]),
        .I2(ps[3]),
        .O(light_D2_OBUF[2]));
  OBUF \light_D3_OBUF[0]_inst 
       (.I(light_D3_OBUF[0]),
        .O(light_D3[0]));
  LUT4 #(
    .INIT(16'h0402)) 
    \light_D3_OBUF[0]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(ps[0]),
        .I3(ps[1]),
        .O(light_D3_OBUF[0]));
  OBUF \light_D3_OBUF[1]_inst 
       (.I(light_D3_OBUF[1]),
        .O(light_D3[1]));
  LUT4 #(
    .INIT(16'h4020)) 
    \light_D3_OBUF[1]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(ps[0]),
        .I3(ps[1]),
        .O(light_D3_OBUF[1]));
  OBUF \light_D3_OBUF[2]_inst 
       (.I(light_D3_OBUF[2]),
        .O(light_D3[2]));
  LUT3 #(
    .INIT(8'h47)) 
    \light_D3_OBUF[2]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[1]),
        .I2(ps[2]),
        .O(light_D3_OBUF[2]));
  OBUF \light_D4_OBUF[0]_inst 
       (.I(light_D4_OBUF[0]),
        .O(light_D4[0]));
  LUT4 #(
    .INIT(16'h0111)) 
    \light_D4_OBUF[0]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D4_OBUF[0]));
  OBUF \light_D4_OBUF[1]_inst 
       (.I(light_D4_OBUF[1]),
        .O(light_D4[1]));
  LUT4 #(
    .INIT(16'h1000)) 
    \light_D4_OBUF[1]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D4_OBUF[1]));
  OBUF \light_D4_OBUF[2]_inst 
       (.I(light_D4_OBUF[2]),
        .O(light_D4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \light_D4_OBUF[2]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .O(light_D4_OBUF[2]));
  OBUF \light_D5_OBUF[0]_inst 
       (.I(light_D5_OBUF[0]),
        .O(light_D5[0]));
  LUT4 #(
    .INIT(16'h5546)) 
    \light_D5_OBUF[0]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[0]),
        .I3(ps[1]),
        .O(light_D5_OBUF[0]));
  OBUF \light_D5_OBUF[1]_inst 
       (.I(light_D5_OBUF[1]),
        .O(light_D5[1]));
  OBUF \light_D5_OBUF[2]_inst 
       (.I(light_D5_OBUF[2]),
        .O(light_D5[2]));
  LUT3 #(
    .INIT(8'h21)) 
    \light_D5_OBUF[2]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[2]),
        .I2(ps[3]),
        .O(light_D5_OBUF[2]));
  OBUF \light_D6_OBUF[0]_inst 
       (.I(light_D6_OBUF[0]),
        .O(light_D6[0]));
  LUT4 #(
    .INIT(16'h0444)) 
    \light_D6_OBUF[0]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D6_OBUF[0]));
  OBUF \light_D6_OBUF[1]_inst 
       (.I(light_D9_OBUF[1]),
        .O(light_D6[1]));
  LUT4 #(
    .INIT(16'h4000)) 
    \light_D6_OBUF[1]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D9_OBUF[1]));
  OBUF \light_D6_OBUF[2]_inst 
       (.I(light_D6_OBUF[2]),
        .O(light_D6[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \light_D6_OBUF[2]_inst_i_1 
       (.I0(ps[3]),
        .O(light_D6_OBUF[2]));
  OBUF \light_D7_OBUF[0]_inst 
       (.I(light_D7_OBUF[0]),
        .O(light_D7[0]));
  LUT4 #(
    .INIT(16'h5513)) 
    \light_D7_OBUF[0]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[3]),
        .I2(ps[0]),
        .I3(ps[1]),
        .O(light_D7_OBUF[0]));
  OBUF \light_D7_OBUF[1]_inst 
       (.I(light_D7_OBUF[1]),
        .O(light_D7[1]));
  LUT4 #(
    .INIT(16'h0400)) 
    \light_D7_OBUF[1]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[0]),
        .I2(ps[3]),
        .I3(ps[2]),
        .O(light_D7_OBUF[1]));
  OBUF \light_D7_OBUF[2]_inst 
       (.I(light_D7_OBUF[2]),
        .O(light_D7[2]));
  LUT3 #(
    .INIT(8'h24)) 
    \light_D7_OBUF[2]_inst_i_1 
       (.I0(ps[1]),
        .I1(ps[3]),
        .I2(ps[2]),
        .O(light_D7_OBUF[2]));
  OBUF \light_D8_OBUF[0]_inst 
       (.I(light_D8_OBUF[0]),
        .O(light_D8[0]));
  LUT4 #(
    .INIT(16'h0444)) 
    \light_D8_OBUF[0]_inst_i_1 
       (.I0(ps[3]),
        .I1(ps[2]),
        .I2(ps[1]),
        .I3(ps[0]),
        .O(light_D8_OBUF[0]));
  OBUF \light_D8_OBUF[1]_inst 
       (.I(light_D8_OBUF[1]),
        .O(light_D8[1]));
  OBUF \light_D8_OBUF[2]_inst 
       (.I(light_D8_OBUF[2]),
        .O(light_D8[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \light_D8_OBUF[2]_inst_i_1 
       (.I0(ps[2]),
        .O(light_D8_OBUF[2]));
  OBUF \light_D9_OBUF[0]_inst 
       (.I(light_D9_OBUF[0]),
        .O(light_D9[0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \light_D9_OBUF[0]_inst_i_1 
       (.I0(ps[0]),
        .I1(ps[1]),
        .I2(ps[2]),
        .I3(ps[3]),
        .O(light_D9_OBUF[0]));
  OBUF \light_D9_OBUF[1]_inst 
       (.I(light_D9_OBUF[1]),
        .O(light_D9[1]));
  OBUF \light_D9_OBUF[2]_inst 
       (.I(light_D9_OBUF[2]),
        .O(light_D9[2]));
  LUT3 #(
    .INIT(8'h1F)) 
    \light_D9_OBUF[2]_inst_i_1 
       (.I0(ps[2]),
        .I1(ps[1]),
        .I2(ps[3]),
        .O(light_D9_OBUF[2]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
