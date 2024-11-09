x1 = [1 2 3];
x2 = [1 2 1 2];
L = max(length(x1),length(x2));
x1 = [x1, zeros(1,L-length(x1))];
x2 = [x2, zeros(1,L-length(x2))];
a=2;
b=3;
x3=(a).*x1 + (b).*x2;
lhs=fft(x3);
X1 = fft(x1);
X2 = fft(x2);
rhs = a.*X1 + b.*X2;
lhs
rhs