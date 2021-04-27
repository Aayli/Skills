// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 17:03:56 2021
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
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [16:0]S;

  wire [16:0]A;
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
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "10000000" *) 
  (* c_b_width = "8" *) 
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "10000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
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
  input [7:0]B;
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
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "10000000" *) 
  (* c_b_width = "8" *) 
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
BicURPhgnfdtCNSiaNHYzfW27c4BDe/sptgQX27WuRymNUjMXuy4/Oi1JlfJgIWh8O5lzKIdkmuz
ogHIW/AoVOYdIsuTdrAuxCql03L/FtAwt3mf+D16e2/5+b8hkJri2E6U4AMzzLBPgDJmQ3INDrX5
9Vb3I6Uauc+PWHZiXw+QCjNe+8ticticBfPiZgg8pdS2UPFj1JtalhcmYQp1O3rBs3pPlp481h3R
qqQPMN8rxmCTBF/IXxdy1ID56Py1zxOabqFGvbQaIEtFXDl+2Ex2N+jXKtXSUMTk59CBXnlIHmTS
eRHUquNXhPZ618qXqIq3sdc1SswXLZErn+OxqA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yLGYD2heUWsQpMvDolvCRD4s5lAXTxC5/A2h54/3XzGPPz53GY0R7OS7vpZKgQLCFe2oQAgy6wLW
mCAZJWUoaLG8iaB0y84dGVSh5oaR7zuyzi35R4xxIneEeUVFaQvFkYlv/BlffZKL+xY6ghIJ4zuP
WwY4FGuQSFoTe+A7xQZ3WFPSJCBhpsS9FEipdZw7kGzUYYs3x3Q8DUHDsapDfVxeQkVw7gKT/H8X
mDuplDSBw3CI/5GjlhgmDpqeZcmpjLYPwlYv8F+SvSEcM/9wJ81OlBAIVzHULlMBAdR1c+8HQxDL
jVlEklZXHB8EbYn3JU7zduBVqGoWg3ce2pZcrg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19920)
`pragma protect data_block
+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
yZhzMEtwHB5WlJRq/LDOscVUqUphT7gv06O5
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
