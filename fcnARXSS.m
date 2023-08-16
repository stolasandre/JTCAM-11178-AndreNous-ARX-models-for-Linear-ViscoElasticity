function [output] = fcnARXSS(MatA,MatB,MatC,MatD,input,betamodel)
%Calculate for given ARX model
global t
trows=length(t);
[n,ny] = size(MatA);                       %number of states
[mx,m] = size(MatB);                       %number of inputs m=1
[p,py] = size(MatC);                       %number of outputs p=1
% preallocate memory
output = zeros(trows, p);
% x_arr = zeros(trows, n);
x0 = zeros(n, 1);
x = reshape(x0, [], 1);
% Calcul itératif
for k = 1:(trows-1)
output(k+1, :) = MatC * x  +  MatD * input(k+1);
% x_arr(k+1, :) = x;
x = MatA * x  +  MatB * input(k+1);
end
output=output';
end

