% Este programa halla la solución al sistema Ax=b usando el método de
% eliminación gaussiana simple.
% 
% Entradas:
% A, matrix invertible
% b, vector constante
% 
% Salidas
% x, solución

%Creado por: Samir Posada
%Modificado por: Jorge Araujo
%última actualización: 30/05/2022

function x=C8_gausspl(A,b)

%Inicialización
n=size(A,1);
m=length(A(1,:));
l=length(b);

if m==n
    if n==l
        M=[A b];
        %Reducimos el sistema
        for i=1:n-1
            for j=i+1:n
                if M(j,i)~=0
                    M(j,i:n+1)=M(j,i:n+1)-(M(j,i)/M(i,i))*M(i,i:n+1)
                end
            end
        end
        
        %Entrega de resultados
        x=sustregr(M); %Sustitución regresiva
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