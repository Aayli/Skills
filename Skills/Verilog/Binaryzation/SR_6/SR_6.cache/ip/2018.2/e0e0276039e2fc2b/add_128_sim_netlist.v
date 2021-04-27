// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 21:58:13 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ add_128_sim_netlist.v
// Design      : add_128
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_128,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [14:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [16:0]A;
  wire [14:0]B;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "100000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "17" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "100000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "17" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12
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
  input [16:0]A;
  input [14:0]B;
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
  wire [16:0]A;
  wire [14:0]B;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "100000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "17" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_12_viv xst_addsub
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
XnBX7sNHEvW5B3VIanMPQ6Vhxrw0btX/hfLeYihlDIj8jWdwWf4zH7it+HkxRO7vDFcJVn/R4GkG
a+OV765TTbYpiKbegpegpw/IKZcYmisp5BWPfgvuVxb1rRofDLZ8tqGGWgq6Uv82LDPYSv2iKRAV
ZTORn0JrGqiosjYBDnDcwK6yxGpa1fJTf4U/mO32xWG8szGYHcpkCQ6hrBVfu/Icvh0LWsD5RK9a
PcDpoD3GVZZ5+8uMq/r4/C9PRK2SluH3e5DAqYrCtJ2ct1QTQ4sd3Ibi3M3gbG/VES5/guoXw/AJ
Mp8ngCcVZXzOyyooMKE0olYVgyfj/Ayrqi9Ezg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GHk4TP3IL1jyP6iT2hY5moGL6bI/4OXT68zk8ihf/WdeUskAT9YPmygojdv2Kaiyy1R//yZYqfwU
g7Mw2+lqrRDVgvpoain6Y2vjWAnoJoGrlPpaJpV+gDurzM0aoUaJgiG4SkWF0DZzQ3+nmmQLYLW9
DolLHIf5P1zvSsHYHYIlDJifBgwSEpr7lXjuy9G9ei8UqHnWsEJmrxPJWwWkGu1QNRKj21H6m2SD
uTK3sJ0BbZYN3vKKoWWiXKf2hbtfUuAv/xSprlFnV765QAM2oRARII6u4rKYvP5x2P71VRQy4Y1J
NwtkuvPUVBLWhqYiVGKxoHk9OYMYdYrSBigPVw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24400)
`pragma protect data_block
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
aMS+2A==
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
