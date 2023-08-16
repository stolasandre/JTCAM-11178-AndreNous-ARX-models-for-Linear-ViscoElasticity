function [yi1]=fcnhe(p,beta)
global fs paramexc fsexcit
% Réponse à la fcn 1/(s²+s+1)
%yi1=fs(p,beta).*1./(p.^2+p+1);  % T Laplace de FTransfert * Excitation
% Réponse au sinus
%yi1=fs(p,beta).*paramexc(1)*paramexc(2)./(p.^2+paramexc(2)^2);
% Réponse à la rampe
%yi1=fs(p,beta).*paramexc(2)./p.^2; 
% Réponse à la 2X-rampe
yi1=feval(fs,p,beta).*fsexcit(p,paramexc); 