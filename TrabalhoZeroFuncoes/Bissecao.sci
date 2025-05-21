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
//deff('y = g(x)', 'y = x^2 + log(x)');   
//raiz = bissecao(g, 0.5, 1.0, 1e-5, 1e-5, 100);

//-------------Problema 1.2: Obter uma aproximação para primeira raiz positiva da função:----------------
//1. 𝐟(𝐱) = 𝐞^−𝐱 − 𝐬𝐞𝐧(𝐱), com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.2 NÚMERO 1\n");
//2. 𝐟(𝐱) = 𝐱 𝐥𝐧(𝐱) − 𝟑.𝟐 no intervalo [𝟐, 𝟑], com 𝛜 = 𝟏𝟎^−𝟔
printf("PROBLEMA 1.2 NÚMERO 2\n");

//-------------Problema 1.3: Obter uma aproximação às raízes das funções:---------------------------------
//1. 𝐟(𝐱) = 𝐜𝐨𝐬(𝐱) + 𝐱 no intervalo [−𝟏, 𝟎], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.3 NÚMERO 1\n");
//2. g(𝐱) = 𝐞^𝐱 + 𝐱 no intervalo [−𝟏, 𝟎], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.3 NÚMERO 2\n");

//-------------Problema 1.4: Obter uma aproximação às raízes----------------
//1. A raiz cúbica de 𝐟(𝐱) = 𝐱^𝟑 − 𝟓, com 𝛜 = 𝟏𝟎^−𝟔
printf("PROBLEMA 1.4 NÚMERO 1\n");
//2. A raiz negativa de g(𝐱) = 𝐱^𝟑 − 𝟓𝐱^𝟐 + 𝐱 + 𝟑, com 𝛜 = 𝟏𝟎^−𝟔
printf("PROBLEMA 1.4 NÚMERO 2\n");

//-------------Problema 1.5: Obter uma aproximação à raiz de----------------
//1. 𝐟(𝐱) = 𝐬𝐞𝐧(𝐱) − 𝐭𝐠(𝐱) no intervalo [𝟑, 𝟒], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.5 NÚMERO 1\n");


//2. 𝐟(𝐱) = 𝐞^−𝐱^𝟐 − 𝐜𝐨𝐬(𝐱) no intervalo [𝟏, 𝟐], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.5 NÚMERO 2\n");

//-------------Problema 1.6: Obter uma aproximação às raízes das funções----------------
//1. 𝐠(𝐱) = 𝐱^𝟑 − 𝐱 − 𝟏 no intervalo [𝟏, 𝟐], com 𝛜 = 𝟏𝟎^−𝟔
printf("PROBLEMA 1.6 NÚMERO 1\n");

//2. 𝐡(𝐱) = 𝟒𝐬𝐞𝐧(𝐱) − 𝐞^𝐱 no intervalo [𝟎, 𝟏], com 𝛜 = 𝟏𝟎^−𝟓
printf("PROBLEMA 1.6 NÚMERO 2\n");
//////////////////////////////////////////////////////////////////////////////////////
//------------------------------ PARTE 2 --------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////

//-------------Problema 2.1: Discuta a função 𝐟(𝐱) = 𝟐𝟑𝟎𝐱^𝟒 + 𝟏𝟖𝐱^𝟑 + 𝟗𝐱^𝟐 − 𝟐𝟐𝟏𝐱 − 9----------------
//Intervalo: [-0.3, 1.1]
printf("PROBLEMA 2.1\n");


//-------------Problema 2.2: Função de captação de energia solar----------------
//y = f(A)', 'y = (%pi*(h/cos(A))^2 * F / (0.5*%pi*D^2*(1 + sin(A) - 0.5*cos(A))) - C
printf("PROBLEMA 2.2\n");
//𝐡 = 𝟑𝟎𝟎𝒎; 𝐅 = 𝟎.𝟖; 𝐃 =𝟏𝟒𝒎; 𝐂 = 𝟏𝟐𝟎0
// Intervalo: 0 ≤ A ≤ %pi/25 (~0.1257 rad)

//-------------Problema 2.3: Movimento de material perigoso----------------
//d=10; 'y = p(t)', 'y = 7*(2.0 - 0.9^t) - d'
printf("PROBLEMA 2.3\n");

//-------------Problema 2.4: Nível de oxigênio em rio----------------
//O = 5; deff('y = C(d)', 'y = 10 - 20*(exp(-0.2*d) - exp(-0.75*d)) - O');
printf("PROBLEMA 2.4\n");