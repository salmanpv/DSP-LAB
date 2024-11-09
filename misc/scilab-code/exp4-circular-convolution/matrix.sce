// Input sequences
x = [1, 2, 3]; // Sequence 1
h = [4, 5, 6, 7, 8]; // Sequence 2 (different length)
// Determine the length of the longest sequence
N = max(length(x), length(h));
// Zero-pad the sequences to make them equal in length
x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];
// Create the circulant matrix from sequence h
H = zeros(N, N);
for i = 1:N
    H(i, :) = circshift(h, i - 1);
end
// Compute the circular convolution by multiplying H with x
y = H' * x';
// Convert the result from a column vector to a row vector
y = y';
// Display the result of circular convolution
disp(y);
