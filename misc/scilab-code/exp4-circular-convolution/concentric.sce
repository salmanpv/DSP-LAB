// Input sequences
x = [1, 2, 3]; // Sequence 1
h = [4, 5, 6, 7, 8]; // Sequence 2 (different length)
// Determine the length for zero-padding (should be max length of both sequences)
N = max(length(x), length(h));
// Zero-pad sequences to the length N
x = [x, zeros(1, N - length(x))];
h = [h, zeros(1, N - length(h))];
// Initialize the output sequence
y = zeros(1, N);
// Circular convolution calculation
for n = 1:N
    y(n) = 0; // Initialize the sum for y(n)
    for k = 1:N
        // Calculate the circular index
        index = n - k; 
        if index <= 0 then
            index = index + N; // Manually handle circular wrapping
        end
        y(n) = y(n) + x(k) * h(index);
    end
end
// Display the result of circular convolution
disp(y);
