clc;
clear all;
close all;


%unit impulse
t1 = -5:1:5;
y1 = [zeros(1,5), ones(1,1), zeros(1,5)];
subplot(3,3,1);
stem(t1,y1);
xlabel('time');
ylabel('Amplitude');
title('unit impulse');
axis([-5,5,0,2]);

%unit step
t2 = -5:1:5;
%y2a = [zeros(1,6),ones(1,5)];
y2b = [zeros(1,5),ones(1,6)];
subplot(3,3,2);
%plot(t2,y2a);
stem(t2,y2b);
xlabel('time');
ylabel('Amplitude');
title('unit step');
%legend("discrete", "continuous")
axis([-5,5,0,2]);

%ramp
t3 = 0:1:5;
y3 = t3;
subplot(3,3,3);
plot(t3,y3);
stem(t3,y3);
xlabel('time');
ylabel('Amplitude');
title('ramp');
legend("discrete", "continuous")
axis([-2,5,0,5]);

%sine
f4 = 3;
t4 = 0:0.02:1;
y4 = sin(2*pi*f4*t4);
subplot(3,3,4);
plot(t4,y4);
stem(t4,y4);
xlabel('time');
ylabel('Amplitude');
title('sine');
legend("discrete", "continuous")
axis([0,1,-2,2]);

%cos
f5 = 3;
t5 = 0:0.02:1;
y5 = cos(2*pi*f5*t5);
subplot(3,3,5);
plot(t5,y5);
stem(t5,y5);
xlabel('time');
ylabel('Amplitude');
title('cos');
legend("discrete", "continuous")
axis([0,1,-2,2]);

%unipolar
f6 = 5;
t6 = 0:0.0001:1;
y6 = sqrt(square(2 * pi * f6 *t6));
subplot(3,3,6);
plot(t6, y6);
axis([0 1 -2 2]);
xlabel("time");
ylabel("amplitude");
title('unipolar');

%bipolar
f6a = 5;
t6a = 0:0.0001:1;
y6a = square(2 * pi * f6a * t6a);
subplot(3,3,7);
plot(t6a, y6a);
axis([0 1 -2 2]);
xlabel("time");
ylabel("amplitude");
title('bipolar');

%exponential rise
t7 = 0:0.1:5;
y7 = exp(t7);
subplot(3,3,8);
plot(t7, y7);
stem(t7, y7);
xlabel("time");
ylabel("amplitude");
title('exponential');
legend("continuous", "discrete");

%triangular
%f8 = 5;
%t8 = 0:0.1:1;
%y8 = squarewave(2 * pi * f8 * t8);
%subplot(3,3,9);
%plot(t8, y8);
%stem(t8, y8);
%axis([0 1 -2 2]);
%xlabel("time");
%ylabel("amplitude");
%title('triangular');
%legend("continuous", "discrete");

t8=0:0.25:3;
f8=1;
y8=sin(2*pi*f8*t8);
subplot(3,3,9);
plot(t8,y8);
stem(t8, y8);
axis([0 3 -2 2]);
xlabel('time');
ylabel('amplitude');
title('triangular wave');
legend("continuous", "discrete");
