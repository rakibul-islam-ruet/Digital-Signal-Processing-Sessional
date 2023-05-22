clc;
clear all;
%x = [-1, 2, 1]; 
x = input('Give input signal : ');
l = length(x);

x1 = [zeros(1,l-1),x, zeros(1,l-1)];
N = length(x1);
x2 = [x, zeros(1,N-l)];
rxx = zeros(1, 2*l-1); 
for i=1:2*l-1
    for j=1:2*l-1
        rxx(i)=rxx(i)+x1(j)*x2(j);
    end
    x2 = circshift(x2,1);
end

rxx0 = xcorr(x);

subplot(3,1,1); stem(x); xlabel('n');
ylabel('x[n]'); title('Input Signal');

subplot(3,1,2); stem(rxx); xlabel('n');
ylabel('Rxx[n]'); title('Auto Correlation without using built-in function');

subplot(3,1,3); stem(rxx0); xlabel('n');
ylabel('Rxx[n]'); title('Auto Correlation using built-in function');