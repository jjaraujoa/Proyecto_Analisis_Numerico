% Este programa halla el polinomio interpolante de los datos dados usando el
% método de Vandermonde
% 
% Entradas:
% X, abscisas
% Y, ordenadas
% 
% Salidas
% función, La función buscada

%Creado por: Jorge Araujo
%última actualización: 29/05/2022

function funcion=C19_vandermonde(X,Y)


%Inicialización
syms x
n=length(X);
% A=zeros(n);
if n==length(Y)
    
    
    V=vander(X);
    Coef=inv(V)*Y';
    
    funcion=0;
    
    for j=1:n
        funcion = funcion + Coef(j)*x^(n-j)
    end
    ezplot(funcion)
    grid on
    hold on
    plot(X,Y,'xr')
else
    disp("El numero de datos de X tiene que ser los mismos de Y")
    
end
end