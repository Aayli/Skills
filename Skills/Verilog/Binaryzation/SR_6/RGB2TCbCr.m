%% Matrix multiply
clear, clc

%% Double
R = 10;
G = 150;
B = 120;
% R = 217;
% G = 232;
% B = 224;

num1 = .299;
num2 = .587;
num3 = .114;
num4 = -.168736;
num5 = -.331264;
num6 = .5;
num7 = .5;
num8 = -.418688;
num9 = -.081312;

Y = num1*R+num2*G+num3*B
Cb = num4*R+num5*G+num6*B+128
Cr = num7*R+num8*G+num9*B+128


%% Fixed
R = fi(R, 0, 8, 0);
G = fi(G, 0, 8, 0);
B = fi(B, 0, 8, 0);

num1 = fi(num1, 1, 8, 7);
num2 = fi(num2, 1, 8, 7);
num3 = fi(num3, 1, 8, 7);
num4 = fi(num4, 1, 8, 7);
num5 = fi(num5, 1, 8, 7);
num6 = fi(num6, 1, 8, 7);
num7 = fi(num7, 1, 8, 7);
num8 = fi(num8, 1, 8, 7);
num9 = fi(num9, 1, 8, 7);

x = num1*R+num2*G+num3*B
y = num4*R+num5*G+num6*B+128
z = num7*R+num8*G+num9*B+128

%% Step by step
% Multiply
mult1 = num1*R;
mult2 = num2*G;
mult3 = num3*B;
mult4 = num4*R;
mult5 = num5*G;
mult6 = num6*B;
mult7 = num7*R;
mult8 = num8*G;
mult9 = num9*B;

% First addition
add1 = num1*R+num2*G;
add2 = num4*R+num5*G;
add3 = num7*R+num8*G;

% Secound addition
add4 = add2+mult6;
add5 = add3+mult9;

% Third addition
out1 = add1+mult3;
out2 = add4+128;
out3 = add5+128;

%%
% hex(R)
% hex(G)
% hex(B)
% bin(out1)
% bin(out2)
% bin(out3)