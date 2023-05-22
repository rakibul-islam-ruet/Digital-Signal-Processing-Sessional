% Generate two signals with a time delay
Fs = 1000; % Sampling frequency
t = 0:1/Fs:1; % Time vector
f1 = 10; % Signal frequency
f2 = 20;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*(t-0.1)); % Add a 100 ms delay to the second signal

% Compute the cross-correlation between the two signals
[Rxy,lags] = xcorr(x1,x2);

% Find the lag that maximizes the correlation
[~,I] = max(abs(Rxy));
lag = lags(I);

% Plot the signals and the cross-correlation
figure;
subplot(3,1,1);
plot(t,x1);
title('Signal 1');
subplot(3,1,2);
plot(t,x2);
title('Signal 2');
subplot(3,1,3);
plot(lags/Fs,Rxy);
title('Cross-Correlation');
xlabel('Lag (s)');
ylabel('Correlation');
hold on;
plot(lag/Fs,Rxy(I),'ro');
