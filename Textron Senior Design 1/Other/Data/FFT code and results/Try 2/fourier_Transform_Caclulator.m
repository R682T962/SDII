clear all;
close all;
clc;


Fs=1000;
Ts = 1/Fs;
t=0:Ts:0.250-Ts;
y =xlsread('scope.xlsx','F2:F2501');



N=length(y);

ft3=2*abs(fft(y))/N;
fq3=(0:N/2).*(Fs/N);
ffty3=ft3(1:(N/2)+1);
figure(3)
plot(fq3,ffty3);
title('y-Frequency domain Using special command');
xlabel('Frequency-f'); ylabel('magnitude');