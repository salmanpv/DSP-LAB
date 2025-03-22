clc;
clear all;
close all;
N=4;
X = [3 -1i 1 1i];
%L = length(X);
%X = [X,zeros(1,N-L)];
x = zeros(N,1);
T = zeros(N, N);
for k = 0:N-1
    for n = 0:N-1
        T(k+1, n+1) = exp(1i * 2 * pi * k * n / N);
    end
end
x=T*X';
x=(1/N).*x;
disp(x);
disp(round(x));
disp(ifft(X));