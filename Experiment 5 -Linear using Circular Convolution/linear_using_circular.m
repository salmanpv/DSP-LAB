clc;
clear all;
close all;

x = [1 2 3 4];
h = [1 1 1];

L1 = length(x);
L2 = length(h);
N = L1 + L2 - 1;

x_padded = [x, zeros(1,N-L1)];
h_padded = [h, zeros(1,N-L2)];
%cconv marannu
X_fft = fft(x_padded);
H_fft = fft(h_padded);
Y_fft = X_fft .* H_fft;
y_circular = ifft(Y_fft);

disp(y_circular);

y_linear = conv(x,h);
disp(y_linear);