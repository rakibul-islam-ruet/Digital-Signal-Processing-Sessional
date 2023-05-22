clc;
clear all;

t = 0:0.01:6;

s1 = t>=2 & t<=5;
s2 = t>=3 & t<=4;
s = s1+s2;

d1 = t>=1 & t<=4;
d2 = t>=2 & t<=3;
d = d1+d2;

n = awgn(d,10);

R = xcorr(s,n);

L = length(t)-1;
A = -L:L;

subplot(311);
plot(t,s);
title("Sending Signal");

subplot(312);
plot(t,n);
title("Receiving Signal");

subplot(313);
plot(A,R);
title("Correlation");

max = max(R);
i = find(R == max);

index = i-L
