function [yout]=fcn_urss(p,param)
global fs dt chxExc
% Compute 'indicial' (puls) response
% in Laplace domain: Transfer function
yi1=feval(fs,p,param);
% in Laplace domain: excitation
switch chxExc
    case 1
        yi2=1./p;            % step (blocked)
        yi3=0;
    otherwise
        yi2=1./p.^2;            % unit ramp
        yi3=-exp(-p*dt)./p.^2;   % counter-ramp for stabilization
end
% Product
yout=yi1.*yi2+yi1.*yi3;