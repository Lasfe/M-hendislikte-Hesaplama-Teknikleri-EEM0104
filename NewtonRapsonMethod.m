%Newton-Rapson Metodu
clc; clear all; close all;
%f=^(-x)-x find the root about x=0;
x0=0;
g=@(x) (exp(-x)-x);
dg=@(x) (-exp(-x)-1);
maxiter=10;
for i=1:1:maxiter;
    x1=x0-g(x0)/dg(x0);
    err=abs((x1-x0)/x1);
    x0=x1;
    if err<0.0001
        break
    end;
    
end;
disp(x1);