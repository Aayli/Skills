// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Apr 18 21:58:14 2021
// Host        : DESKTOP-30HBKBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Aayli/Desktop/rgb2ycbcr/SR_6/SR_6.srcs/sources_1/ip/add_128/add_128_stub.v
// Design      : add_128
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *)
module add_128(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[16:0],B[14:0],CLK,S[16:0]" */;
  input [16:0]A;
  input [14:0]B;
  input CLK;
  output [16:0]S;
endmodule
