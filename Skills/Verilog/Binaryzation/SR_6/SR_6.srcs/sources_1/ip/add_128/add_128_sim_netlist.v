// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 21:58:14 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Aayli/Desktop/rgb2ycbcr/SR_6/SR_6.srcs/sources_1/ip/add_128/add_128_sim_netlist.v
// Design      : add_128
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_128,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_128
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
  add_128_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_128_c_addsub_v12_0_12
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
  add_128_c_addsub_v12_0_12_viv xst_addsub
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
IEmdXVgpm2CgJYWSJazvUkFayMIrupmg4k/yiZaOgshg6YOqYLoXUoydWOVS5kvPZibJLsCskrEm
/kZMC4j/5b5WpUTef3AoLXS8YeJNw0S14LJVz2BrJfpDgxIjSAqUw/4MyenJHp5sTFTVp41Fz6js
kVIub62hoOtBMjiXGqhmsw8/Y500HRwpyhzrxnOGX9W/W0qK11GYKXbkzeZhLasZZELJVLFDudeI
lKyAJpYfOHsm7RcBU8TtxkITyOQfLE9uyGCq0WTRk40OscpPVKhVyEpfGMXZdMyL3nFA0ga54FuO
gwOlxxT93Jm28h4BTI/III+VMorSYgM82nYEeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
amruwXEQD5rvv5Fzon4C+KIpPZD8I5IxfENnmvy8rqjagimMuOxnQ83m4dHYU6AsQPb0ehA18NJ5
vj8mv7E4qgGIilLYRAhQwoUP+PqarvgQ5H39ulE50conuCFFiOJCia8vHxERa7iAmcTzRGQOsgPB
+P7zeSiCyWJ892D+Jvoblwf3AskjQ66twf5SKS+j0IQaMdI60LrFrV8+Php6m/nb9zWmHqYWc2+z
bj8xy4gZzZRWPkRXhFBt3Cz4ZqAWs9mouFzVCdU2FpVeHAePIj+YBwkktGcHLgHtPWCN/tV33F3l
lS4t0xuaZ91aAlZIoUTrs5YRE9i3ulLramrLQQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 23808)
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
