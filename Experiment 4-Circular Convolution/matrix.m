clc;
clear all;

x = [1, 2, 3];
h = [4, 5, 6, 7, 8];

N = max(length(x), length(h));

x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];

H = zeros(N, N);
for i = 1:N
    H(i, :) = circshift(h, i - 1);
end

y = H' * x';
y = y';

disp(y);