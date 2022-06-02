%Este programa halla el polinomio interpolante de los datos dados usando el
%m�todo de Lagrange

%Entradas:
%X, abscisas
%Y, ordenadas

%Salidas
%Funcion, La funci�n buscada
%Grafica de la funci�n y los puntos dados al principio

%Creado por: Jorge Araujo
%�ltima actualizaci�n: 30/05/2022


function funcion=C21_lagrange(X,Y)

syms x
n=length(X);
sum=0;
for i=1:n
    prod=1;
    for j=1:n
        if(j~=i)
            prod=prod*(x-X(j))/(X(i)-X(j));
        end
    end
    sum=sum+Y(i)*prod;
end
funcion=simplify(sum)
ezplot(funcion)
grid on
hold on
plot(X,Y,'xr')

end