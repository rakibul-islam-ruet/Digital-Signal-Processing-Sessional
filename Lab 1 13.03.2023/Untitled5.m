% Sample data
x = [1 2 3 2 1 -1 -2 -1 0 1];
n = 0:length(x)-1;

% Plotting
figure;
plot(n, x, 'o-', 'linewidth', 2, 'MarkerSize', 6);
xlabel('n');
ylabel('x[n]');
