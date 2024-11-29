clear all ; clc;
%%%%%%%%% ALTURA %%%%%%%%%%%%%%%%%%%%%%%%%%
 for hn=2  %altura nodo
     for hg=20 %altura gateway
             % PTX  -  L = Sensitivity
sensitivity(hn,hg) =17-HataPL1(2500,915e6,hg,hn,"suburban")
     end
end
%%%%%%%%%%%% DISTANCIA %%%%%%%%%%%%%%%%%%%%
%suburban   open rural
%  for hn=1:10   %altura nodo
%      for hg=1:20 %altura gateway
%              % PTX  -  L = Sensitivity
% sensitivity2(hn,hg) =20-HataPL1(10000,915e6,hg,hn,"small urban");
%      end
% end

% for hn=1:3   %altura nodo
% hn
% sensitivity =20-HataPL1(10000,915e6,hn,15,"open rural")
% 
% end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mod=[(0:10)]';
%tabla=[(1:20);sensitivity];
%tab=[mod tabla]
%plot(sensitivity,'r')

% 20m altura gateway optima 
% ¿cual es la h del nodo teniendo en cuenta que la h de la gateway es 20m? 
% definir el TTGO ESP32 430 /915 
% la h de estaca en c/galpon va a variar - proponer en informe