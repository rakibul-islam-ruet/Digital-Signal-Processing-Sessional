clc;
clear all;

n1 = [0 0 0 2 2 2 1 1 1 0 2];
n2 = [2 2 0 1 1 1 0 0 0 0 3];

subplot(411);
stem(n1);title('First Signal');

subplot(412);
stem(n2);title('Second Signal');

n3 = n1 + n2;

subplot(413);
stem(n3);title('Sum of two Signal');

n4 = n1 - n2

subplot(414);
stem(n4);title('sub of two Signal');