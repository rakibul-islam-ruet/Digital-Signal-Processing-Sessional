clc;
clear all;

%x=input('Enter x(n)=');
x = [ 1 2 3 4];
t1 = 0 :length(x)-1; 
subplot(3,1,1); stem(t1,x); xlabel('n');
ylabel('x[n]');

%h=input('Enter h(n)=');
h = [ 4 4 3 2];
t2 = 0 :length(h)-1; 
subplot(3,1,2); stem(t2,h);
xlabel('n'); ylabel('h[n]');

t3=-(length(h)-1):0

for i=0:7
    Y(i)=0;
    for k=0:3
        if(i-k+1>0)
            Y(i)=Y(i)+X(k)*H(i-k+1);
        else
        end
    end
end

subplot(3,1,3); stem(t3,h);
ylabel('Y[n]'); xlabel('n'); 
title('Convolution of Two Signals without conv function');