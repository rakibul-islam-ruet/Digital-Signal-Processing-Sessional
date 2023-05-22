t = 0:0.01:0.4;
f=10;
x =20*sin(2*pi*f*t);

subplot(3,1,1);
stem(t, x)
title('Main Signal')

x1=20*sin(2*pi*f*t-20);
subplot(3,1,2);
stem(t,x1);
title('Delayed Signal')


x1=20*sin(2*pi*f*t-20);
subplot(3,1,3);
stem(-t,x1);
title('Delayed and mirror Signal')