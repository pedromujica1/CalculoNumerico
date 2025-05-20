
clear(); 

printf("\n METÓDO DIRETOFATORAÇO LU POR CROUT SEM PIVOTEAMENTO \n");

A_original = [3,2,4;
              1,1,2;
              4,3,-2];
B_original = [1; 2; 3];

printf("\n ENTRADA - MATRIZ A ORIGINAL:\n");
disp(A_original);

printf("\n ENTRADA - VETOR B (original)\n");
disp(B_original);

A_copia = A_original;
B_copia = B_original;

n = length(B_copia);
X = zeros(n,1); // Inicializar o vetor X

// Etapa de eliminação
for k = 1:n-1
    if A_copia(k,k) == 0 then
        error("PIVÔ NULO ENCONTRADO. MÉTODO SEM PIVOTEAMENTO FALHA");
    end
    for i = k+1:n
        m = A_copia(i,k) / A_copia(k,k);
        A_copia(i,k) = 0;
        for j = k+1:n
            A_copia(i,j) = A_copia(i,j) - A_copia(k,j) * m;
        end
        B_copia(i) = B_copia(i) - B_copia(k) * m;
    end
end

// Substituição regressiva
X(n) = B_copia(n) / A_copia(n,n);
for k = n-1 : -1 : 1
    soma = 0;
    for j = k+1:n
        soma = soma + A_copia(k,j) * X(j);
    end
    X(k) = (B_copia(k) - soma) / A_copia(k,k);
end

printf("\n Solução X do sistema : \n");
mprintf("x(%d) = %.6f\n", [(1:n)', X]);

// Verificação: AX = B
printf("\n Verificação dos resultados (AX = B): \n");
for i = 1:n
    s = 0;
    for j = 1:n
        s = s + A_original(i,j) * X(j);
        printf("(%d*%.6f) ", A_original(i,j), X(j));
        if j < n then
            printf("+ ");
        else
            printf("= %.6f\n", s);
        end
    end
end

// Erro absoluto
printf("\n ERRO ABSOLUTO (AX - B):\n");
erro = A_original * X - B_original;
disp(erro);

printf("\n ****** FIM DA ELIMINAÇÃO GAUSSIANA ************\n");
