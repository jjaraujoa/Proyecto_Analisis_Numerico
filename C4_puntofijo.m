% Este programa halla la solución a la ecuación f(x)=0 resolviendo el problema
% análogo x=g(x) usando el método de punto fijo. 
% 
% Entradas: 
% f, función continua
% g, función continua
% x0, aproximación inicial 
% tol, tolerancia
% Nmax, número máximo de iteraciones
% 
% Salidas
% x, solución
% iter, número de iteraciones
% errabs, error absoluto
% errrel, error relativo
% tabla, Tabla con cada iteración

%Creado por: Samir Posada
%modificado por : Jorge Araujo
%última actualización: 31/05/2022

function [tabla,x,iter,errabs,errrel]=C4_puntofijo(g,x0,tol,Nmax)

%Inicialización
xant=x0;
Ea=1000;
Er=1000; 
cont=0;
tabla(1,:)=["Iter","Xact","f(Xact)", "Error Abs", "Error Rel"];

%Ciclo
while Ea>tol && cont<Nmax
  
  xact=g(xant);
  Ea=abs(xact-xant);
  Er=Ea/xact;
  cont=cont+1;
  xant=xact;
  tabla(cont+1,:)=[cont,xact,g(xact), Ea, Er];
end
tabla(end,:)=[cont,xact,g(xact), Ea, Er];
%Entrega de resultados
x=xact;
iter=cont;
errabs=Ea;
errrel=Er;
end