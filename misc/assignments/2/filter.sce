// Parameters
Fs = 1000;                // Sampling frequency (Hz)
t = 0:1/Fs:1-1/Fs;        // Time vector
f = 4;                   // Frequency of sine wave (Hz)

// Generate sine signal
x = sin(2*%pi*f*t);

// Design a low-pass filter using a simple moving average filter
N = 10;                   // Order of the filter (number of taps)
h = ones(1, N)/N;         // Impulse response of the low-pass filter

// Perform linear convolution
y = conv(x, h);

// Time vector for the convolved signal
t_conv = (0:length(y)-1)/Fs;

// Plotting the signals
clf;
subplot(3,1,1);
plot(t, x);
title('Original Sine Signal');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot((0:N-1)/Fs, h);
title('Low-Pass Filter Impulse Response');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t_conv, y);
title('Convolved Signal');
xlabel('Time (s)');
ylabel('Amplitude');
