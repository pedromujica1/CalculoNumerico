//-------TRABALHO 1 - ZEROS REAIS DE FUNÇÕES REAIS----------------
//Alunos: Pedro Miotto Mujica, Thiago Oliveira Dupim, Vinicius Castaman, Gabriel Costa
//Resolvendo usando o Método da Falsa Posição

//Problema 1.1: Obter uma aproximação às raízes das funções:
//1. 𝐟(𝐱) = 𝐱^𝟐 − 𝟑 no intervalo [𝟏; 𝟐], com 𝛜 = 𝟏𝟎**-6
clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DA FALSA-POSIÇÃO ***\n\n")

function [xk, k] = falsa_posicao(f, a, b, epsilon1, epsilon2, nMax)
    k = 0;
    xk = (a * f(b) - b * f(a)) / (f(b) - f(a));
    
    printf(" k  |     xk     | abs(b-a)   |    f(xk)   |\n");
    
    while (k < nMax) & (abs(b - a) > epsilon1) & (abs(f(xk)) > epsilon2)
        xk = (a * f(b) - b * f(a)) / (f(b) - f(a));
        k = k + 1;
        printf(" %2.2i | %10.6f | %10.6f | %10.6f |\n", k, xk, abs(b - a), f(xk));
        
        // Atualizar o intervalo
        if f(a) * f(xk) < 0 then
            b = xk;
        else
            a = xk;
        end
    end
    
    // Exibir resultado final
    printf("\nAproximação ""%8.6f"" à raiz, com ""%2.2i"" iterações\n", xk, k);
endfunction

deff('y=f(x)', 'y=x^2-3');
//[xk, k] = falsa_posicao(f, 1.0, 2.0, 1e-6, 1e-6, 100);

//2. g(𝐱) = 𝐱^𝟐 + 𝐥𝐧(𝐱) no intervalo [𝟎,𝟓; 𝟏], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.1 NÚMERO 2\n");
deff('y = g(x)', 'y = x^2 + log(x)');   
[xk,k] = falsa_posicao(g, 0.5, 1.0, 1e-5, 1e-5, 100);