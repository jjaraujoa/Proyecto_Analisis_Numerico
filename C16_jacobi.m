% Este programa halla la soluci�n al sistema Ax=b usando el m�todo de Jacobi
% 
% Entradas: 
% A, matrix invertible
% b, vector constante
% x0, aproximaci�n inicial 
% tol, tolerancia
% Nmax, n�mero m�ximo de iteraciones
% 
% Salidas
% x, soluci�n
% iter, n�mero de iteraciones
% errabs, error absoluto
% errrel, error relativo
% tabla, Tabla con cada iteraci�n 


%Creado por: Samir Posada
%modificado por : Jorge Araujo
%�ltima actualizaci�n: 31/05/2022

function [tabla,x,iter,errabs,errrel]=C16_jacobi(A,b,x0,tol,Nmax)

%Inicializaci�n
D=diag(diag(A));
L=-tril(A)+D;
U=-triu(A)+D;
T=inv(D)*(L+U);
C=inv(D)*b;
xant=x0;
Ea=1000;
Er=1000; 
cont=0;

if length(xant)==4
    tabla(1,:)=["Iter","X1act","X2act","X3act","X4act", "Error Abs", "Error Rel"];
end
%Ciclo
while Ea>tol && cont<Nmax       
    xact=T*xant+C;
    Ea=max(abs(xant-xact));
    Er=max(Ea./xact);
    xant=xact;
    cont=cont+1;
    if length(xant)==4
        tabla(cont+1,:)=[cont,xact(1),xact(2),xact(3),xact(4), Ea, Er];
    end
end

%Entrega de resultados
x=xact;
iter=cont;
errabs=Ea
errrel=Er
end