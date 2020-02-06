clc; clear all; close all;
g=9.8; m=68.1; cd=12.5;
% Paraşütçünün düşme hızı Mat Modeli Analitik Çözümü
t=0:2:20;
vta=((m*g)/cd)*(1-exp(-(cd/m)*t));
% plot(t,vta);
% disp([t,vta]);
% Paraşütçünün düşme hızı Mat Modeli Sayısal(Nümerik) Çözümü
vt0=0; dt=2;
for t=1:1:10;
    vt(t)=vt0+(g-(cd/m)*vt0)*dt;
    vt0=vt(t);
end;
t=0:2:20;
vts=[0 vt];a=[t;vta;vts]; disp(a);
plot(t,vta,'-o',t,vts,'-');
