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

BW=62.5E3;
SF=8;
L=13; %bytes
CR=5;
Rb = (SF*BW)/(2^(SF))*(4/(4+CR));
Ptx=L*8*1/Rb;

Eb=6.8*3600*3.7;% E. batería (As)
ETx= 3.7*151.5*0.001*Ptx % E. batería(As) ; 123 mA consumo aprox. del modulo

%% tasa de datos

Dias=((Eb/ETx)/15/3600)/24 % 
horas =(Eb/ETx)/15/3600 %  15s/h/dia
