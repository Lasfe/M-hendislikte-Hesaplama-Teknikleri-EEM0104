f=@(x)(x^2-2*x-15)
xa=input('Fonksiyonun k�k aramas� i�in alt s�n�r xa=');
xu=input('Fonksiyonun k�k aramas� i�in �st s�n�r xu=');
acc=input('Hata tolerans� giriniz acc=');itr=0;
while (f(xa)*f(xu)>acc);
    xa=input('Fonksiyonun k�k aramas� i�in alt s�n�r xa=');
    xu=input('Fonksiyonun k�k aramas� i�in �st s�n�r xu=');
end;
while (abs(xu-xa)>acc);
    itr=itr+1;
    xr=(xa+xu)/2;
    if f(xa)*f(xr)<0;xu=xr;
    else
        xa=xr;
    end;
end;
fprintf('Denklemin yakla��k k�k� Bisection Yan�lma metodu ile xr=%f',xr);
disp(itr);