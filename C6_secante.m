%Este programa halla la solución a la ecuación f(x)=0 usando el método de
%la secante

%Entradas: 
%f, función continua
%x0, aproximación inicial
%x1, aproximación inicial
%tol, tolerancia
%Nmax, número máximo de iteraciones

%Salidas
%x, solución
%iter, número de iteraciones
%errabs, error absoluto
%errrel, error relativo
%tabla, Tabla con cada iteración 

%Creado por: Samir Posada
%Modificado por Jorge Araujo
%última actualización: 02/04/2022

function [tabla,x,iter,errabs,errrel]=C6_secante(f,x0,x1,tol,Nmax)

%Inicialización
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