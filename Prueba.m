%% Bisección
f =@(x) x^3 - 7.51*x^2 + 18.4239*x - 14.8331
a=3
b=3.5
tol=0.00005
Nmax= 50

[tabla,x,iter,errabs,errrel]=C2_biseccion(f,a,b,tol,Nmax)