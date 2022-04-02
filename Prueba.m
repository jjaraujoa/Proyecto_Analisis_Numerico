%% Busquedas
f =@(x) 23.9184-(1/3*pi*x^2*5.1411)
x0=2;
h= 0.001
Nmax=500

[a,b,iter]=C1_busquedas(f,x0,h,Nmax)
%% Bisección
f =@(x) x^3 - 7.51*x^2 + 18.4239*x - 14.8331;
a=3;
b=3.5;
tol=0.00005;
Nmax= 50;

[tabla,x,iter,errabs,errrel]=C2_biseccion(f,a,b,tol,Nmax)

%% Regla Falsa



%% Punto Fijo



%% Newton

f =@(x) 3*x/(sqrt((x^2)+9))+ 0.175 - x
syms x
diff(f,x)
df= @(x) 3/(x^2 + 9)^(1/2) - (3*x^2)/(x^2 + 9)^(3/2) - 1
x0=1
tol=0.00005
Nmax=2000

[tabla,x,iter,errabs,errrel]=C5_newton(f,df,x0,tol,Nmax)
%% Secante



%% Raices Multiples