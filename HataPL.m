function PL = HataPL(d,f,hb,hm,environment) %,f=915, d=que yo deseo, hb=20m (gateway) hm=nodo sensor, open rural
% PL = HataPL(d,hb,hm,f)
%  Hata model for path loss
% f : central frequency (Hz) default is 868 MHz
% d : distance (m)
% hb: height of the base station (default is 15 m)
% hm: height of the mobile (default is 1 m)
% environment : 'open rural','suburban','small urban','large urban'
% PL: path loss (dB)
if nargin<4
    hm = 1;
    environment = 'open rural';
end
if nargin<3
    hb = 20;
end
if nargin<2
    f = 915e6;
end

f = f/1e6; % to express f in MHz

if f>150 && f<=1500
    c0 = 69.55;
    cf = 26.16;
    b = 13.82*log10(hb);
else
    c0 = 46.3;
    cf = 33.9;
    b = 13.82*log10(hb);
end

if isequal(environment,'open rural')
    a = (1.1*log10(f)-0.7)*hm - 1.56*log10(f)+0.8;
    CM = -4.78*log10(f)^2 + 18.33*log10(f) - 40.94;
elseif isequal(environment,'suburban')
    a = (1.1*log10(f)-0.7)*hm - 1.56*log10(f)+0.8;
    CM = -2*log10(f/28)^2 - 5.4;
elseif isequal(environment,'small urban')
    a = (1.1*log10(f)-0.7)*hm - 1.56*log10(f)+0.8;
    CM = 0;
elseif isequal(environment,'large urban')
    a = 3.2*log10(11.75*hm)^2 - 4.97;
    CM = 3;
else
    error('Unknown environment.')
end

% Frecuencia mayores
% % small to medium city, frequency 150 to 2000 MHz
% %a = (1.1*log10(f)-0.7)*hm - 1.56*log10(f)+0.8;
% 
% % large city, frequency 300 to 2000 MHz
% a = 3.2*log10(11.75*hm)^2 - 4.97;
% 
% % Urban
% CM = 0;
% 
% % Suburban
% %CM = -2*log10(f/28)^2 - 5.4;
% 
% % Open rural
% %CM = -4.78*log10(f)^2 + 18.33*log10(f) - 40.94;

% Path loss %valor ya en decibelios 
PL = c0 + cf*log10(f) - b - a + (44.9-6.55*log10(hb))*log10(d/1000) + CM;
