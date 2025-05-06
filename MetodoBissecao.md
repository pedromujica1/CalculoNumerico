# Método da Bisseção - Explicação Completa com Exemplos, Analogias e Gráficos

## O que é o Método da Bisseção?

O Método da Bisseção é uma técnica numérica simples e confiável para encontrar **raízes de funções** (valores de $x$ onde $f(x) = 0$). Ele é baseado no **Teorema do Valor Intermediário**, que diz:

> Se uma função $f(x)$ é **contínua** em um intervalo \[a, b], e $f(a) \cdot f(b) < 0$, então existe pelo menos um $c \in (a, b)$ tal que $f(c) = 0$.

Ou seja, se a função muda de sinal entre dois pontos, então existe uma raiz entre eles.

---

## Analogia para Crianças (Explicação Lúdica)

Imagine que você está procurando um **brinquedo escondido** dentro de um armário longo. Mas você só sabe onde ele está com base em uma dica:

* "Do lado esquerdo está quente (positivo)."
* "Do lado direito está frio (negativo)."

Você não sabe exatamente onde está o brinquedo, mas sabe que ele está **exatamente na divisa entre quente e frio**!

Então, você sempre olha no **meio do armário**:

1. Se ainda está quente, você procura daí pra frente.
2. Se está frio, você procura daí pra trás.

E você continua fazendo isso **até encontrar exatamente o ponto onde muda de quente para frio**. Esse ponto é a raiz! 🎯

---

## Algoritmo do Método da Bisseção

1. Escolha um intervalo \[a, b] tal que $f(a) \cdot f(b) < 0$.
2. Calcule o ponto médio: $x_m = \frac{a + b}{2}$.
3. Verifique o sinal de $f(x_m)$:

   * Se $f(a) \cdot f(x_m) < 0$, então a raiz está entre a e $x_m$: atualize b = $x_m$.
   * Senão, a raiz está entre $x_m$ e b: atualize a = $x_m$.
4. Repita até que a diferença entre b e a seja menor que uma tolerância $\varepsilon$, ou até que $|f(x_m)| < \varepsilon$.

---

## Exemplo em Python

```python
def f(x):
    return x**3 - 9*x + 3

def bissecao(ak, bk, epsilon1=1e-5, epsilon2=1e-5, nMax=100):
    k = 0
    xm = 0.5 * (ak + bk)

    print("k |     xm     |  |bk - ak|  |   f(xm)   |")

    while (k < nMax) and (abs(bk - ak) > epsilon1) and (abs(f(xm)) > epsilon2):
        xm = 0.5 * (ak + bk)
        k += 1
        print(f"{k:2d} | {xm:10.6f} | {abs(bk - ak):10.6f} | {f(xm):10.6f}")

        if f(ak) * f(xm) < 0:
            bk = xm
        else:
            ak = xm

    print(f"\nAproximadamente: {xm:.6f} é a raiz, com {k} iterações.")

bissecao(0.0, 1.0)
```

Saída esperada (valores podem variar):

```
k |     xm     |  |bk - ak|  |   f(xm)   |
 1 |   0.500000 |   1.000000 |   -3.750000
 2 |   0.750000 |   0.500000 |   -2.484375
 ...
```

---

## Gráfico da Função com os Pontos da Bisseção

Na animação abaixo (gerada com matplotlib), vemos:

* A curva azul: representa a função $f(x) = x^3 - 9x + 3$
* Pontos vermelhos: cada tentativa (xm) do método
* Ponto verde: aproximação final da raiz

![Bissecao Gráfico](bissecao_plot.png)

---

## Convergência

O método da bisseção sempre converge, mas é relativamente lento, pois reduz o intervalo pela metade a cada passo. A precisão final depende:

* Da **diferença entre os extremos** (|b - a|)
* Do valor de **f(xm)**
* Dos limites de tolerância ($\varepsilon_1, \varepsilon_2$)

---

## Vantagens

* Simples de implementar
* Sempre converge se f(a)\*f(b)<0
* Não exige derivadas

## Desvantagens

* Convergência lenta
* Não funciona se f(a) e f(b) têm o mesmo sinal

---

## Conclusão

O método da bisseção é ideal para entender como métodos numéricos funcionam. Apesar de não ser o mais eficiente, ele é muito confiável e ótimo para aprendizado.

---

Se quiser aprofundar, próximos passos incluem o **método da falsa posição**, **método de Newton-Raphson** e **métodos iterativos para sistemas não lineares**.

---

*Este material foi produzido com base em explicações acessíveis, códigos em Python e visualizações gráficas para facilitar o entendimento.*
