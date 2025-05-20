//-------TRABALHO 1 - ZEROS REAIS DE FUNÇÕES REAIS----------------
//Alunos: Pedro Miotto Mujica, Thiago Oliveira Dupim, Vinicius Castaman, Gabriel Costa
//Resolvendo usando o Método da Bisseção

//Problema 1.1: Obter uma aproximação às raízes das funções:
//1. 𝐟(𝐱) = 𝐱^𝟐 − 𝟑 no intervalo [𝟏; 𝟐], com 𝛜 = 𝟏𝟎**-6
clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DA SECANTE ***\n\n")
function [xk, k] = secante(f, x0, x1, epsilon1, epsilon2, nMax)
   
    k = 0;
    xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
    
    printf(" k  |     xk     | abs(xk-x1) |    f(xk)   |\n");

    while (k < nMax) & (abs(xk - x1) > epsilon1) & (abs(f(xk)) > epsilon2)
        x0 = x1;
        x1 = xk;
        xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0));
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(xk - x1), f(xk));
    end
    
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n", xk, k);
endfunction


deff('y=f(x)', 'y=x^3 - 9*x + 3');


//[xk, k] = secante(f, 1.0, 2.0, 1e-6, 1e-6, 100);

//2. g(𝐱) = 𝐱^𝟐 + 𝐥𝐧(𝐱) no intervalo [𝟎,𝟓; 𝟏], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.1 NÚMERO 2\n");
deff('y = g(x)', 'y = x^2 + log(x)');  
[xk,k] = secante(g, 0.5, 1.0, 1e-5, 1e-5, 100);
