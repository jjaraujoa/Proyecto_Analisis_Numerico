%Este programa halla la solución a la ecuación f(x)=0 resolviendo el problema
%análogo x=g(x) usando el método de punto fijo. 

%Entradas: 
%f, función continua
%g, función continua
%x0, aproximación inicial 
%tol, tolerancia
%Nmax, número máximo de iteraciones

%Salidas
%x, solución
%iter, número de iteraciones
%errabs, error absoluto
%errrel, error relativo
%tabla, Tabla con cada iteración

%Creado por: Samir Posada
%modificado por : Jose Pinto
%última actualización: 06/04/2022

function [tabla,x,iter,errabs,errrel]=C4_puntofijo(g,x0,tol,Nmax)

%Inicialización
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