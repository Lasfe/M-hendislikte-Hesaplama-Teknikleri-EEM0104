f=@(x)(x^2-2*x-15)
xa=input('Fonksiyonun kök aramasý için alt sýnýr xa=');
xu=input('Fonksiyonun kök aramasý için üst sýnýr xu=');
acc=input('Hata toleransý giriniz acc=');itr=0;
while (f(xa)*f(xu)>acc);
    xa=input('Fonksiyonun kök aramasý için alt sýnýr xa=');
    xu=input('Fonksiyonun kök aramasý için üst sýnýr xu=');
end;
while (abs(xu-xa)>acc);
    itr=itr+1;
    xr=(xa+xu)/2;
    if f(xa)*f(xr)<0;xu=xr;
    else
        xa=xr;
    end;
end;
fprintf('Denklemin yaklaþýk kökü Bisection Yanýlma metodu ile xr=%f',xr);
disp(itr);