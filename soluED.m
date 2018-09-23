x = [1 1 1 0 0 0 0];  % entrada 
 a = [1 0.5];          % coeficientes de y(n) 
 b = [4 3 2];          % coeficientes de x(n) 
 y = filter(b, a, x)   % salida 