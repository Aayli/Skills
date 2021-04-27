// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 14:17:33 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Aayli/Desktop/rgb2ycbcr/SR_6/SR_6.srcs/sources_1/ip/add_16x16/add_16x16_sim_netlist.v
// Design      : add_16x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_16x16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_16x16
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_16x16_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "17" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_16x16_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [16:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [16:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_16x16_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wp7bNRWSUqNloxONFPKM0e23rIRNxM18j+Xs89PVwOApPdnEE69L8g2MwXWR9TlsjVZTYfnEwmg7
lT9pYklgHQUxX3+T2sLWhGRkCn3psSlypAO/K5jcrgGUakB6YVr3AAAyTytvFj7PE9JNT5bWTXKo
u10ukv0Tp90vjsNFSQAL+dIwBiNiW1cnZH1G/oJxFeJooDRwc/utIzhto5lHspcoGEtMvy/uFnXO
MQtY4HeOfFRAb1nxQc0gV+yISgtYq16WjaxVubKfZN0LKteC8lhIsD3/5f4o764rRbFLbwqlyCcR
745hOZF4wfyJBYIPYX2bnT5umDrG+RtF8+8oTA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qCVf8zoSs+CYw87WVe8kwn/77QkDOFx8ZnweoS5s67v1AC5GbCKObPMrMRJ6GZZ2QoDf41/L2sTf
7Ad/JQCnvJlYoNxtZW9b1+OIKFc0kpeMf5HxWc08CRE5qQg13U166REe098KLwv4EeVqGBWcuZbE
wX/rSFF6lBu6GxWCVnKQV0+X3V0vJE7kYZHwFQdozDam2W1wuct01+oFZR3HiBbJwoqjksvPe9eK
+V0oANJAAQQAgTI4OBbiP6KIgKZvQ3RmvFxtcmiJpHdy25ynq/wlD6FJnRxm1vTzt3cvYGkAKrzs
TK6BrHZj2ubOTOTZhZeyvRunxVVq0F3kxHTPCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25680)
`pragma protect data_block
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
`pragma protect end_protected
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
