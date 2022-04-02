%Este programa halla la solución a la ecuación f(x)=0 en el intervalo [a,b]
%usando el método de la bisección. 

%Entradas: 
%f, función continua
%a, extremo derecho del intervalo inicial
%b, extremo final del intervalo final
%tol, tolerancia
%Nmax, número máximo de iteraciones

%Salidas
%x, solución
%iter, número de iteraciones
%errabs, error absoluto
%errrel, error relativo
% tabla, Tabla con cada iteración 

%Creado por: Samir Posada
%modificado por : Jorge Arauj0
%última actualización: 02/04/2022

function [tabla,x,iter,errabs,errrel]=C2_biseccion(f,a,b,tol,Nmax)

%Inicialización
fa=f(a);
pm=(a+b)/2;
fpm=f(pm);
Ea=1000;
Er=1000;
fb=f(b);
cont=1;
tabla(1,:)=["Iter", "Xi", "f(Xi)", "Xm","f(Xm)", "Xf", "f(Xf)", "Error Abs", "Error Rel"]
%Ciclo
while Er>tol && cont<Nmax
    tabla(cont+1,:)=[cont,a, fa, pm, fpm, b,fb, Ea, Er];
  if fa*fpm<0
     b=pm; 
  else
     a=pm;    
  end
  fb=f(b)
  p0=pm;
  pm=(a+b)/2;
  fpm=f(pm);
  Ea=abs(pm-p0);
  Er= Ea/pm;
  cont=cont+1;
end
tabla(end,:)=[cont,a, fa, pm, fpm, b,fb, Ea, Er];

%Entrega de resultados
tabla;
x=pm;
iter=cont;
errabs=Ea;
errrel=Er;
end

