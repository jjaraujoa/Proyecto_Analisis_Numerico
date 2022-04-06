%Salidas
%a, extremo izquierdo del intervalo
%b, extremo derecho del intervalo
%iter, número de iteraciones
%errabs, error absoluto
%errrel, error relativo
% tabla, Tabla con cada iteración

%Creado por: Samir Posada
%modificado por : Jose Pinto
%última actualización: 06/04/2022


function [tabla,a,b,iter,errabs,errrel]=C1_busquedas(f,x0,h,Nmax)

%Inicialización
xant=x0; 
fant=f(xant);
xact=xant+h; 
fact=f(xact);
Ea=1000;
Er=1000;
tabla(1,:)=["Iter", "Xant", "f(Xant)", "Xact","f(Xact)", "Error Abs", "Error Rel"];

%Ciclo
for i=1:Nmax
    tabla(i+1,:)=[i,xant, fant, xact, fact, Ea, Er];
    if fant*fact<0
        break;
    end
    xant=xact;
    fant=fact;
    xact=xant+h;
    fact=f(xact);
    Ea=abs(xact-xant);
    Er= Ea/xact;
end
tabla(end,:)=[i,xant, fant, xact, fact, Ea, Er];
%Entrega de resultados
a=xant;
b=xact;
iter=i;
errabs=Ea;
errrel=Er;
end