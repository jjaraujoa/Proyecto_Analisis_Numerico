% Este programa halla la solución al sistema Ax=b y la factorización LU de A
% usando el método de factorización LU con eliminación gaussiana simple.
% 
% Entradas:
% A, matrix invertible
% b, vector constante
% 
% Salidas
% x, solución
% L, matriz L de la factorización
% U, matriz U de la factorización

%Creado por: Samir Posada
%Modificado por: Jorge Araujo
%última actualización: 31/05/2022

function [x,L,U]=C11_lusimpl(A,b)

%Inicialización
n=size(A,1);
L=eye(n);
U=zeros(n);
M=A;
m=length(A(1,:));
l=length(b);

%Factorización
if m==n
    if n==l
        for i=1:n-1
            for j=i+1:n
                if M(j,i)~=0
                    L(j,i)=M(j,i)/M(i,i)
                    M(j,i:n)=M(j,i:n)-(M(j,i)/M(i,i))*M(i,i:n);
                end
            end
            U(i,i:n)=M(i,i:n);
            U(i+1,i+1:n)=M(i+1,i+1:n)
        end
        U(n,n)=M(n,n);
        
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

