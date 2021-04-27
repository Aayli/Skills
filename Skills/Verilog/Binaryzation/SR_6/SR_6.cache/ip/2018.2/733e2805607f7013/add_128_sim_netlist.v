// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 17:20:53 2021
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1000000000000000" *) 
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
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
gWlsaquWgTBzhPDWSc5qE0unPdwe9E7scUbQKpONB70Aq4WWSdqox+9eNaD/S/VOWod0eVdu2OOJ
+2fw7tWd34yzVcW+4jj+VMTfXPtp8dAssL42N7ay+WOfp/R2BEOUsoxwIFQzpE4vIX1Yk73QSmC6
iMftfbaqjS54tS5k06O4Cbg1Apqy2UKfyTjBRbR+0wRO8ihNAVCR3GHJnXFCK8UoSFI2dHS+6a+C
VLOxNaAB/uNyRGOWxdJ5Ca+/e9iEZf2HofOF9AOB2T7Xfc8Vxtte1EQuNTFcNlAYEdhm7Zhj41mZ
KWUQkKk71RpZbkGD/N4LUuW5O5H0IOCIdLqrmg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5rG3fryAoTpmlY2ulSUoJ6aeWbtddpLcFwYq2GrHQIK8GWgaZvu2l1QZaEs2DbecZB/2Oylo3Usj
sVPK0NUwxIrMGlRNwIAX7s5OHj7ZQBF9CW3eyH0i6l2GBlbZq3pl+fhG2cHJ1eT4sY/K/FLcvS7X
xFUPzwcQAeg+LFxKQ7LdcM86FJqrZQvebDVXEHR+UDUQsZDD/K09ca7qy9HWskGxOf37V8k8RNvE
p2UXqvvdxXmkdRfPyDfkeUfviXWyFtN06M+JVonouX2Vi7+Kr13aYPCIOaq7PgtF6HgPSqbsK7vk
IRX0gfSHe3TLqEyqglY3I0YrC3ILjcsX182mAA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20112)
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
