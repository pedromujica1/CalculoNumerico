//-------TRABALHO 1 - ZEROS REAIS DE FUNÇÕES REAIS----------------
//Alunos: Pedro Miotto Mujica, Thiago Oliveira Dupim, Vinicius Castaman, Gabriel Costa
//Resolvendo usando o Método da Bisseção

//Problema 1.1: Obter uma aproximação às raízes das funções:
//1. 𝐟(𝐱) = 𝐱^𝟐 − 𝟑 no intervalo [𝟏; 𝟐], com 𝛜 = 𝟏𝟎**-6

clear();

printf("----------Método da bisseção-------\n");

//Definindo função
deff('y = f(x)', 'y = x^2 -3');

ak = 1.0;
bk = 2.0;
//Critério de parada
epsilon1 = 1e-6;
epsilon2 = 1e-6;

k = 0;
nMax = 100;
xm = 0.5 * (ak + bk);

printf("  k |     xm     | abs(bk-ak) |   f(xm)      | \n");
printf("-----------------------------------------------\n")

while (k < nMax) & (abs(bk - ak) > epsilon1) & (abs(f(xm)) > epsilon2)
    xm = 0.5 * (ak + bk);
    k = k + 1;
    
    printf(" %2d | %10.6f | %10.6f | %10.6f   |\n", k, xm, abs(bk - ak), f(xm));
    
    if f(ak) * f(xm) < 0 then
        bk = xm;
    else
        ak = xm;
    end
end
printf("-----------------------------------------------\n")

printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xm, k);

x = linspace(1, 2, 100);  // Gera 100 pontos entre 0 e 3
y = f(x);                 // Calcula f(x)

clf();                    // Limpa a janela gráfica

plot(x, y, 'b-');         // Plota a função f(x) em azul
xgrid();                  // Adiciona grade ao gráfico
xlabel("x");
ylabel("f(x)");
title("Gráfico da função f(x) = x^2 - 3");


//2. g(𝐱) = 𝐱^𝟐 + 𝐥𝐧(𝐱) no intervalo [𝟎,𝟓; 𝟏], com 𝛜 = 𝟏𝟎^−𝟓

