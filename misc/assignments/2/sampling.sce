// Step 1: Generate a sinusoidal signal
f_signal = 1000; // Frequency of the sinusoid (1 kHz)
t = 0:1/50000:0.01; // Time vector (0 to 0.01 seconds, sampled at 50 kHz)
original_signal = sin(2 * %pi * f_signal * t); // Generate the sinusoidal signal

// Step 2: Plot the original signal in time domain
clf;
figure();
subplot(2, 1, 1);
plot(t, original_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Sinusoidal Signal (1 kHz)');

// Step 3: Sample the signal at a rate below the Nyquist rate
fs_alias = 1200; // Sampling frequency (1.2 kHz), which is below the Nyquist rate (2 * 1 kHz)
t_alias = 0:1/fs_alias:0.01; // New time vector with lower sampling rate
aliased_signal = sin(2 * %pi * f_signal * t_alias); // Aliased sinusoidal signal

// Step 4: Plot the aliased signal in time domain
subplot(2, 1, 2);
plot(t_alias, aliased_signal, 'r');
xlabel('Time (s)');
ylabel('Amplitude');
title('Aliased Signal (Sampled at 1.2 kHz)');

// Step 5: Frequency domain analysis
n_original = length(original_signal);
n_aliased = length(aliased_signal);

// FFT of the original signal
spectrum_original = abs(fft(original_signal)); // Compute FFT without specifying length
frequencies_original = (0:n_original-1) * (50000/n_original); // Corresponding frequency vector for original

// FFT of the aliased signal
spectrum_aliased = abs(fft(aliased_signal)); // Compute FFT without specifying length
frequencies_aliased = (0:n_aliased-1) * (fs_alias/n_aliased); // Corresponding frequency vector for aliased signal

// Step 6: Plot frequency spectrum of the original and aliased signals
figure();
subplot(2, 1, 1);
plot(frequencies_original, spectrum_original);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Original Signal');

subplot(2, 1, 2);
plot(frequencies_aliased, spectrum_aliased, 'r');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Aliased Signal');
