// Step 1: Load the audio file
// Replace 'path_to_your_audio_file.wav' with the actual path to your downloaded .wav file
[audio_signal, sample_rate] = wavread("C:\Users\imsal\Desktop\dsp lab\audio.wav");

// Display basic information about the signal
disp("Sample Rate: " + string(sample_rate) + " Hz");
disp("Audio Signal Length: " + string(length(audio_signal)));

// Step 2: Perform the Fourier Transform to analyze the frequency content
n = length(audio_signal);
audio_spectrum = abs(fft(audio_signal)); // Get the magnitude of the FFT
frequencies = (0:n-1) * (sample_rate/n); // Calculate corresponding frequency values

// Step 3: Plot the frequency spectrum of the audio signal
clf; // Clear the figure window
//figure();
subplot(2, 1, 1);
plot(frequencies, audio_spectrum);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Original Audio Signal');

// Step 4: Find the maximum frequency component (fm)
// SCILAB doesn't support the ~ syntax, so we need to separate the max function
[max_value, max_index] = max(audio_spectrum(1:n/2)); // Only consider the first half of the spectrum
fm = frequencies(max_index);
disp("Maximum Frequency Component (fm): " + string(fm) + " Hz");

// Step 5: Calculate the Nyquist Rate
nyquist_rate = 2 * fm;
disp("Nyquist Rate: " + string(nyquist_rate) + " Hz");

// Step 6: Check if the original sampling rate meets the Nyquist criterion
if sample_rate >= nyquist_rate then
    disp("The original sampling rate meets the Nyquist criterion.");
else
    disp("The original sampling rate is below the Nyquist rate. Aliasing may occur.");
end

// Step 7: Downsample the signal to test the sampling theorem
// Choose a downsampling factor that brings the new sample rate below the Nyquist rate
//downsample_factor = round(sample_rate / nyquist_rate) + 1; // Just below Nyquist
// Choose a more aggressive downsampling factor to get below the Nyquist rate
downsample_factor = 10; // Example of an aggressive downsampling factor
downsampled_signal = audio_signal(1:downsample_factor:$); // Downsample the signal
new_sample_rate = sample_rate / downsample_factor;

disp("New Sample Rate after Downsampling: " + string(new_sample_rate) + " Hz");

// Step 8: Listen to the downsampled signal (optional, if sound is supported)
// Uncomment the line below to play the downsampled signal
// sound(downsampled_signal, new_sample_rate);

// Step 9: Plot the frequency spectrum of the downsampled signal
downsampled_spectrum = abs(fft(downsampled_signal)); // FFT of downsampled signal
frequencies_new = (0:length(downsampled_signal)-1) * (new_sample_rate/length(downsampled_signal));

//clf; // Clear the figure window
//figure();
subplot(2, 1, 2);
plot(frequencies_new, downsampled_spectrum);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum of the Downsampled Signal');

// Step 10: Plot the original signal in the time domain
t_original = (0:n-1) / sample_rate; // Time vector for original signal
figure();
subplot(2, 1, 1); // Create a subplot (2 rows, 1 column, 1st plot)
plot(t_original, audio_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Audio Signal in Time Domain');

// Step 11: Plot the downsampled signal in the time domain
t_downsampled = (0:length(downsampled_signal)-1) / new_sample_rate; // Time vector for downsampled signal
subplot(2, 1, 2); // Create a subplot (2 rows, 1 column, 2nd plot)
plot(t_downsampled, downsampled_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Downsampled Audio Signal in Time Domain');
