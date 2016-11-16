function [x, it, eerr] = fixedpoint(fun,fun_fix, x0, maxit, tol)
%FIXEDPOINT solve the equation g(x)=x
%   aproximate the root of f(x) by using the fixed point approximation

%TODO: Abbruchkriterium (brauchen wir L = max(g'(x)))? 
x(1)=feval(fun_fix,x0);
for k=2:maxit
   x(k)=feval(fun_fix,x(k-1));
   eerr(k)=abs(fzero(fun,x(k))-x(k));
   if eerr(k)<tol
       it=k; 
       return
   end
  
end
it = maxit;
end


