clc;
clear all;
close all;
N=4;
X = [3 -1i 1 1i];
%L = length(X);
%X = [X,zeros(1,N-L)];
x = zeros(N,1);
for k=0:N-1
    for n=0:N-1
            x(n+1)= x(n+1)+ X(k+1)*exp(1i*2*pi*n*(k/N));
    end
end
x=(1/N).*x;
disp(x);
disp(round(x));
disp(ifft(X));