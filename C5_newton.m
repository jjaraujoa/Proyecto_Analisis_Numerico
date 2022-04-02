%Este programa halla la soluci�n a la ecuaci�n f(x)=0 usando el m�todo de
%Newton

%Entradas: 
%f, funci�n continua
%f', funci�n continua
%x0, aproximaci�n inicial 
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

function [tabla,x,iter,errabs,errrel]=C5_newton(f,df,x0,tol,Nmax)

%Inicializaci�n
xant=x0;
fant=f(xant);
Ea=1000;
Er=1000; 
cont=0;
tabla(1,:)=["Iter","Xactu","f(Xactu)", "Error Abs", "Error Rel"];
%Ciclo
while Ea>tol && cont<Nmax
    
  xact=xant-fant/(df(xant));
  fact=f(xact);
  Ea=abs(xact-xant);
  Er= Ea/xact;
  cont=cont+1;
  xant=xact;
  fant=fact;
  tabla(cont+1,:)=[cont,xact,fact, Ea, Er];
end

%Entrega de resultados
tabla;
x=xact;
iter=cont;
errabs=Ea;
errrel=Er;
end 