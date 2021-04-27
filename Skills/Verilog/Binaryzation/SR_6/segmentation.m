clear, clc
I = imread('hand.bmp');

%% RGB 2 YCbCr
I_Y = rgb2ycbcr(I);

% A = [0.299, 0.587 0.114;
%     -0.168736 -0.331264 0.5;
%     0.5 -0.418688 -0.081312];
% I_YCbCr = A*I + [0 128 128]';

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

I_YCbCr = zeros(size(I), 'uint8');
I_YCbCr(:,:,1) = .299*R + .587*G + .114*B;
I_YCbCr(:,:,2) = 128 - .169*R - .331*G + .5*B;
I_YCbCr(:,:,3) = 128 + .5*R - .419*G - .081*B;

% Check
figure(1)
subplot(2,1,1); title("Matab");
imshow(I_Y);  
subplot(2,1,2); title("My version")
imshow(I_YCbCr)

%% Binaryzation
Ta = 100; Tb = 120;
Tc = 130; Td = 160;

Cb = Ta < I_YCbCr(:,:,2) & I_YCbCr(:,:,2) < Tb;
Cr = Tc < I_YCbCr(:,:,3) & I_YCbCr(:,:,3) < Td;
I_bin = Cb & Cr;

% Filtration
I_f = zeros(size(I_bin));
I_f(3:end-2, 3:end-2) = medfilt2(I_bin(3:end-2, 3:end-2),[5 5]);

figure(2)
subplot(2,1,1); title("Matab");
imshow(I_bin);  
subplot(2,1,2); title("My version")
imshow(I_f);

%% Center of gravity
[r, c] = find(I_f == 1);
x = uint8(mean(r));
y = uint8(mean(c));

figure(3); hold on;
imshow(I_f);
line([y y],[1 64],'Color','red','LineStyle','-')
line([1 64],[x x],'Color','red','LineStyle','-')