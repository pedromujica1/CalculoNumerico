clear();

printf("Aproximação pelo método de Newton-Raphson\n");

//Definindo função
deff('y = f(x)', 'y = x^3 - 9*x + 3');
deff('y = f1(x)', 'y =3*x^2-9');

x0=0.5


epsilon1 = 1e-5;
epsilon2 = 1e-5;
k = 0;
nMax = 100;
xk = x0 - f(x0) /f1(x0);

printf("k | xm | abs(bk-ak) | f(xm) \n");

while (k < nMax) & (abs(xk- x0) > epsilon1) & (abs(f(xk)) > epsilon2)
    x0 = xk
    xk = x0 - f(x0) / f1(x0)
    k = k + 1
    printf(" %2.2i | %10.6f | %10.6f | %10.6f | %10.6f\n", k, xk, abs(xk-x0), f(xk), f1(xk)) 
end
printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xk, k);
