clc;
clear all;
close all;
N=4;
x = [1 1 1];
L = length(x);
x = [x,zeros(1,N-L)];
X = zeros(N,1);

T = zeros(N, N);
for k = 0:N-1
    for n = 0:N-1
        T(k+1, n+1) = exp(-1i * 2 * pi * k * n / N);
    end
end
X=T*x';
disp(X);
disp(round(X));
disp(fft(x));