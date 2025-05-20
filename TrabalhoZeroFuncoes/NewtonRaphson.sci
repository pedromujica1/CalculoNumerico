//-------TRABALHO 1 - ZEROS REAIS DE FUNÇÕES REAIS----------------
//Alunos: Pedro Miotto Mujica, Thiago Oliveira Dupim, Vinicius Castaman, Gabriel Costa
//Resolvendo usando o Método de Newton-Raphson

//Problema 1.1: Obter uma aproximação às raízes das funções:
//1. f(x) = x^2 − 3 no intervalo [1; 2], com ε = 10^-6

clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DE NEWTON-RAPHSON ***\n\n")

function [xk, k] = newton_raphson(f, f1, a, b, epsilon1, epsilon2, nMax)
   
    xk = (a + b) / 2; 
    x0 = xk + 1;
    k = 0;
    
    printf(" k  |     xk     | abs(xk-x0) |    f(xk)   |   f1(xk)  |\n");
    
    while (k < nMax) & (abs(xk - x0) > epsilon1) & (abs(f(xk)) > epsilon2)
        x0 = xk;
        xk = x0 - f(x0) / f1(x0);
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(xk - x0), f(xk), f1(xk));
    end
    
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n", xk, k);
endfunction

//Definindo a função f(x) = x^2 - 3 e sua derivada f1(x) = 2*x
deff('y=f(x)', 'y=x^2 - 3');
deff('y=f1(x)', 'y=2*x');
//[xk, k] = newton_raphson(f, f1, 1.0, 2.0, 1e-6, 1e-6, 100);

//2. g(𝐱) = 𝐱^𝟐 + 𝐥𝐧(𝐱) no intervalo [𝟎,𝟓; 𝟏], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.1 NÚMERO 2\n");
deff('y = g(x)', 'y = x^2 + log(x)');
deff('y = g1(x)', 'y = x*2 + 1/x');   
[xk,k] = newton_raphson(g,g1, 0.5, 1.0, 1e-5, 1e-5, 100);

