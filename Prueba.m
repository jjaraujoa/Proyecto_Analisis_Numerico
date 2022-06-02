%% Busquedas
f =@(x) 23.9184-(1/3*pi*x^2*5.1411)
x0=2;
h= 0.001
Nmax=500

[tabla,a,b,iter,errabs,errrel]=C1_busquedas(f,x0,h,Nmax)

%% Bisección
f =@(x) x^3 - 7.51*x^2 + 18.4239*x - 14.8331;
a=3;
b=3.5;
tol=0.00005;
Nmax= 50;

[tabla,x,iter,errabs,errrel]=C2_biseccion(f,a,b,tol,Nmax)

%% Regla Falsa
f =@(x) x^3 - 7.51*x^2 + 18.4239*x - 14.8331;
a=3;
b=3.5;
tol=0.00005;
Nmax= 50;

[tabla,x,iter,errabs,errrel]=C3_reglafalsa(f,a,b,tol,Nmax)

%% Punto Fijo
f =@(x) x^2 - 2*x + 2 - 14.8331 - 2.718^x;
g =@(x) log(x^2 - 2*x + 2);
x0=0,5;
tol=0.00005;
Nmax= 50;

[tabla,x,iter,errabs,errrel]=C4_puntofijo(g,x0,tol,Nmax)


%% Newton
syms x
f =@(x) 3*x/(sqrt((x^2)+9))+ 0.175 - x
df= @(x) 3/(x^2 + 9)^(1/2) - (3*x^2)/(x^2 + 9)^(3/2) - 1
diff(df,x)
x0=1
tol=0.00005
Nmax=2000

[tabla,x,iter,errabs,errrel]=C5_newton(f,df,x0,tol,Nmax)

%% Secante

f =@(x) 3*x/(sqrt((x^2)+9))+ 0.175 - x
x0=1
x1=2
tol=0.00005
Nmax=2000

[tabla,x,iter,errabs,errrel]=C6_secante(f,x0,x1,tol,Nmax)

%% Raices Multiples
f =@(x) 3*x/(sqrt((x^2)+9))+ 0.175 - x
df = @(x) 3/(x^2 + 9)^(1/2) - (3*x^2)/(x^2 + 9)^(3/2) - 1
d2f = @(x) (9*x^3)/(x^2 + 9)^(5/2) - (9*x)/(x^2 + 9)^(3/2)
x0=1
tol=0.00005
Nmax=2000

[tabla,x,iter,errabs,errrel]=C7_raicesmlt(f,df,d2f,x0,tol,Nmax)

%% Eliminación Gauseana Simple

A=[2,-1,-3,2;
   5,-10,2,-6;
   5,-9,15,-6;
   2,1,-1,10;];

b=[4;
   3;
   2;
   1];

x=C8_gausspl(A,b)

%% Eliminación Gauseana Pivoteo Parcial

A=[2,-1,-3,2;
   5,-10,2,-6;
   5,-9,15,-6;
   2,1,-1,10;];

b=[4;
   3;
   2;
   1];

x=C9_gaussParcial(A,b)

%% Eliminación Gauseana Pivoteo Total

A=[2,-1,-3,2;
   5,-10,2,-6;
   5,-9,15,-6;
   2,1,-1,10;];

b=[4;
   3;
   2;
   1];

x=C10_gaussTotal(A,b);

%% Factorización LU

A=[4,3,-2,-7;
   3,12,8,-3;
   2,3,-9,3;
   1,-2,-5,6;];

b=[20;
   18;
   31;
   12];

[x,L,U]=C11_lusimpl(A,b)

%% Crout

A=[36,3,-4,5;
   5,-45,10,-2;
   6,8,57,5;
   2,3,-8,42];

b=[-20;
   69;
   96;
   -32];

[x,L,U]=C13_Crout(A,b)

%% Doolittle

A=[36,3,-4,5;
   5,-45,10,-2;
   6,8,57,5;
   2,3,-8,42];

b=[-20;
   69;
   96;
   -32];


[x,L,U]=C14_Doolittle(A,b)

%% Cholesky

A=[36,3,-4,5;
   5,-45,10,-2;
   6,8,57,5;
   2,3,-8,42];

b=[-20;
   69;
   96;
   -32];


[x,L,U]=C15_Cholesky(A,b)

%% Jacobi

A=[45,13,-4,8;
   -5,-28,4,-14;
   9,15,63,-7;
   2,3,-8,42];

b=[-25;
   82;
   75;
   -43];

x0=[2,2,2,2]';
tol=0.0005;
Nmax= 500;

[tabla,x,iter,errabs,errrel]=C16_jacobi(A,b,x0,tol,Nmax)

%% Gauss-Seidel

A=[45,13,-4,8;
   -5,-28,4,-14;
   9,15,63,-7;
   2,3,-8,42];

b=[-25;
   82;
   75;
   -43];

x0=[2,2,2,2]';
tol=0.0005;
Nmax= 500;

[tabla,x,iter,errabs,errrel]=C17_gseidel(A,b,x0,tol,Nmax)

%% Vandermonde

X=[-1,0,1,2];
Y=[2.3,-1.2,4.5,3.3];

f=C19_vandermonde(X,Y)


%% Dif divididas Newton

X=[-1,0,1,2];
Y=[2.3,-1.2,4.5,3.3];

f=C20_difdivididas(X,Y);

%% Spines Lineales

X=[-1,0,1,2];
Y=[2.3,-1.2,4.5,3.3];

C22_trazlin(X,Y);

%% Spines cuadrados

X=[-1,0,1,2];
Y=[2.3,-1.2,4.5,3.3];

Coef=C23_trazcuad(X,Y);

%% Lagrange

X=[-1,0,1,2];
Y=[2.3,-1.2,4.5,3.3];

f=C21_lagrange(X,Y);
