clear all;
close all;
clc;


y =xlsread('Data\1ms\12V .25A\TEK0009.csv','E1:E2500');
%ts = 0.000000100; %sampling interval (sec)
ts =.001;
Fs = 1./ts;    %sampling frequency (Hz)
L = length(y); %number of samples
complex = fft(y)/L; % complex signals
f = 0 : Fs/L : Fs/2; % frequency bins
amplitude = 2*abs(complex(1:L/2+1)); % amplitudes

semilogx(f,20*log10(abs(amplitude)));
grid on;
xlabel('Frequency [Hz]')
ylabel('dB')