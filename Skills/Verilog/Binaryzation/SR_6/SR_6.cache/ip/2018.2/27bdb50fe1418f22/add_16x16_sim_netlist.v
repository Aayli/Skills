// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 14:17:32 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ add_16x16_sim_netlist.v
// Design      : add_16x16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_16x16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
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
n50VJW+iTxaIIVzAETqW1Y8NBLtlVZ5czFawjN/ORrNbeBuv305HCVsCHi/ztvQfxB+HkdJfI1rN
o2a4aOfWAyuVWJy96GuXyDnxkgPMXFKjE0uliIc/8Fz24lP+d239w/eFtQ5hYm1rqF6ZnbfzEKSb
nBPs+6llRCXab6fYICgfgCZQwzMEOhJk5/X1IfB/wT/obq2vETRUlUuXWDky+9KtmHIu5k99XOG8
r2ahUcLip/xSXxfzZMbD7SzLTRV5k4dbqcE8IcGXNY3RS0MUO1Nt+33QIKJvMDy/ZbRuw+HGW3zp
3bPdnnbO18Y7tbL5DviahYK2xB6WSj0FseS/tg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QQ+rFFTFkY8hOJMB0+KNZ3Ov9UKYXNnjjUKWLmjK8Ob/aomoYkYPZjth34Xb2UDqe/90xZXt434o
/8sHcTeJjANJolMa8mJCIZtkLu/1kNoIy9RBEdugbCbivNQ2ojBRwbsaFRDIrgA7HpKhc19iXfdU
ek7COWXb67JqCPBqlE7y4udfx1aFkNc1ax4y051ErYNTc0qgTEEsL0c7nMTIvjw1eg5PiqtTiN+D
oS1sG0PVpW4b/YVoRS1CI4kdv5cZou2qQRErRK0g1Wk4L/ILOdtGKyppjeY6lqq1qPwNZkHpZP9J
YcnDJXjdqz2WfmudsMX6+cHDxVnsMQnbwa/sgA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26224)
`pragma protect data_block
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
qYAdtw==
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
