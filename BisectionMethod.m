f=@(x)(x^2-2*x-15)
xa=input('Fonksiyonun kök araması için alt sınır xa=');
xu=input('Fonksiyonun kök araması için üst sınır xu=');
acc=input('Hata toleransı giriniz acc=');itr=0;
while (f(xa)*f(xu)>acc);
    xa=input('Fonksiyonun kök araması için alt sınır xa=');
    xu=input('Fonksiyonun kök araması için üst sınır xu=');
end;
while (abs(xu-xa)>acc);
    itr=itr+1;
    xr=(xa+xu)/2;
    if f(xa)*f(xr)<0;xu=xr;
    else
        xa=xr;
    end;
end;
fprintf('Denklemin yaklaşık kökü Bisection Yanılma metodu ile xr=%f',xr);
disp(itr);
