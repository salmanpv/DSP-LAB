clc;
clear all;
close all;

x = [1 2 1 2];
Lx = length(x);
h = [3 2 1 2];
Lh = length(h);
Ly = Lx + Lh - 1;

x_new = [x, zeros(1, Ly-Lx)];
h_new = [h, zeros(1, Ly-Lh)];

for n = 1:Ly
    sum = 0;
    for k = 1:n
        sum = sum + x_new(k) * h_new(n-k+1);
    end
    y(n) = sum;
end

disp(y);