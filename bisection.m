function [x,it,eerr]=bisection(fun,x0,x1,maxit,tol,par) 
%BISECTION solf f(x)=0
%   aproximate the root of f(x) by using the bisection method
for k=1:maxit
 x(k)=(x0+x1)/2;
 
 if feval(fun,x0)*feval(fun,x(k)) < 0     %Vorzeichen verschieden
     x1=x(k);
 else
     x0=x(k);
 end
 eerr(k)=abs(fzero(fun,x(k))-x(k));
% if abs(x1-x0)<tol  %das Intervall ist klein genug
 if eerr(k)<tol
     x(k)=(x0+x1)/2;
     it=k;
    return
 end   
end
it=maxit;
end