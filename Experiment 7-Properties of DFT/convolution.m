x1 = [1 2 3];
x2 = [1 2 1 2];
L = max(length(x1),length(x2));
x1 = [x1, zeros(1,L-length(x1))];
x2 = [x2, zeros(1,L-length(x2))];

lhs = cconv(x1,x2,L);
lhs = fft(lhs);

X1=fft(x1);
X2=fft(x2);
rhs = X1.*X2;

lhs
rhs