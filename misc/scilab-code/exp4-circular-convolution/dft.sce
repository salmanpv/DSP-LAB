// Input sequences
x = [1, 2, 3]; // Sequence 1
h = [4, 5, 6, 7, 8]; // Sequence 2 (different length)
// Determine the length for zero-padding (should be max length of both sequences)
N = max(length(x), length(h));
// Zero-pad sequences to the length N
x_padded = [x, zeros(1, N - length(x))];
h_padded = [h, zeros(1, N - length(h))];
// Compute the FFT of both zero-padded sequences
X = fft(x_padded);
H = fft(h_padded);
// Multiply the FFT results element-wise
Y = X .* H;
// Compute the inverse FFT to obtain the circular convolution
y = ifft(Y);
// Display the result of circular convolution
disp(y);
