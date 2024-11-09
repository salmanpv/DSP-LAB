clc;
clear;
clf;
close;
x = [1, 2, 3];
h = [4, 5, 6, 7, 8];
L1 = length(x);
L2 = length(h);
L = max(L1, L2);
x_padded = [x, zeros(1, L-L1)];
h_padded = [h, zeros(1, L-L2)];
y_linear = conv(x, h);
y_circular = y_linear;
for i = L+1:length(y_linear)
    y_circular(i-L) = y_circular(i-L) + y_circular(i);
end
y_circular = y_circular(1:L);
disp(y_circular);
