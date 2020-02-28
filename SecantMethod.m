%Secant metodu Soru: f=e*(-x)-x find the root about
%x0=0;x_1=1 initial value
clc;clear all; close all;
x0=0;x1=1;
g=@(x) (exp(-x)-x);%
maxiter=15;
for i=1:1:maxiter;
    x2=x1-(g(x1)*(x0-x1))/(g(x0)-g(x1));
    err=abs((x2-x1)/x2);
    x0=x1;x1=x2;
    if err<0.000000001
        break
    end;
end;
disp(x2);