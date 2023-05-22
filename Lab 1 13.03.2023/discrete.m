t = (-1:0.1:1);
t1 = (-1:0.1:1);
impulse = t==0;
unitstep = t>=0;
unitstep1 = t>=0.5;
ramp = t.*unitstep;
ramp1 = t.*unitstep1;
parabolic = 4*t.^2.*unitstep;
sqaure = unitstep - unitstep1;
triangular = ramp - ramp1;

subplot(3,2,1);
stem(t,impulse);
title('Unit Impulse');

subplot(3,2,2);
stem(t,unitstep);
title('Unit Step');

subplot(3,2,3);
stem(t,ramp);
title('Ramp');

subplot(3,2,4);
stem(t,sqaure);
title('Square');

subplot(3,2,5);
stem(t,parabolic);
title('Parabolic');

subplot(3,2,6);
stem(t,triangular);
title('Triangular');
