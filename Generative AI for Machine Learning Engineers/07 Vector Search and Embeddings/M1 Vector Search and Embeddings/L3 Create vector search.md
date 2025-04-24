# 🚀 Creating Vector Search

## 🧩 Introdução

Agora que os embeddings estão prontos, o próximo passo é criar o "índice do livro":  
**Indexar o espaço vetorial para permitir buscas rápidas e escaláveis.**

No entanto, isso apresenta dois grandes desafios:

1. Como medir a **distância** entre vetores?
2. Como realizar uma **busca eficiente e escalável** entre vetores?

---

## 📏 Medindo Distâncias entre Vetores

Em um espaço vetorial multidimensional, a visualização não é viável.  
Como saber se *Paris* está mais próxima de *Tokyo* do que de *Apple*?

### 🧮 Quatro métricas populares:

1. **Manhattan Distance** (L1):
   - Soma das diferenças absolutas entre as coordenadas.
   - Ex: como andar pelas ruas em grade de Manhattan.

2. **Euclidean Distance** (L2):
   - Raiz quadrada da soma dos quadrados das diferenças.
   - Distância "reta" entre dois pontos.

3. **Cosine Distance**:
   - Mede o ângulo entre dois vetores.
   - Cos(0) = vetores alinhados, Cos(90°) = vetores ortogonais.

4. **Dot Product Distance**:
   - Considera **direção e magnitude**.
   - Baseado na projeção de um vetor sobre o outro.

---

## 🔍 Algoritmos de Busca no Espaço Vetorial

### 1. **Brute-Force Search**
- Etapas:
  1. Calcular distância entre a query e todos os vetores.
  2. Ordenar por distância.
  3. Retornar os *k* mais próximos.
- ❌ Ineficiente para bases com milhões/bilhões de vetores.

### 2. **TreeAh (Shallow Tree + Asymmetric Hashing)**
- Utiliza **ANN (Approximate Nearest Neighbor)**.
- Troca **um pouco de precisão** por **muita velocidade**.
- Ampliamente usado em ambientes de produção.

---

## ⚙️ ScaNN: Scalable Approximate Nearest Neighbor

Introduzido pelo Google Research em **2020**, base do:
- Google Search
- YouTube
- Sistema de recomendações

### Complexidade do Brute-Force:
**O(N × d)**  
*N* = nº de vetores  
*d* = nº de dimensões

---

## 🛠️ Técnicas Usadas pelo ScaNN

### 1. **Space Pruning** com árvore multi-nível
- Divide o espaço vetorial em **partições hierárquicas**.
- Cada nó da árvore é um **centróide** (centro da partição).
- A busca começa na raiz → partições → sub-partições.
- **Partições irrelevantes são eliminadas** (pruning).

### 2. **Data Quantization**
- Comprime vetores para reduzir tempo e espaço.
- Exemplo: vetor de 9 floats → 12 bits.

### 3. **Incorporação de Lógica de Negócio**
- Ex: Filtrar resultados apenas para:
  - Resorts nos EUA.
  - Vestidos vermelhos.
- Do ponto de vista técnico: **restrição do dataset**.

---

## ☁️ Vertex AI Vector Search

- Baseado em uma versão avançada do **ScaNN**.
- Serviço **gerenciado** de Vector Search.
- Lançado em **2021** como **Matching Engine**.

### ✅ Benefícios:
- **30-50% mais barato** que serviços similares.
- **Baixa latência**, **alta escalabilidade** (bilhões de vetores).
- Integrado à plataforma **Vertex AI**.

---

🎓 **Próxima lição:** *Vector Search na prática*
