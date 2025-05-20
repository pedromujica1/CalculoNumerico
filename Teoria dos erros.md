## **1. Representação de Números e Erros**

### 📌 1.1 Sistema de Numeração Binário e Decimal

#### 🔹 Decimal (base 10)

É o sistema que usamos no dia a dia. Utiliza os dígitos de 0 a 9.  
Exemplo:  
237=2×102+3×101+7×100237 = 2 \times 10^2 + 3 \times 10^1 + 7 \times 10^0237=2×102+3×101+7×100

#### 🔹 Binário (base 2)

Usado pelos computadores. Utiliza apenas os dígitos 0 e 1.  
Exemplo:  
10112=1×23+0×22+1×21+1×20=11101011_2 = 1 \times 2^3 + 0 \times 2^2 + 1 \times 2^1 + 1 \times 2^0 = 11_{10}10112​=1×23+0×22+1×21+1×20=1110​

✅ **Conversão Decimal ↔ Binário** é uma habilidade importante para entender como os dados são processados.

---

### 📌 1.2 Aritmética de Ponto Flutuante

Computadores não representam números reais com exatidão – usam aproximações chamadas **ponto flutuante**, geralmente no padrão **IEEE 754**.

#### ⚙️ Representação:

Um número real é representado por:

csharp

CopiarEditar

`Número = sinal × mantissa × base^expoente`

#### 🧊 Exemplo (32 bits, IEEE 754):

- 1 bit para o **sinal**
    
- 8 bits para o **expoente**
    
- 23 bits para a **mantissa (fração)**
    

Isso permite representar valores muito grandes ou muito pequenos, mas **com precisão limitada**.

#### ⚠️ Limitações:

- Não é possível representar todos os números reais.
    
- Algumas frações simples como 13\frac{1}{3}31​ ou 110\frac{1}{10}101​ são aproximadas.
    

---

### 📌 1.3 Tipos de Erros

#### 🔸 Erro Absoluto

Diferença entre o valor exato e o aproximado:

Erro Absoluto=∣xreal−xaproximado∣\text{Erro Absoluto} = |x_{\text{real}} - x_{\text{aproximado}}|Erro Absoluto=∣xreal​−xaproximado​∣

#### 🔸 Erro Relativo

Proporção do erro em relação ao valor real:

Erro Relativo=∣xreal−xaproximado∣∣xreal∣\text{Erro Relativo} = \frac{|x_{\text{real}} - x_{\text{aproximado}}|}{|x_{\text{real}}|}Erro Relativo=∣xreal​∣∣xreal​−xaproximado​∣​

#### 🔸 Erros de Arredondamento

Ocorrem quando o número é cortado por limite de casas decimais (ex.: ponto flutuante).

#### 🔸 Erros de Truncamento

Vêm da simplificação de métodos numéricos (ex.: uso de série de Taylor finita para calcular uma função).

---

### 📌 1.4 Métricas para Avaliar Erros

As principais métricas usadas são:

- **Erro absoluto médio**
    
- **Erro relativo médio**
    
- **Erro percentual**:
    

Erro percentual=Erro Relativo×100%\text{Erro percentual} = \text{Erro Relativo} \times 100\%Erro percentual=Erro Relativo×100%

Estas métricas ajudam a avaliar **a precisão e a confiabilidade das soluções numéricas**.

---

### ✅ Conclusão

Esse tópico fornece a base para entender **como os números são representados e manipulados** no computador e por que é tão importante **avaliar e controlar os erros numéricos**. Sem esse entendimento, os resultados dos algoritmos numéricos podem parecer corretos, mas estarem gravemente imprecisos.