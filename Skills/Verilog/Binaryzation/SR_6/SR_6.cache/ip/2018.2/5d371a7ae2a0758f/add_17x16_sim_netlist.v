// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 17:47:14 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ add_17x16_sim_netlist.v
// Design      : add_17x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_17x16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [16:0]A;
  wire [16:0]B;
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
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000" *) 
  (* c_b_width = "17" *) 
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000" *) 
(* C_B_WIDTH = "17" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
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
  input [16:0]B;
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
  wire [16:0]B;
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
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000" *) 
  (* c_b_width = "17" *) 
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
L/pSBH0abkbmz1+5cshpRQf0pQPdm0Pf++A9320c2LSy0pC7drQXAGbI1MMAxVlZidotAgPTEf5b
LfD72L/btrPiqJoqNeSUTetzWOY8jKvsLoJRKYj6/jjgEMxrY17BWVYzlsEmgaMfU3Q7Yojb0fq6
I23xl3ayXN+2fdV1au6/pHx3xevdFOy4FDHIy1xKCUDW679W6UGwtt6yac/Xa0T7ZEwz2d8990mX
qnAKFGzTK9UgJpXIWQu0s+rSKT2RGI1Ucs0pvhgjqg0pIXqROqik0ritdd03lggaRUhK0CgDjJUy
JtZhriwCn0/iIM7op4SJ2aP8XPXxmjdcViKDUw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IYwfkR2xCYT6YjZb7tFOPJj5rtWpewn/io5XNKWseF9sWxdYWBaqBXdfmba2LUhHc4+IJno7Tfs7
7JBx1aKIvKp1dui8w7MMEn4ksKqUOaeiQoJ4nl1IplI6GEjSNRJeHUKAHQ94mS/PLrZg6PDr0joo
kJMs0POtHy+TT4dvER6R+YUWEmkW4kB+mBxuy5nPXwqjJPP8rOIuyD94mnD+gmGwtzltqjo7lw5a
AXyuHjOCcYRwnHoS3ccpFUiGoIL7amTOTXR/8BHigGl1oBn85yTCgHJorBQ7Uac7PngF7+m7UzIV
mbTqwlTwqAGP6XtK4vWum9O6LQxTyaaovfpANA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24848)
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
