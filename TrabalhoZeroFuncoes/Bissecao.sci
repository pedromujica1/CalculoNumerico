//-------TRABALHO 1 - ZEROS REAIS DE FUNÇÕES REAIS----------------
//Alunos: Pedro Miotto Mujica, Thiago Oliveira Dupim, Vinicius Castaman, Gabriel Costa
//Resolvendo usando o Método da Bisseção


funcprot(0);
clear(); clc();

printf("*** APROXIMAÇÃO PELO MÉTODO DA BISSEÇÃO ***\n\n")
//Função para calcular a raiz de uma função f(x) no intervalo [a, b] usando o método da bisseção
function xm = bissecao(f, a, b, epsilon1, epsilon2, nMax)
    
    ak = a;
    bk = b;
    k = 0;
    xm = 0.5 * (ak + bk);

    printf("\n  k |     xm     | abs(bk-ak) |   f(xm)      | \n");
    printf("-----------------------------------------------\n");

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

    printf("-----------------------------------------------\n");
    printf("Aproximadamente: %8.6f é a raiz, com %2d iterações\n", xm, k);

    // --- Gerando gráfico da função com destaque do intervalo [1,2] ---
    x = linspace(-3, 3, 500);
    y = f(x);

    clf();
    //Plota a função f(x) em azul                   
    plot(x, y, 'b-');         
    xgrid();                  
    xlabel("x");
    ylabel("f(x)");
    titulo = msprintf("Gráfico da função com intervalo [%g, %g] destacado", a, b);
    title(titulo);

    //Destaca intervalo [a, b]
    xx = linspace(a, b, 100);
    yy = f(xx);
    plot(xx, yy, 'r', 'LineWidth', 5);  //linha vermelha no intervalo [1,2]
    plot(xm, f(xm), 'ko');              //marca ponto da raiz aproximada
endfunction

//-------------Problema 1.1: Obter uma aproximação às raízes das funções----------------
//1. 𝐟(𝐱) = 𝐱^𝟐 − 𝟑 no intervalo [𝟏; 𝟐], com 𝛜 = 𝟏𝟎**-6

printf("PROBLEMA 1.1 NÚMERO 1\n");
//deff('y = f(x)', 'y = x^2 - 3');
//raiz = bissecao(f, 1.0, 2.0, 1e-6, 1e-6, 100);

//2. g(𝐱) = 𝐱^𝟐 + 𝐥𝐧(𝐱) no intervalo [𝟎,𝟓; 𝟏], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.1 NÚMERO 2\n");
deff('y = g(x)', 'y = x^2 + log(x)');   
raiz = bissecao(g, 0.5, 1.0, 1e-5, 1e-5, 100);



