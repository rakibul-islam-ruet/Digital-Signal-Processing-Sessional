clc;
clear all;

x1=[-3, 2, -1, 1];
x2=[-1, 0, -3, 2];


rxx = xcorr(x1,x2);

figure;
subplot(3,1,1); stem(x1); xlabel('n');
ylabel('x1[n]'); title('First Signal');

subplot(3,1,2); stem(x2); xlabel('n');
ylabel('x2[n]'); title('Second Signal');

subplot(3,1,3); stem(rxx); xlabel('n');
ylabel('Rxx(n)'); title('Cross Correlation');