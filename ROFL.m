clc;clear all; close all;
x0=4;
gl=@(x) (((4*x+5)/3)^(1/2));
maxiter=10;
for i=1:1:maxiter;
    x1=gl(x0);
    err=abs((x1-x0)/x1);
    x0=x1;
    if err<0.01
        break
        
    end;
    x11=x1;
end;
disp(x1);