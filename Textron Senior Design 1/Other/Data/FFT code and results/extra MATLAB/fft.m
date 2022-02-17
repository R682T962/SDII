clear all;
close all;
clc;

A =12; f=5; Fs=100;
t=0:1/Fs:1;


y=A*sin(2*pi*f*t);

figure(1)
plot(t,y);
title('y-Time domain');
xlabel('Time-t'); ylabel('magnitude');

N=length(y);
ffty = 2*fft(y)/N;
mag = fftshift(abs(ffty));
angle = fftshift(angle(ffty));

mag2 = mag(1:(N/2)+1);
fq = (-N/2+1:N/2).*(Fs/N);

figure(1)
plot(fq, mag)

figure(2)
plot(fq, angle)



