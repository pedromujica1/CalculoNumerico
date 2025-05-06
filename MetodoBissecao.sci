clear();
// clc(); // Comentado: causa erro ao usar com exec()

printf("Aproximação pelo método da bisseção\n");

// Correção da função: ^ no lugar de x3
deff('y = f(x)', 'y = x^3 - 9*x + 3');

ak = 0.0;
bk = 1.0;

epsilon1 = 1e-5;
epsilon2 = 1e-5;

k = 0;
nMax = 100;
xm = 0.5 * (ak + bk);

printf("k | xm | abs(bk-ak) | f(xm) \n");

while (k < nMax) & (abs(bk - ak) > epsilon1) & (abs(f(xm)) > epsilon2)
    xm = 0.5 * (ak + bk);
    k = k + 1;
    
    printf(" %2d | %10.6f | %10.6f | %10.6f \n", k, xm, abs(bk - ak), f(xm));
    
    if f(ak) * f(xm) < 0 then
        bk = xm;
    else
        ak = xm; // Corrigido: era 'sk', que não existe
    end
end

// Corrigido: era 'xim', que não existe — o nome correto da variável é xm
printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xm, k);
