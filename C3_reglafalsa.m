%Este programa halla la solución a la ecuación f(x)=0 en el intervalo [a,b]
%usando el método de la regla falsa

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
%tabla, Tabla con cada iteración

%Creado por: Samir Posada
%modificado por : Jose Pinto
%última actualización: 06/04/2022

function [tabla,x,iter,errabs,errrel]=C3_reglafalsa(f,a,b,tol,Nmax)

%Inicialización
fa=f(a);
fb=f(b);
pm=(fb*a-fa*b)/(fb-fa);
fpm=f(pm);
Ea=1000;
Er=1000;
cont=1;
tabla(1,:)=["Iter", "Xi", "f(Xi)", "Xm","f(Xm)", "Xf", "f(Xf)", "Error Abs", "Error Rel"];

%Ciclo
while E>tol && cont<Nmax
    tabla(cont+1,:)=[cont,a, fa, pm, fpm, b,fb, Ea, Er];
  if fa*fpm<0
     b=pm; 
  else
     a=pm;    
  end 
  p0=pm;
  pm=(f(b)*a-f(a)*b)/(f(b)-f(a));
  fpm=f(pm);
  Ea=abs(pm-p0);
  Er=Ea/pm;
  cont=cont+1;
end
tabla(end,:)=[cont,a, fa, pm, fpm, b,fb, Ea, Er];
%Entrega de resultados
x=pm;
iter=cont;
errabs=Ea;
errrel=Er;
end