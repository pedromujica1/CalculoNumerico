clear(); clc()

printf("\n* METODO DIRETO: THOMAS (TDMA) SISTEMAS TRIDIAGONAIS *\n")
a = [0;-1;-1]
b = [2;2;2]
c= [-1;-1;0]
d= [1;1;1]


//
a_original = a
b_original = b
c_original = c
d_original = d

printf("\n VETOR a^T: "); disp(a')
printf("\n VETOR b^T: "); disp(b')
printf("\n VETOR c^T: "); disp(c')
printf("\n VETOR d^T: "); disp(d')

n = length(b)
if b(1) == 0 then
    error("Pivô nulo encontrado na primeira linha. Método falha.")
end

c(1) = c(1) / b(1)
d(1) = d(1) / b(1)

for i = 2:n-1
    temp = b(i) - a(i) * c(i-1)
    if temp == 0 then
        error("Pivô nulo encontrado na linha" +string(i) +" Método falha.")
    end
    c(i) = c(i) / temp
    d(i) = (d(i) - a(i) * d(i-1)) / temp
end

temp = b(n) - a(n) * c(n-1)
if temp == 0 then
    error("Pivô nulo encontrado na ultima linha. Método falha.")
end
d(n) = (d(n) - a(n) * d(n-1))/ temp

//retrosubstituição
X = zeros(n,1)
X(n) = d(n)
for i = n-1:-1:1
    X(i) = d(i) - c(i) * X(i+1)
end
//impressão da solução
printf("\n SOLUÇÃO X DO SISTEMA: \n")
mprintf("x(%d) = %.6f\n ",[(1:n)',X])

// reconstrucao da matriz tridiagonal A para verificacao do erro
A = diag(b_original)
for i = 2:n
    A(i,i-1) = a_original(i)
end
for i = 1:n-1
    A(i,i+1) = c_original(i)
end
//CÁLCULO E EXIBIÇÃO DO ERRO ABSOLUTO

printf("\n ERRO ABSOLUTO (A*X -d): ")
erro = A*X - d_original;
disp(erro)
printf("\n **************** TDM FINALIZADO ******************* \n")
