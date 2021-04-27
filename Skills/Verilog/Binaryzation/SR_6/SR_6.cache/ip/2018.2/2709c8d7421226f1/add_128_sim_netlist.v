// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 19:02:39 2021
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
  (* c_b_type = "1" *) 
  (* c_b_value = "10000000000000000" *) 
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "10000000000000000" *) 
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
  (* c_b_type = "1" *) 
  (* c_b_value = "10000000000000000" *) 
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
FLzIow87ovq/ft3/FIc0VF3RVyaltmxyLInt/qCeg7id4ytSmD33EAKbsCaq7+cb16Vq2dRtKTQW
h20IwZgJ1EH2lE4oZCQdmVE/U9uvF/LjA/514x6Iy/3riNBez2B4dVycrX6wtnJjbcX0Vw9TE8mU
pLYjlnutHFmiNTcUYwzpq0nKSED6rhKubdN0bd3Pgd2sXovN5I3ghdi5DJhJ8cmaZP+cEeB1tTYU
pz7xMvqqY2qGwCwhdiXBc5E5uRwEeSSZZHHchyqrrXc4HO9b0MLsML5ONa6vy5HhvljpTrUmPe1a
XCyBc+/QkVGa2PH+kDCDaRwr0GKr4NKEhVTvLA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QQ97H2EeMgLvl/Paebmhndk6/nhiPRVE/7NJUCNblVGIFURkI3DZUTgXCzhmITjIht5AtNRHLYnh
8o76sY9nIEdmraILgEkViq/hLooMOXvRUGI/e29J0be7T2MdErBMAYEGlIgKSkz3FSkpdTFa9uw6
PesjOzHDlPP36SE+55Rt/t4BduE6RlzjwoGMcdJxdhh0N2Ea01D8G5NIpAyntCYdi8tW9awe2roW
Tay7q3jo26jP1WXQuhP7R4mgY1+sl9r2WpPtnqJF4bbwTS/xkB8jWrF0eoJn0xZolQcirr6BZfp6
f8ExmXmKVqQDFSReZtTubgz62ORKA6mXEmc8dg==

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
