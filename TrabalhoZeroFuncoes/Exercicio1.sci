clear();

printf("-----Método da bisseção\n-------");

//Definindo função
deff('y = f(x)', 'y = x^2 -3');

ak = 1.0;
bk = 2.0;

epsilon1 = 1e-5;
epsilon2 = 1e-5;

k = 0;
nMax = 100;
xm = 0.5 * (ak + bk);

printf("     k   | xm     | abs(bk-ak) | f(xm) \n");

while (k < nMax) & (abs(bk - ak) > epsilon1) & (abs(f(xm)) > epsilon2)
    xm = 0.5 * (ak + bk);
    k = k + 1;
    
    printf(" %2d | %10.6f | %10.6f | %10.6f \n", k, xm, abs(bk - ak), f(xm));
    
    if f(ak) * f(xm) < 0 then
        bk = xm;
    else
        ak = xm;
    end
end

printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xm, k);


