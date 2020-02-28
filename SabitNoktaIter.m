%Fixed point iteration (Sabit Nokta Ýterasyonu) Metodu
clc; clear all; close all;
x0=0; h0=0;
maxiter=10;
for i=1:maxiter;
    x(i)=exp(-x0);
    x0=x(i);
    %h(i)=abs((x(1,i)-x0)/x(1,i));
end;
b=x' ; k=1:1:maxiter;c=k';
a=[c b]; disp(a);