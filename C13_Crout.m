%Este programa halla la solución al sistema Ax=b y la factorización LU de A
%usando el método de Crout

%Entradas:
%A, matrix invertible
%b, vector constante

%Salidas
%x, solución
%L, matriz L de la factorización
%U, matriz U de la factorización

%Creado por: Samir Posada
%Modificado por: Jorge Araujo
%última actualización: 31/05/2022

function [x,L,U]=C13_Crout(A,b)

%Inicialización
n=size(A,1);
L=eye(n);
U=eye(n);
m=length(A(1,:));
l=length(b);

%Factorización
if m==n
    if n==l
        for i=1:n-1
            for j=i:n
                L(j,i)=A(j,i)-dot(L(j,1:i-1),U(1:i-1,i)')
            end
            for j=i+1:n
                U(i,j)=(A(i,j)-dot(L(i,1:i-1),U(1:i-1,j)'))/L(i,i)
            end
        end
        L(n,n)=A(n,n)-dot(L(n,1:n-1),U(1:n-1,n)');
        
        %Entrega de resultados
        z=sustprgr([L b]);
        x=sustregr([U z]);
        if isnan(x)
            Error='La matriz no es linealmente independiente'
        end
        
        
    else
        Error = 'El numero de filas de A tiene que ser igual al numero de elementos de b'
    end
else
    Error = 'La matriz no es cuadrada'
end
end