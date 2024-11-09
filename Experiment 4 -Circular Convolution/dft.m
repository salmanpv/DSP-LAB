clc;
clear all;

x = [1, 2, 3];
h = [4, 5, 6, 7, 8];

N = max(length(x), length(h));

x_padded = [x, zeros(1, N - length(x))];
h_padded = [h, zeros(1, N - length(h))];

X = fft(x_padded);
H = fft(h_padded);

Y = X .* H;

y = ifft(Y);

disp(y);