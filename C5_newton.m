%Este programa halla la solución a la ecuación f(x)=0 usando el método de
%Newton

%Entradas: 
%f, función continua
%f', función continua
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
%Modificado por Jorge Araujo
%última actualización: 02/04/2022

function [tabla,x,iter,errabs,errrel]=C5_newton(f,df,x0,tol,Nmax)

%Inicialización
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