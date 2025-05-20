#x**2 -3
def f(x):
    return x**2 - 3


epsilon1 = 1e-5
epsilon2 = 1e-5
nMax = 100

print("Método da Bisseção")
ak = 1.0 #extremo inferior, representa o a do intervalo [a,b]
bk = 2.0 #extremo superior, representa o b do intervalo [a,b]
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
