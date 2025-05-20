import numpy as np
import matplotlib.pyplot as plt


# Definindo a função
def f(x):
    return x**3 - 9*x + 3

# Condições iniciais
x0 = 0.5
x1 = 1.0
epsilon1 = 1e-5
epsilon2 = 1e-5
n_max = 100

# Inicialização
k = 0
xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0))

print("k |        xk       |   abs(xk - x0)  |      f(xk)")

while k < n_max and abs(xk - x1) > epsilon1 and abs(f(xk)) > epsilon2:
    x0 = x1
    x1 = xk
    xk = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0))
    k += 1
    print(f"{k:2d} | {xk:14.8f} | {abs(xk - x0):14.8f} | {f(xk):14.8f}")

print(f"\nAproximadamente: {xk:.8f} é a raiz, com {k} iterações.")

x = np.linspace(-3, 3, 400)
y = f(x)

plt.axhline(0, color='gray', linestyle='--')
plt.plot(x, y, label="f(x) = x³ - 9x + 3")
plt.scatter([xk], [f(xk)], color='red', label="Raiz Aproximada")
plt.legend()
plt.grid(True)
plt.title("Método da Secante")
plt.show()
