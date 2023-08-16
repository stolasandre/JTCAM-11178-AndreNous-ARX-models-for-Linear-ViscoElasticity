function [yout] = fcnTftMatConv(t,pin)
% Fonction de transfert Matériau en temps
% NIF Model - RABOTNOV
alf2=-pin(4);bet2=-1/pin(3);
yout = (t.^alf2).*(mlf(alf2+1,alf2+1,bet2*t.^(alf2+1),9));
end
