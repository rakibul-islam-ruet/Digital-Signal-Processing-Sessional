clc;
clear all;
x = [-1, 2, 1];
%x = input('Give signal sequence : ');
rxx = xcorr(x); 
disp(rxx);

subplot(2,1,1); stem(x); xlabel('n');
ylabel('x[n]'); title('Input Signal');

subplot(2,1,2); stem(rxx); xlabel('n');
ylabel('Rxx[n]'); title('Auto Correlation');