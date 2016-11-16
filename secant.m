function [x,it,eerr]=secant(fun,x0,x1,maxit,tol,par)
for k=1:maxit

x(k)=x1;
x1=x1-feval(fun,x1)*(x1-x0)/(feval(fun,x1)-feval(fun,x0));
x0=x(k);
eerr(k)=abs(fzero(fun,x(k))-x(k));
if eerr(k)<tol
    x(k)=(x1+x0)/2;
    it=k;
    return
end
end
it=maxit;
end