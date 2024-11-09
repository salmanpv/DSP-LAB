x = [-1 2 -3];
X = fft(x);
lhs = sum(abs(x.*x));
N=length(x);
rhs = sum(abs(X.*X));
rhs = (1/N)*rhs;
lhs
rhs