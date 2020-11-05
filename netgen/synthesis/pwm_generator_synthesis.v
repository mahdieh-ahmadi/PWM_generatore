////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pwm_generator_synthesis.v
// /___/   /\     Timestamp: Thu Nov 05 12:14:07 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pwm_generator.ngc pwm_generator_synthesis.v 
// Device	: xc6slx4-3-tqg144
// Input file	: pwm_generator.ngc
// Output file	: E:\university\3991\fpga\homeworks\PWM_generatore\netgen\synthesis\pwm_generator_synthesis.v
// # of Modules	: 1
// Design Name	: pwm_generator
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module pwm_generator (
  increase_duty, decrease_duty, reset, clk, pwm
);
  input increase_duty;
  input decrease_duty;
  input reset;
  input clk;
  output pwm;
  wire increase_duty_IBUF_0;
  wire decrease_duty_IBUF_1;
  wire reset_IBUF_2;
  wire clk_BUFGP_3;
  wire GND_1_o_GND_1_o_AND_1_o;
  wire GND_1_o_GND_1_o_AND_2_o;
  wire pwm_OBUF_6;
  wire GND_1_o_GND_1_o_equal_15_o;
  wire Mmux_n00284;
  wire N8;
  wire pwm_rstpot;
  wire N10;
  wire N11;
  wire N12;
  wire N14;
  wire N15;
  wire [3 : 0] n0028;
  wire [3 : 0] Result;
  wire [3 : 0] w1;
  wire [3 : 0] w3;
  FD #(
    .INIT ( 1'b1 ))
  w3_0 (
    .C(clk_BUFGP_3),
    .D(n0028[0]),
    .Q(w3[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  w3_1 (
    .C(clk_BUFGP_3),
    .D(n0028[1]),
    .Q(w3[1])
  );
  FD #(
    .INIT ( 1'b1 ))
  w3_2 (
    .C(clk_BUFGP_3),
    .D(n0028[2]),
    .Q(w3[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  w3_3 (
    .C(clk_BUFGP_3),
    .D(n0028[3]),
    .Q(w3[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  w1_0 (
    .C(clk_BUFGP_3),
    .D(Result[0]),
    .R(GND_1_o_GND_1_o_equal_15_o),
    .Q(w1[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  w1_1 (
    .C(clk_BUFGP_3),
    .D(Result[1]),
    .R(GND_1_o_GND_1_o_equal_15_o),
    .Q(w1[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  w1_2 (
    .C(clk_BUFGP_3),
    .D(Result[2]),
    .R(GND_1_o_GND_1_o_equal_15_o),
    .Q(w1[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  w1_3 (
    .C(clk_BUFGP_3),
    .D(Result[3]),
    .R(GND_1_o_GND_1_o_equal_15_o),
    .Q(w1[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Result<1>1  (
    .I0(w1[1]),
    .I1(w1[0]),
    .O(Result[1])
  );
  LUT5 #(
    .INIT ( 32'hAAAAA2AA ))
  GND_1_o_GND_1_o_AND_1_o1 (
    .I0(increase_duty_IBUF_0),
    .I1(w3[3]),
    .I2(w3[2]),
    .I3(w3[1]),
    .I4(w3[0]),
    .O(GND_1_o_GND_1_o_AND_1_o)
  );
  LUT4 #(
    .INIT ( 16'h333E ))
  Mmux_n002811 (
    .I0(reset_IBUF_2),
    .I1(w3[0]),
    .I2(GND_1_o_GND_1_o_AND_1_o),
    .I3(GND_1_o_GND_1_o_AND_2_o),
    .O(n0028[0])
  );
  LUT5 #(
    .INIT ( 32'h6928696C ))
  Mmux_n002821 (
    .I0(GND_1_o_GND_1_o_AND_1_o),
    .I1(w3[1]),
    .I2(w3[0]),
    .I3(GND_1_o_GND_1_o_AND_2_o),
    .I4(reset_IBUF_2),
    .O(n0028[1])
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  GND_1_o_GND_1_o_AND_2_o1 (
    .I0(decrease_duty_IBUF_1),
    .I1(w3[3]),
    .I2(w3[2]),
    .I3(w3[1]),
    .I4(w3[0]),
    .O(GND_1_o_GND_1_o_AND_2_o)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(w1[2]),
    .I1(w1[0]),
    .I2(w1[1]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Result<3>1  (
    .I0(w1[3]),
    .I1(w1[0]),
    .I2(w1[1]),
    .I3(w1[2]),
    .O(Result[3])
  );
  LUT5 #(
    .INIT ( 32'hDDDDDDD1 ))
  Mmux_n002841 (
    .I0(reset_IBUF_2),
    .I1(decrease_duty_IBUF_1),
    .I2(w3[2]),
    .I3(w3[1]),
    .I4(w3[0]),
    .O(Mmux_n00284)
  );
  IBUF   increase_duty_IBUF (
    .I(increase_duty),
    .O(increase_duty_IBUF_0)
  );
  IBUF   decrease_duty_IBUF (
    .I(decrease_duty),
    .O(decrease_duty_IBUF_1)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_2)
  );
  OBUF   pwm_OBUF (
    .I(pwm_OBUF_6),
    .O(pwm)
  );
  FD   pwm_21 (
    .C(clk_BUFGP_3),
    .D(pwm_rstpot),
    .Q(pwm_OBUF_6)
  );
  LUT5 #(
    .INIT ( 32'h7150F571 ))
  pwm_rstpot1 (
    .I0(w1[3]),
    .I1(w1[2]),
    .I2(n0028[3]),
    .I3(n0028[2]),
    .I4(N8),
    .O(pwm_rstpot)
  );
  LUT5 #(
    .INIT ( 32'hE8FCECFD ))
  \w1[3]_GND_1_o_LessThan_13_o1_SW0_SW0  (
    .I0(reset_IBUF_2),
    .I1(w1[1]),
    .I2(w1[0]),
    .I3(w3[1]),
    .I4(w3[0]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'hFA8E ))
  \w1[3]_GND_1_o_LessThan_13_o1_SW0_SW1  (
    .I0(w1[1]),
    .I1(w1[0]),
    .I2(w3[1]),
    .I3(w3[0]),
    .O(N11)
  );
  LUT4 #(
    .INIT ( 16'hAFE8 ))
  \w1[3]_GND_1_o_LessThan_13_o1_SW0_SW2  (
    .I0(w1[1]),
    .I1(w1[0]),
    .I2(w3[1]),
    .I3(w3[0]),
    .O(N12)
  );
  LUT5 #(
    .INIT ( 32'hCCAACCF0 ))
  \w1[3]_GND_1_o_LessThan_13_o1_SW0  (
    .I0(N12),
    .I1(N11),
    .I2(N10),
    .I3(GND_1_o_GND_1_o_AND_1_o),
    .I4(GND_1_o_GND_1_o_AND_2_o),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAA48808888 ))
  Mmux_n002842 (
    .I0(w3[3]),
    .I1(increase_duty_IBUF_0),
    .I2(w3[2]),
    .I3(w3[0]),
    .I4(w3[1]),
    .I5(Mmux_n00284),
    .O(n0028[3])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \GND_1_o_GND_1_o_equal_15_o<3>1  (
    .I0(w1[0]),
    .I1(w1[1]),
    .I2(w1[3]),
    .I3(w1[2]),
    .O(GND_1_o_GND_1_o_equal_15_o)
  );
  MUXF7   Mmux_n00283 (
    .I0(N14),
    .I1(N15),
    .S(w3[2]),
    .O(n0028[2])
  );
  LUT6 #(
    .INIT ( 64'hF202F202220E020A ))
  Mmux_n00283_F (
    .I0(reset_IBUF_2),
    .I1(decrease_duty_IBUF_1),
    .I2(increase_duty_IBUF_0),
    .I3(w3[1]),
    .I4(w3[3]),
    .I5(w3[0]),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'h77EF ))
  Mmux_n00283_G (
    .I0(w3[1]),
    .I1(w3[0]),
    .I2(decrease_duty_IBUF_1),
    .I3(increase_duty_IBUF_0),
    .O(N15)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
  INV   \Mcount_w1_xor<0>11_INV_0  (
    .I(w1[0]),
    .O(Result[0])
  );
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

