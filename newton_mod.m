function [x,it,eerr]=newton_mod(fun,funderiv,x0,maxit,tol,par)
%NEWTON solve the equation f(x)
%   aproximate the root of f(x) by using the newton method
%TODO: Abbruch bei erreichen der Genauigkeit
x=x0;
for k=1:maxit
s=-feval(fun,x)/feval(funderiv,x);
x=x+par*s;
eerr(k)=abs(fzero(fun,1)-x);
if abs(s)<tol
    it=k;
    return
end
end
it=maxit;
end