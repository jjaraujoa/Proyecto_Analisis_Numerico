%Este programa halla la soluci�n a la ecuaci�n f(x)=0 usando el m�todo de
%la secante

%Entradas: 
%f, funci�n continua
%x0, aproximaci�n inicial
%x1, aproximaci�n inicial
%tol, tolerancia
%Nmax, n�mero m�ximo de iteraciones

%Salidas
%x, soluci�n
%iter, n�mero de iteraciones
%errabs, error absoluto
%errrel, error relativo
%tabla, Tabla con cada iteraci�n 

%Creado por: Samir Posada
%Modificado por Jorge Araujo
%�ltima actualizaci�n: 02/04/2022

function [tabla,x,iter,errabs,errrel]=C6_secante(f,x0,x1,tol,Nmax)

%Inicializaci�n
f0=f(x0);
f1=f(x1);
Ea=1000; 
Er=1000; 
cont=0;
tabla(1,:)=["Iter","Xactu","f(Xactu)", "Error Abs", "Error Rel"];
%Ciclo
while Ea>tol && cont<Nmax
  xact=x1-f1*(x1-x0)/(f1-f0);
  fact=f(xact);
  Ea=abs(xact-x1);
  Er=Ea/xact
  cont=cont+1; 
  x0=x1;
  f0=f1;
  x1=xact;
  f1=fact;
  tabla(cont+1,:)=[cont,xact,fact, Ea, Er];
end

%Entrega de resultados
tabla;
x=xact;
iter=cont;
errabs=Ea;
errrel=Er;
end 