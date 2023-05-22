t = 0:0.01:0.4;
f=10;
x =20*sin(2*pi*f*t);

subplot(3,2,1);
stem(t, x)
title('Main Signal')

t1 = 2*t;
x1 =20*sin(2*pi*f*t1);

subplot(3,2,2);
stem(t1, x1)
title('Time scaling - Expansion')

t2 = t/2;
x2 =20*sin(2*pi*f*t2);

subplot(3,2,3);
stem(t2, x2)
title('Time scaling - compression')

x3 =20*sin(2*pi*f*t+30);

subplot(3,2,4);
stem(t2, x3)
title('Delay')

x4 =20*sin(2*pi*f*t-30);

subplot(3,2,5);
stem(t2, x4)
title('Advance')