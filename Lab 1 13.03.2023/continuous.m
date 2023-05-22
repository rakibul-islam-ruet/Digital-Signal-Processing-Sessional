t = 0:0.01:0.4;
f=10;
x =20*cos(2*pi*f*t);

subplot(2,1,1);
plot(t, x)


subplot(2,1,2);
%stem(t,x);
n=0:40;
fs=100;
ts=1/fs;

%x_a = c2d(x,ts,'foh');

x_a=cos(2*pi*n*ts);
%subplot(2,1,2);
plot(t, x_a)