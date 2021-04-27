// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 14:18:09 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top add_17x16 -prefix
//               add_17x16_ add_17x16_sim_netlist.v
// Design      : add_17x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_17x16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_17x16
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
  add_17x16_c_addsub_v12_0_12 U0
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "17" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module add_17x16_c_addsub_v12_0_12
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
  add_17x16_c_addsub_v12_0_12_viv xst_addsub
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
gvAcXqOHzAgOFo/UrGch9k2ybtKr5Kep6+KA3xk85qVPuM/b1gwd2X0J3yDeztNL4Ppiqb+HdUoC
jnJ5ZeVMLCzD0RQNYpEvs3smNnS1LKKD/37fgrD+fMO91QYB1IarfGjXJV3OEnKtiU7BQ7TgOcEb
Y6nqQTzoi3NLmDwpTPUofaj/zjORkUKUv80vfTrAG7HPSGdZEl4auXlm1lXyJFvwS5Jd6OATweqU
7o3lzf23oTBpUgmpnoVcoGKjVoiFlTOyz4TPofyoaSx4ARnC2o6sLnzORliYcTfIhKVv0uvnwT6W
3pljDrpbx1CHcH01LKjJGV0N76DVmtT5DuBqrQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YQiN3u2joqhmgFUxbyadlSA/4886SeO5m7f4nFAIs7jKofA8Kbr3mvrSTf5gxidB/SAA/HCrOGom
X7on7oGA/b14gIjlM5RTPQhmcECrf0G/H19YABBCY+osjC7o0aQGnEhPAuI1J5iWH5WxtC9pXzq8
u9qpZSuf3fGqrzZXt1BJzinzKQd7CTcAfjHJIm6RbEnk1lQWrwKQw81SYiVKb5+WMzomQE6Oahad
a7NhpPhxPLK0Zf+8jjMGlNzyTQZJohsjJCpV9fSo3/0SwwhX5pqVt4AUZbWLuGBgAj/xP/xwU2ES
pkE6pDGr44oQi7Mv8gSwAgf4+xBzjiLju9oavw==

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
