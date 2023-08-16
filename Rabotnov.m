function [stress]=Rabotnov(p,pin)
% 
	flag=0;
	taille=size(p);
	if taille(1)<taille(2)
		flag=1;
		p=p';
    end

mu20 = pin(1);alf2=pin(2);bet2=pin(3);gam2=pin(4);
stress=1./(p.^(1-alf2)+bet2);

if flag==1
	stress=stress';
end
end




