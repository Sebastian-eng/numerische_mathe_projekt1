function [x,it,eerr]=newton(fun,funderiv,x0,maxit,tol,par)
%NEWTON solve the equation f(x)
%   aproximate the root of f(x) by using the newton method
%TODO: Abbruch bei erreichen der Genauigkeit
x(1)=x0;
for k=2:maxit
%s=-feval(fun,x)/feval(funderiv,x);
x(k)=x(k-1)-feval(fun,x(k-1))/feval(funderiv,x(k-1));
eerr(k)=abs(fzero(fun,x(k))-x(k));
if eerr(k)<tol
    it=k;
    return
end
end
it=maxit;
end