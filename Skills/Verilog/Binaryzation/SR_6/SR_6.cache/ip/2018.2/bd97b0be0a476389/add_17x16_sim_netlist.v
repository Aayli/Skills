// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 14:18:09 2021
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
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
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
