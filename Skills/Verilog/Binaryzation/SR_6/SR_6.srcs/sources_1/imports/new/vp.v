`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2021 11:23:14
// Design Name: 
// Module Name: vp
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


module vp(
    input clk,
    input de_in,
    input h_sync_in,
    input v_sync_in,
    input [23:0]pixel_in,
    input [2:0]sw,
    output de_out,
    output h_sync_out,
    output v_sync_out,
    output [23:0]pixel_out
);

wire de_ycbcr;
wire h_sync_ycbcr;
wire v_sync_ycbcr;
wire [23:0]pixel_ycbcr;

wire de_mux[7:0];
wire hsync_mux[7:0];
wire vsync_mux[7:0];
wire [23:0]rgb_mux[7:0];

////////Original////////
assign de_mux[0] = de_in;
assign hsync_mux[0] = h_sync_in;
assign vsync_mux[0] = v_sync_in;
assign rgb_mux[0] = pixel_in;

////////YCbCr////////
rgb2ycbcr ycbcr(
    .clk(clk),
    .de_in(de_in),
    .h_sync_in(h_sync_in),
    .v_sync_in(v_sync_in),
    .pixel_in(pixel_in),
    .de_out(de_mux[1]),
    .h_sync_out(hsync_mux[1]),
    .v_sync_out(vsync_mux[1]),
    .pixel_out(rgb_mux[1])
);

////////Binaryzation////////
binaryzation bin(
    .pixel_in(rgb_mux[1]),
    .pixel_out(rgb_mux[2])
);
assign de_mux[2] = de_mux[1];
assign hsync_mux[2] = hsync_mux[1];
assign vsync_mux[2] = vsync_mux[1];


////////Output////////
assign de_out = de_mux[sw];
assign h_sync_out = hsync_mux[sw];
assign v_sync_out = vsync_mux[sw];
assign pixel_out = rgb_mux[sw];
    
endmodule