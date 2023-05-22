
 x = [ 1 2 3 4];
 h = [ 4 4 3 2];
 
 subplot( 3, 1, 1);
 t = 0 :length(x)-1; 
 stem( t, x);
 xlabel('n');
 ylabel('x[n]');
 title('First Signal');

 
 subplot( 3, 1, 2);
 t = 0:length(h)-1;
 stem( t, h);
 xlabel('n');
 ylabel('h[n]');
 title('Second Signal');
 
 y = conv( x, h);
 
 subplot( 3, 1, 3);
 t = 0 : length(y)-1;
 stem( t, y);
 xlabel('n');
 ylabel('y[n]');
 title('Convoluted Signal');