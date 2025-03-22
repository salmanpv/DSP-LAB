clc;
clear;

x = [1, 2, 3];
h = [4, 5, 6, 7, 8];

N = max(length(x), length(h));

x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];

y = zeros(1, N);

for n = 1:N
    y(n) = 0;
    for k = 1:N
        index = n - k;
        if index <= 0
            index = index + N;
        end
        y(n) = y(n) + x(k) * h(index);
    end
end

disp(y);