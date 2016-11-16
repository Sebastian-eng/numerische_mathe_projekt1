close all;
clear;
clc;
format long;


tol=10^-12;
max=100;


[~,it_bisection,error_bisection]=bisection('fun2',0,1,max,tol);
[~,it_fixpoint,error_fixpoint]=fixedpoint('fun2','fun2_fix',1,max,tol);
[~,it_newton,error_newton]=newton('fun2','fun2_abl',1,max,tol);
[~,it_secant,error_secant]=secant('fun2',0,1,max,tol);

fprintf('Toleranz: %e\n',tol)
fprintf('Maximale Iterationsschritte: %d\n\n',max)
fprintf('Iterationsschritte: Bisection: %d, Fixpunkt: %d, Newton: %d, Secanten: %d\n',it_bisection,it_fixpoint, it_newton, it_secant)
fprintf('Fehler: Bisection: %e, Fixpunkt: %e, Newton: %e, Secanten: %e\n',error_bisection(it_bisection),error_fixpoint(it_fixpoint), error_newton(it_newton), error_secant(it_secant))

figure(1)

subplot(2,1,1)
semilogy(error_bisection)
hold on
subplot(2,1,1)
semilogy(error_fixpoint)
title('Vergleich der Verschiedenen Verfahren')
xlabel('Anzahl Iterationen')
ylabel('Abweichung zur Nullstelle')
legend('Bisektion','Fixpunkt')
grid on

subplot(2,1,2)
semilogy(error_newton)
hold on
subplot(2,1,2)
semilogy(error_secant)
xlabel('Anzahl Iterationen')
ylabel('Abweichung zur Nullstelle')
legend('Newton','Sekanten')
grid on
hold off


figure(2)

semilogy(error_bisection)
hold on
semilogy(error_fixpoint)
semilogy(error_newton)
semilogy(error_secant)
xlabel('Anzahl Iterationen')
ylabel('Abweichung zur Nullstelle')
title('Vergleich der Verschiedenen Verfahren')
legend('Bisektion','Fixpunkt','Newton','Sekanten')
grid on
hold off


