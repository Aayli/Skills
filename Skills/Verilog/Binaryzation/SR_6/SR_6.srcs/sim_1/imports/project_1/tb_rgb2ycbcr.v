`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2021 13:04:28
// Design Name: 
// Module Name: tb_rgb2ycbcr
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


module tb_rgb2ycbcr();

reg clk = 1'b0;
wire de_in = 1'b1;
wire h_sync_in = 1'b1;
wire v_sync_in = 1'b1;
wire [23:0] pixel_in = 24'h0000ff;
wire de_out;
wire h_sync_out;
wire v_sync_out;
wire [23:0] pixel_out;


    
initial
begin
    while(1)
    begin
      clk=1'b0; #1;
      clk=1'b1; #1;
    end           
end
   
rgb2ycbcr test(
    .clk(clk),
    .de_in(de_in),
    .h_sync_in(h_sync_in),
    .v_sync_in(v_sync_in),
    .pixel_in(pixel_in),
    //    .sw(sw),
    .de_out(de_out),
    .h_sync_out(h_sync_out),
    .v_sync_out(v_sync_out),
    .pixel_out(pixel_out)
);

endmodule
