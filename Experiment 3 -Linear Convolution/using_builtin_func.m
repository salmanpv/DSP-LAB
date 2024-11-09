clc;
clear all;
close all;

x = [1, 2, 1, 1];
xn = 0:3;
h = [1, 1, 1, 1];
hn = 0:3;

y = conv(x, h);
yn = min(xn) + min(hn):max(xn) + max(hn);

subplot(3, 1, 1);
stem(xn, x);
xlabel('n');
ylabel('value');
title('x(n)');
grid on;

subplot(3, 1, 2);
stem(hn, h);
xlabel('n');
ylabel('value');
title('h(n)');
grid on;

subplot(3, 1, 3);
stem(yn, y);
xlabel('n');
ylabel('value');
title('y(n)');
grid on;