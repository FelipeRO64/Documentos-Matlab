function [y, ny] = convol(x, nx, h, nh) 
 % Convolución modificada para incluir información de tiempo 
 % Convuelve 'x' con 'h' usando 'conv' de MATLAB  
 % Genera el vector 'ny' el cual sirve como índice del vector 'y' 
 % nx = índice de x    nh = índice de h 
 x = [zeros(1,16) ones(1,10) zeros(1,30)];
nx = -5: 50;
[e, nh] = escalon(0, -5, 50);
h = (0.8 .^ nh) .* e; 
 ny1 = nx(1) + nh(1);                 % primer elemento del vector ny 
 ny2 = nx(length(x)) + nh(length(h)); % último elemento del vector ny 
 ny = [ny1 : ny2];                    % crea el vector ny 
 y = conv(x, h);                      % convuelve x con h --> y 
