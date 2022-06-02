%Este programa halla el polinomio interpolante de los datos dados usando el
%m�todo de diferencias divididas

%Entradas:
%X, abscisas
%Y, ordenadas

%Salidas
%Funcion, La funci�n buscada
%Grafica de la funci�n y los puntos dados al principio

%Creado por: Samir Posada
%Editado por: Jorge Araujo
%�ltima actualizaci�n: 30/05/2022

function funcion=C20_difdivididas(X,Y)

%Inicializaci�n
syms x
n=length(X);
D=zeros(n);

%Ciclo
D(:,1)=Y';
for i=2:n
    aux0=D(i-1:n,i-1);
    aux=diff(aux0);
    aux2=X(i:n)-X(1:n-i+1);
    D(i:n,i)=aux./aux2';
end

%Entrega de resultados
Coef=diag(D);

funcion(1)=Coef(1)
aux3=1

for j=2:n
    
    aux3=(x-X(j-1))*aux3;
    funcion = funcion + Coef(j)*aux3;
end
ezplot(funcion)
grid on
hold on
plot(X,Y,'xr')

end