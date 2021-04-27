// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 19:01:48 2021
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [16:0]A;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1000000000000000" *) 
  (* c_b_width = "16" *) 
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
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
  wire [16:0]A;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1000000000000000" *) 
  (* c_b_width = "16" *) 
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
nIcSB4GQPEXSyGO7YWNFZFui6JihMJhQxx54WVTtPYO7Et0INPL3resW6KKRrymCX8Y01lHgqbZQ
FnqdCTDGfuTtyowivYTY85jZGD5cCwSsxMyaFXJ2etVf5+VUmC86mhaDjTUQ1W18p37mbdXdbCqH
Y28PyUCjl7M9Yi650DWSukKhPWrFfSoJu5nBGtLkyYKrIj0g/h/H2NmXEECvMk8fdv/JM+ROt6PL
+0zSI9aS6JI2qOcZQiEG0G4wrjSL0Ux28Iuu3pkaXjWs2J6sRukiGLHIkMXzjTi/5kmiI8ZSQ0WJ
puEq4BcCL0NwjaaeyVPmKyvKmW+TKqmsqiE8xQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
i+zVwHuXGmLp5p5Gpr+fy6aKQ8YvTshtoLf6i3Cu1x9WrmZCyrmcaMa9SOm6gQwv/EF+HdDiMvEd
c68KCgmQOimKwjSJHzNwsYsPBgrIf6xqTmk61/Aqr4/QO5i2U4SKKaIpqV2bfYl86i3E3foU3zJ7
eNdsfWmLowcPscXh1rBwR3IaPnfJyh7SuDrIbkjlkr8Zwr+Fy8n23OwNL3eVqZ09s4oIJru1UIU4
07vwuBAPo7C58PxcgZBBfF7erK9890I9F22a3znKGDIeXv7eiBRpYE+qlr+Epb2IfXuInQCv5uxK
t7ssj1wFSfFcjJ038gMDm0szHPffU3nkyBGeyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24720)
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
