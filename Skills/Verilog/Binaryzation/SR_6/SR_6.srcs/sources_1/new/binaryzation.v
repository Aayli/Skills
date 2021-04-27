`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2021 14:19:58
// Design Name: 
// Module Name: binaryzation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module binaryzation#(parameter Ta=100, parameter Tb=120, parameter Tc=130, parameter Td=160)
(
    input [23:0]pixel_in,
    output [23:0]pixel_out
);

///////Another version///////
wire [7:0]Cb = pixel_in[15:8];
wire [7:0]Cr = pixel_in[7:0];
wire [7:0] bin;
assign bin = (Cb > Ta && Cb < Tb && Cr > Tc && Cr < Td ) ? 8'd255 : 0;
assign pixel_out[23:16] = bin;
assign pixel_out[15:8] = bin;
assign pixel_out[7:0] = bin;


endmodule
