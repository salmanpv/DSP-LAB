clc;
clear;
clf;
close;
t=0:0.01:1;
fm=10;
y=sin(2*%pi*fm*t);
subplot(2,2,1);
plot(t,y);
xlabel('time');
ylabel('amp');
title('sine');

fs1=0.5*fm;
t1=(0:1/fs1:1);
y1=sin(2*%pi*fm*t1);
subplot(2,2,2);
plot2d3(t1,y1);
plot(t1,y1);
xlabel('time');
ylabel('amp');
title('undersampling');
legend("discrete","continous")

fs2=3*fm;
t2=(0:1/fs2:1);
y2=sin(2*%pi*fm*t2);
subplot(2,2,3);
plot2d3(t2,y2);
plot(t2,y2);
xlabel('time');
ylabel('amp');
title('nyquist');
legend("discrete","continous")

fs3=10*fm;
t3=(0:1/fs3:1);
y3=sin(2*%pi*fm*t3);
subplot(2,2,4);
plot2d3(t3,y3);
plot(t3,y3);
xlabel('time');
ylabel('amp');
title('oversampling');
legend("discrete","continous")

