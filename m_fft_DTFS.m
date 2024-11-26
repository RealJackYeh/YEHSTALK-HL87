P = 2*pi/0.3; % signal period 
N = 21; % sample points
T = P/N; % sampling period
D = 2*pi/P; % freq. resolution w0 for fourier series       
t = (0:N-1)*T; % Time vector
S = -1.2 + 0.8*sin(0.6*t) - 1.6*cos(1.5*t);
m = ceil(-(N-1)/2):ceil((N-1)/2);
w = m*D;
Y = fft(S)/N; % calculate DTFS coefficient from FFT results
Y = round(Y.*10000)./10000;
subplot(2,1,1)
stem(w,abs(shift(Y)));
title("Complex Magnitude of fft Spectrum")
xlabel("w (rad/s)")
ylabel("|fft(X)|")
subplot(2,1,2)
stem(w,angle(shift(Y))*180/pi);
title("Complex Phase of fft Spectrum")
xlabel("w (rad/s)")
ylabel("Degree")