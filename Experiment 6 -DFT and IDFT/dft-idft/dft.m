clc;
clear all;
close all;
N=4;
x = [1 1 1];
L = length(x);
x = [x,zeros(1,N-L)];
X = zeros(N,1);
for k=0:N-1
    for n=0:N-1
            X(k+1)= X(k+1)+ x(n+1)*exp(-1i*2*pi*n*(k/N));
    end
end
disp(X);
disp(round(X));
disp(fft(x));