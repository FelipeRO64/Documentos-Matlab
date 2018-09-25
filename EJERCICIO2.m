clear all
A=1 ; B=9 ; C=1 ; D=1 ; E= 2 ; F=0 ; G=3 ; H=8 ; I=8 ;
% Respuesta escal�n filtro IIR    
% y(n) = 0.1 x(n) + 0.9 y(n-1) 
vi = (H*A);     % voltaje de entrada 
a = (D+E)/10;    % constante del filtro 
dt = 10e-3; % 1/100 Hz = 10 mseg 
t(1) = 0;   % �ndice 1  =>  t = 0
vf(1) = 0;  % �ndice 1  =>  t = 0 
for i = 2 : 41; 
t(i) = (i-1) * dt;
vf(i) = (1-a) * vi + a * vf(i-1); 
end 
close; stem(t, vf);   % gr�fico
 xlabel('seg'); grid 