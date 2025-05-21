import numpy as np

# Exercício
def f(x):
    return x**2 + np.log(x)

def bisection_method(a, b, e, nMax=100):
    k = 0
    xm = 0.5 * (a + b)

    print("                          MÉTODO DA BISSECÇÃO\n")

    if (f(a)*f(b) < 0):

        print(" k         |     xm         |    abs(bk-ak)       |        f(xm)          |      \n")

        while (k < nMax) and (abs(b-a) > e) and (abs(f(xm)) > e):
            xm = 0.5 * (a + b)
            print(" %-5d     |   %.6f     |     %.6f        |      %-10.6f       |" % (k , xm, (b-a), (f(xm))))

            if f(a) * f(xm) < 0:
                b = xm
            else:
                a = xm

            k += 1
        print("\nA raiz aprox e: %.6f / com %d iteracoes" %(xm, k))
        return xm, k

    else:
        print("Não foi possivel determinar se há 0 reais na função no intervalo")
        return None, 0
    

def false_position_method(a, b, e, nMax=100):
    k = 0
    xk = abs((a*f(b) - b*f(a)) / (f(b) - f(a)))

    print("                       MÉTODO DA POSIÇÃO FALSA\n")

    if(f(a) * f(b) < 0):
        print(" k         |     xm         |    abs(bk-ak)       |        f(xm)        |     \n")

        while (k < nMax) and (abs(b - a) > e) and (abs(f(xk)) > e):
            xk = (a*f(b) - b*f(a)) / (f(b) - f(a))
            k = k + 1
            print(" %-5d     |   %.6f     |     %.6f        |      %.6f       |" % (k, xk, abs(b - a), f(xk)))

            if f(a) * f(xk) < 0:
                b = xk
            else:
                a = xk

        print("\nA raiz Aprox e %.6f com %d iteracoes" % (xk, k))
        return xk, k
    else:
        print("Nao foi possivel determinar se a f(x) = 0 no intervalo")
        return None, 0

# Exercício

def f1(x):
    return 25*(x**2) + np.log(x) - 0.00015

def d(x):
    return 50*x + (1/x)

def newton_raphson_method(x0, e, nMax=100):
    k = 0
    xk = x0 - (f1(x0) / d(x0))

    print("                                 MÉTODO DE NEWTON-RAPHSON\n")
    print("  k        |      xk         |      abs(xk-x0)   |        f(xk)         |          fl(xk)   | \n")

    while (k < nMax) and (abs(xk - x0) > e) and (abs(f(xk)) > e):
        x0 = xk
        xk = x0 - (f1(x0) / d(x0))
        k = k + 1
        print("  %d        |   %.6f      |     %-.6f      |      %-10.6f      |         %.6f  |" % (k, xk, abs(xk - x0), f(xk), d(xk)))

    print("\nA raiz Aprox e %.6f / com %d iteracoes" % (xk, k))
    return xk, k


a = 0.5
b = 1
e = 10**-5
# ---------- Chamada do método BISECÇÃO ----------
raiz, iteracoes = bisection_method(a, b, e)
# ---------- Chamada do método  FALSA-POSIÇÃO ----------
raiz, iteracoes = false_position_method(a, b, e)
# ---------- Chamada do método NEWTON-RAPHSON ----------
raiz, iteracoes = newton_raphson_method(0.2, e)

