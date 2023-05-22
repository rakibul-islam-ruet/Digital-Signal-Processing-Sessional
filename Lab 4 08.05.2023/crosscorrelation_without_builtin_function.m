clc;
clear all;
x11 = [-3, 2, -1, 1]; 
%x11 = input('1st sequence : ');
l = length(x11);

x22 = [-1, 0, -3, 2];
%x12 = input('2nd sequence : ');
m= length(x22);

x1 = [zeros(1,l-1),x11, zeros(1,l-1)];
N = length(x1);
x2 = [x22, zeros(1,N-l)];
rxx = zeros(1, 2*l-1); 
for i=1:2*l-1
    for j=1:2*l-1
        rxx(i)=rxx(i)+x1(j)*x2(j);
    end
    x2 = circshift(x2,1);
end

rxx0 = xcorr(x11,x22);

subplot(4,1,1); stem(x11); xlabel('n');
ylabel('x1[n]'); title('First Signal');

subplot(4,1,2); stem(x22); xlabel('n');
ylabel('x2[n]'); title('Second Signal');

subplot(4,1,3); stem(rxx); xlabel('n');
ylabel('Rxx(n)'); title('Cross Correlation without using built-in function');

subplot(4,1,4); stem(rxx0); xlabel('n');
ylabel('Rxx(n)'); title('Cross Correlation using built-in function');