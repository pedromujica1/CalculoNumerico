#Função polinomial
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

#Testando o metódo
bissecao(0.0, 1.0)
