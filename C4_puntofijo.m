%Este programa halla la soluci�n a la ecuaci�n f(x)=0 resolviendo el problema
%an�logo x=g(x) usando el m�todo de punto fijo. 

%Entradas: 
%f, funci�n continua
%g, funci�n continua
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
%modificado por : Jose Pinto
%�ltima actualizaci�n: 06/04/2022

function [tabla,x,iter,errabs,errrel]=C4_puntofijo(g,x0,tol,Nmax)

%Inicializaci�n
xant=x0;
Ea=1000;
Er=1000; 
cont=0;
tabla(1,:)=["Iter","Xact","f(Xact)", "Error Abs", "Error Rel"];

%Ciclo
while E>tol && cont<Nmax
    tabla(cont+1,:)=[cont,xact,fact, Ea, Er];
  xact=g(xant);
  Ea=abs(xact-xant);
  Er=Ea/xact;
  cont=cont+1;
  xant=xact;
  
end
tabla(end,:)=[cont,xact,fact, Ea, Er];
%Entrega de resultados
x=xact;
iter=cont;
errabs=Ea;
errrel=Er;
end