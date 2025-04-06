# Components_of_Tensorflow:_Tensors_and_variables

# 🔢 **Tensors & Variables em TensorFlow – Anotações Estruturadas**

## 📌 Introdução
- Tensors são **arrays N-dimensionais de dados**.
- Compreender a **forma (shape)** dos dados é essencial em qualquer fluxo de Machine Learning.

---

## 🧮 Criando Tensors com `tf.constant()`

### ▶️ **Escalar (Rank 0)**
- Exemplo: `tf.constant(3)`
  - Resultado: número único (escalares).
  - Shape: `()`

### ▶️ **Vetor (Rank 1)**
- Exemplo: `tf.constant([3, 5, 7])`
  - Resultado: vetor unidimensional.
  - Shape: `(3,)`

### ▶️ **Matriz (Rank 2)**
- Exemplo:
  ```python
  tf.constant([[3, 5, 7], [4, 6, 8]])
  ```
  - Duas linhas, três colunas.
  - Shape: `(2, 3)`

### ▶️ **Tensor 3D**
- Empilhando duas matrizes 2D:
  ```python
  tf.constant([
    [[3, 5, 7], [4, 6, 8]],
    [[1, 2, 3], [9, 0, 1]]
  ])
  ```
  - Shape: `(2, 2, 3)`

### ▶️ **Tensor 4D**
- Empilhando dois tensores 3D de shape `(4, 2, 3)`
  - Shape final: `(2, 4, 2, 3)`

---

## 🆚 Diferença entre `tf.constant` e `tf.Variable`

| Tipo           | `tf.constant`                      | `tf.Variable`                     |
|----------------|------------------------------------|------------------------------------|
| Mutabilidade   | Imutável                           | Mutável                           |
| Uso típico     | Dados fixos                        | Pesos de modelos (treinamento)    |
| Definição      | `tf.constant([...])`               | `tf.Variable([...])`              |
| Atualização    | Não permite                        | Métodos: `assign()`, `assign_add()`, `assign_sub()`

---

## 🔍 Operações com Tensors

### ✅ **Inspecionar forma com `tf.shape`**
- Exemplo:
  ```python
  tf.shape(tensor)
  ```

### 🧱 **Empilhamento (stacking)**
- Exemplo:
  ```python
  x1 = tf.constant([2, 3, 4])     # Vetor
  x2 = tf.stack([x1, x1])        # Matriz 2x3
  x3 = tf.stack([x2, x2, x2, x2]) # Tensor 4x2x3
  x4 = tf.stack([x3, x3])        # Tensor 2x4x2x3
  ```

### ✂️ **Fatiamento (slicing)**
- Exemplo:
  ```python
  y = x[:, 0]
  ```
  - Seleciona todas as linhas e **somente a primeira coluna**.
  - Python usa **indexação zero**.

  - Se `x` tem shape `(2, 3)`, então `y` = `[5, 6]`.

### 🔄 **Reshape com `tf.reshape`**
- Exemplo:
  - Tensor original: shape `(2, 3)`
  - Novo shape: `(3, 2)`
  - Códigos:
    ```python
    reshaped = tf.reshape(x, (3, 2))
    ```
  - Leitura é feita linha por linha e reempacotada.

---

## 🔁 Tensors Variáveis com `tf.Variable`

### ✅ Definição
- Requer **valor inicial** (qualquer shape ou tipo).
- Shape e tipo são **fixos após criação**.
- Valor pode ser alterado com:
  - `assign()`
  - `assign_add()`
  - `assign_sub()`

### 🎯 Uso Comum
- Utilizado para **pesos do modelo** que são atualizados durante o treinamento.

### ✅ Participa de operações como qualquer tensor:
- Todos os operadores (`+`, `-`, `*`, `/`) são **sobrecarregados** também para variáveis.
- Pode ser usado como entrada em outras operações TensorFlow.

---

## 📉 Gradientes e Diferenciação com `tf.GradientTape`

### 🧠 Como funciona:
1. Durante o **forward pass**, todas as operações são gravadas na fita (tape).
2. No **backward pass**, TensorFlow calcula os **gradientes** via diferenciação reversa (reverse-mode differentiation).

### 🧾 Exemplo:
- Dentro do contexto de `tf.GradientTape`:
  ```python
  with tf.GradientTape() as tape:
      y = x * x
  grad = tape.gradient(y, x)
  ```

### 🔍 Observações:
- Apenas operações do TensorFlow são rastreadas.
- Ideal para treinar modelos onde precisamos ajustar pesos.

### 🔧 Gradientes customizados
- Úteis quando:
  - A diferenciação padrão é numericamente instável.
  - Computações caras podem ser reutilizadas (cache).
- Podem ser definidas com **funções customizadas de gradiente**.

---
