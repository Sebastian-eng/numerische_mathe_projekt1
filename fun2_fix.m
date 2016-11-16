function [y ] = fun2_fix(x )
%y=sqrt(((cos(2*x)).^2));
%y=((cos(2*x).^2)-x.^2)+x;
y=acos(abs(x))*0.5;     %funktioniert!
end
