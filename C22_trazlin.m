%Este programa halla el spline lineal que interpola los datos dados usando el
%método de trazadores lineales

%Entradas: 
%X, abscisas 
%Y, ordenadas

%Salidas
%Funcion, La función buscada
%Grafica de la función y los puntos dados al principio

%Creado por: Jorge Araujo
%última actualización: 30/05/2022

function C22_trazlin(X,Y)

n=length(X);
for k=1:n-1
    m=(Y(k+1)-Y(k))/(X(k+1)-X(k));
    b=Y(k)-m*X(k);
    if b>0
        fprintf('\n%fx+%f \t para x en [%.2f,%.2f]',m,b,X(k),X(k+1))
    elseif b<0
        fprintf('\n%fx-%f \t para x en [%.2f,%.2f]',m,abs(b),X(k),X(k+1))
    else
        fprintf('\n%fx \t \t para x en [%.2f,%.2f]',m,X(k),X(k+1))
    end
end
    fprintf('\n\n')
    plot(X,Y,'xr',X,Y)


end