import numpy as np

def f(x):
    return x**3 - 9*x + 3

def f1(x):
    return 3*x**2 - 9

epsilon1 = 1e-5
epsilon2 = 1e-5
nMax = 100

print("Método da Bisseção")
ak = 0.0
bk = 1.0
k = 0
xm = 0.5 * (ak + bk)

print("k | xm | abs(bk-ak) | f(xm)")
while k < nMax and abs(bk - ak) > epsilon1 and abs(f(xm)) > epsilon2:
    xm = 0.5 * (ak + bk)
    k += 1
    print(f"{k:2d} | {xm:10.6f} | {abs(bk - ak):10.6f} | {f(xm):10.6f}")
    if f(ak) * f(xm) < 0:
        bk = xm
    else:
        ak = xm
print(f"Aproximadamente: {xm:.6f} é a raiz, com {k} iterações\n")


print("Método da Falsa Posição")
ak = 0.0
bk = 1.0
k = 0
xk = (ak*f(bk) - bk*f(ak)) / (f(bk) - f(ak))

print("k | xk | abs(bk-ak) | f(xk)")
while k < nMax and abs(bk - ak) > epsilon1 and abs(f(xk)) > epsilon2:
    xk = (ak*f(bk) - bk*f(ak)) / (f(bk) - f(ak))
    k += 1
    print(f"{k:2d} | {xk:10.6f} | {abs(bk - ak):10.6f} | {f(xk):10.6f}")
    if f(ak) * f(xk) < 0:
        bk = xk
    else:
        ak = xk
print(f"Aproximadamente: {xk:.6f} é a raiz, com {k} iterações\n")


print("Método de Newton-Raphson")
x0 = 0.5
k = 0
xk = x0 - f(x0)/f1(x0)

print("k | xk | abs(xk-x0) | f(xk) | f'(xk)")
while k < nMax and abs(xk - x0) > epsilon1 and abs(f(xk)) > epsilon2:
    x0 = xk
    xk = x0 - f(x0)/f1(x0)
    k += 1
    print(f"{k:2d} | {xk:10.6f} | {abs(xk - x0):10.6f} | {f(xk):10.6f} | {f1(xk):10.6f}")
print(f"Aproximadamente: {xk:.6f} é a raiz, com {k} iterações\n")
