function [ft,t]=Ilap(t,fonction,chxilp,beta)
flag=0;
	taille=size(t);
	if taille(2)>taille(1)
		flag=1;
		t=t';
    end
   
ft=invlap(fonction,t,0,1e-12,beta);
if flag==1
	ft=ft';
end
