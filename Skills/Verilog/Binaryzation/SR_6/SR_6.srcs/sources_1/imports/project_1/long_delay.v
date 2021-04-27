`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2021 11:34:57
// Design Name: 
// Module Name: long_delay
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


module long_delay #(
    parameter NUM_OF_BITS=16,
    parameter DELAY=2
)
(
    input [NUM_OF_BITS-1:0]idata,
    input clk,
    input ce,
    output [NUM_OF_BITS-1:0]odata
);
 
wire [NUM_OF_BITS-1:0]chain[DELAY:0];
assign chain[0]=idata;

genvar i;
generate
    for(i=0;i<DELAY;i=i+1)
    begin
    delay #(
       .NUM_OF_BITS(NUM_OF_BITS)
    )
    delay_i
    (
        .idata(chain[i]),
        .clk(clk),
        .ce(ce),
        .odata(chain[i+1])
    );
    end
endgenerate

assign odata=chain[DELAY];

endmodule