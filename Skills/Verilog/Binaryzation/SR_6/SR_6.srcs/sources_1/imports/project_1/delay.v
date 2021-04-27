`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2021 11:12:54
// Design Name: 
// Module Name: delay
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


module delay #(
    parameter NUM_OF_BITS=5
)
(
    input [NUM_OF_BITS-1:0]idata,
    input clk,
    input ce,
    output [NUM_OF_BITS-1:0]odata
);
 
reg [NUM_OF_BITS-1:0]val=0;
 
always @(posedge clk)
begin
    if(ce) val<=idata;
    else val<=val;
end

assign odata=val;

endmodule
