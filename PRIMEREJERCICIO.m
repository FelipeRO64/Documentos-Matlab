A=1 ; B=9 ; C=1 ; D=1 ; E= 2 ; F=0 ; G=3 ; H=8 ; I=8 ;
t = 0 : 0.3 : 30;  v = exp(-((B+A)/(2*C*(D+E)))*t).* sin(t);
 subplot 211;  plot(t, v);  title('PLOT'); 
 xlabel('Tiempo [seg]');  ylabel('Volts');  grid; 
 subplot 212;  stem(t, v);  title('STEM'); 
 xlabel('Tiempo [seg]');  ylabel('Volts');  grid;