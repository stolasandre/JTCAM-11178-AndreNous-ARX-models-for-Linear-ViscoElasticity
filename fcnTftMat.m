function [yout] = fcnTftMat(p,pin)
% Fonction de transfert Matériau en Laplace
flag=0;
taille=size(p);
if taille(1)<taille(2)
	flag=1;
	p=p';
end
tomxsa=pin(3);Er=pin(2);Eu=pin(1);
%#######################
% modèle(s) fractionnaire(s): Rabotnov kernel
%
t1=tomxsa;
alf=pin(4);
beta=(1/t1);
% Modèle Rabotnov
yout=Eu+(Er-Eu)*(1./(p.^(1-alf)+beta));
end
