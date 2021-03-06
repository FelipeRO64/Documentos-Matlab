
% Datos
fc = [200 300]; % frecuencias de corte en [kHz]
Fs = 1000; % frecuencia de muestreo en [kHz]
N = 8; % orden del filtro
Rp = 3; % ripple en dB en la banda de paso
Rs = 80; % ripple (atenuaci�n) en dB en la banda de rechazo
f1 = 0; % frec. min. para el c�lculo de la rpta de frec
f2 = 500; % frec. max. [kHz] para el c�lculo de la rpta de frec
m1 = 1e-5; % l�mite inferior del gr�fico de magnitud
% Dise�o del filtro
Wn = 2 * fc / Fs;
[b,a] = ellip(N, Rp, Rs, Wn, 'bandpass');
% Despliega coeficientes
b
a

% Calcula respuesta de frecuencia obtenida
f = [f1 : (f2-f1)/1023 : f2];
H = freqz(b, a, f, Fs);
% Grafica Mag[H(f)]
semilogy(f, abs(H)); grid; axis([f1 f2 m1 2])
xlabel('f [kHz]'); title('Mag(H)')