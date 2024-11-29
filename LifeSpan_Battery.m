clear all, clc;


% for CR=1:4
% Rb(1,CR)=SF*BW*4/(4+CR)/(2^(SF));
% Ptx(1,CR)=L*8*1/(Rb(1,CR));
% 
% E(1,CR)= 3.7*31.5*Ptx(1,CR);
% 
% end 
% 
% for i=1:4
% Duracion(1,i)=25160/E(1,i); %veces/h
% Dias(1,i)=Duracion(1,i)/120/24;
% end
BW=250E3;
SF=10;
L=13; %bytes
CR=6;
Rb = SF*BW/(2^(SF))*4/(4+CR)
Ptx=L*8*1/Rb;
E= 3.7*123*Ptx*0.001

Dias=(6.8*3.7/E)/4/24 % 4 muestras por hora = 60min/15min
