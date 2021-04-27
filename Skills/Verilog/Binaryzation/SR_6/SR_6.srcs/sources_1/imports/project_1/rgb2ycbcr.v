`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2021 15:36:27
// Design Name: 
// Module Name: rgb2ycbcr
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


module rgb2ycbcr(
    input clk,
    input de_in,
    input h_sync_in,
    input v_sync_in,
    input [23:0] pixel_in,
    output de_out,
    output h_sync_out,
    output v_sync_out,
    output [23:0] pixel_out
);

wire [14:0]add128 = 15'h4000;
wire [14:0]add128_d;

// Wspó³czynniki macierzy A
wire signed [7:0]num1 = 8'h26;
wire signed [7:0]num2 = 8'h4b;
wire signed [7:0]num3 = 8'h0f;
wire signed [7:0]num4 = 8'hea;
wire signed [7:0]num5 = 8'hd6;
wire signed [7:0]num6 = 8'h40;
wire signed [7:0]num7 = 8'h40;
wire signed [7:0]num8 = 8'hca;
wire signed [7:0]num9 = 8'hf6;

// RGB
wire [7:0]R = pixel_in[23:16];
wire [7:0]G = pixel_in[15:8];
wire [7:0]B = pixel_in[7:0];

// Wymno¿anie i dodawanie
wire signed [15:0]mult1;
wire signed [15:0]mult2;
wire signed [15:0]mult3;
wire signed [15:0]mult4;
wire signed [15:0]mult5;
wire signed [15:0]mult6;
wire signed [15:0]mult7;
wire signed [15:0]mult8;
wire signed [15:0]mult9;

wire signed [15:0]mult3_d;
wire signed [15:0]mult6_d;
wire signed [15:0]mult9_d;

wire signed [16:0]add1;
wire signed [16:0]add2;
wire signed [16:0]add3;
wire signed [16:0]add4;
wire signed [16:0]add5;
wire signed [16:0]add6;

wire signed [16:0]out1;
wire signed [16:0]out2;
wire signed [16:0]out3;


//////////Multiply////////
//latency = 3
mult
mult_1(
    .A(num1),
    .B(R),
    .CLK(clk),
    .P(mult1)
);
//latency = 3
mult
mult_2(
    .A(num2),
    .B(G),
    .CLK(clk),
    .P(mult2)
);
//latency = 3
mult
mult_3(
    .A(num3),
    .B(B),
    .CLK(clk),
    .P(mult3)
);
//latency = 3
mult
mult_4(
    .A(num4),
    .B(R),
    .CLK(clk),
    .P(mult4)
);
//latency = 3
mult
mult_5(
    .A(num5),
    .B(G),
    .CLK(clk),
    .P(mult5)
);
//latency = 3
mult
mult_6(
    .A(num6),
    .B(B),
    .CLK(clk),
    .P(mult6)
);
//latency = 3
mult
mult_7(
    .A(num7),
    .B(R),
    .CLK(clk),
    .P(mult7)
);
//latency = 3
mult
mult_8(
    .A(num8),
    .B(G),
    .CLK(clk),
    .P(mult8)
);
//latency = 3
mult
mult_9(
    .A(num9),
    .B(B),
    .CLK(clk),
    .P(mult9)
);


//////////First Addition////////
//latency = 2
add_16x16
add_1(
    .A(mult1),
    .B(mult2),
    .CLK(clk),
    .S(add1)
);

//latency = 2
add_16x16
add_2(
    .A(mult4),
    .B(mult5),
    .CLK(clk),
    .S(add2)
);

//latency = 2
add_16x16
add_3(
    .A(mult7),
    .B(mult8),
    .CLK(clk),
    .S(add3)
);



//////////Delay////////
//latency = 2
long_delay 
delay_1(
    .clk(clk),
    .ce(1'b1),
    .idata(mult3),
    .odata(mult3_d)
);

//latency = 2
long_delay 
delay_2(
    .clk(clk),
    .ce(1'b1),
    .idata(mult6),
    .odata(mult6_d)
);

//latency = 2
long_delay 
delay_3(
    .clk(clk),
    .ce(1'b1),
    .idata(mult9),
    .odata(mult9_d)
);

//latency = 7
long_delay #(.NUM_OF_BITS(16),.DELAY(7))
delay_4(
    .clk(clk),
    .ce(1'b1),
    .idata(add128),
    .odata(add128_d)
);



////////Secound Addition////////
//latency = 2
add_17x16
addd_1(
    .A(add1),
    .B(mult3_d),
    .CLK(clk),
    .S(add4)
);

//latency = 2
add_17x16
addd_2(
    .A(add2),
    .B(mult6_d),
    .CLK(clk),
    .S(add5)
);

//latency = 2
add_17x16
addd_3(
    .A(add3),
    .B(mult9_d),
    .CLK(clk),
    .S(add6)
);



////////Third Additional////////
//latency = 2
add_128
add128_1(
    .A(add5),
    .B(add128_d),
    .CLK(clk),
    .S(out2)
);

//latency = 2
add_128
add128_2(
    .A(add6),
    .B(add128_d),
    .CLK(clk),
    .S(out3)
);



//////////Delay////////
//latency = 2
long_delay #(.NUM_OF_BITS(17),.DELAY(2))
delay1(
    .clk(clk),
    .ce(1'b1),
    .idata(add4),
    .odata(out1)
);

//latency = 9
long_delay #(.NUM_OF_BITS(3),.DELAY(9))
delay2(
    .clk(clk),
    .ce(1'b1),
    .idata({de_in,h_sync_in,v_sync_in}),
    .odata({de_out,h_sync_out,v_sync_out})
);

assign  pixel_out[23:16] = out1[14:7];
assign  pixel_out[15:8] = out2[14:7];
assign  pixel_out[7:0] = out3[14:7];

endmodule
