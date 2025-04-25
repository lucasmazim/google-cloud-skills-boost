# Vector Search Quiz

**Passing score:** 80%

---

### 1. What are the two main techniques used by ScaNN (Scalable Approximate Nearest Neighbor) to improve search performance in vector search?

- [x] **Space pruning and data quantization**
- [ ] Cosine distance and Manhattan distance
- [ ] Brute force search and approximate nearest neighbor search
- [ ] Dimensionality reduction and indexing

**✅ Explicação:**  
ScaNN melhora o desempenho utilizando:
- **Pruning**: elimina grandes partes do espaço de busca com baixa chance de conter os vetores mais próximos.
- **Quantization**: reduz a precisão dos dados vetoriais para acelerar a busca com perda mínima de qualidade.

**❌ Por que as outras estão erradas:**  
- *Cosine/Manhattan distance* são **métricas**, não **técnicas de aceleração**.  
- *Brute force search* é ineficiente e o oposto de técnicas usadas pelo ScaNN.  
- *Dimensionality reduction and indexing* são importantes, mas **não são os dois pilares principais do ScaNN**.

---

### 2. What is the main purpose of using distance metrics like dot product distance in vector search?

- [x] **Measure the distance between vectors in terms of semantic similarity.**
- [ ] Search for the top three nearest neighbors of a query vector.
- [ ] Generate new vectors from existing ones.
- [ ] Index vectors efficiently in the search space.

**✅ Explicação:**  
Métricas como **dot product, cosine similarity** ou **Euclidean distance** são usadas para mensurar **quão semanticamente próximos** dois vetores são.

**❌ Alternativas erradas:**  
- *Buscar os top 3* é um **uso posterior** da métrica, não o propósito da métrica em si.  
- *Gerar novos vetores* não está relacionado a métricas de distância.  
- *Indexar vetores* é outra etapa do pipeline, não o propósito da métrica.

---

### 3. What are the two main technical challenges that need to be addressed in order to implement vector search effectively?

- [x] **Encoding and indexing**
- [ ] Efficiency and personalization
- [ ] Hallucination and grounding
- [ ] User adoption and cost

**✅ Explicação:**  
A implementação eficaz de vector search depende de:
- **Encoding**: transformar dados (como texto ou imagem) em vetores.  
- **Indexing**: organizar os vetores para buscas rápidas e precisas.

**❌ Alternativas erradas:**  
- *Efficiency/personalization* são **desejáveis**, mas não os **desafios técnicos fundamentais**.  
- *Hallucination/grounding* são problemas de LLMs, não de vector search em si.  
- *User adoption/cost* são **desafios de negócio**, não técnicos.

---

### 4. What is the process of encoding text data into vectors called?

- [ ] Building a text index.
- [ ] Serving the search results.
- [x] **Generating text embeddings.**
- [ ] Training a deep learning model.

**✅ Explicação:**  
Transformar textos em vetores numéricos é chamado de **geração de embeddings** (ex: com BERT, PaLM, Word2Vec).

**❌ Alternativas erradas:**  
- *Text index* é utilizado em keyword search, não em vector search.  
- *Serving* é a entrega do resultado da busca.  
- *Treinamento* é uma etapa anterior ao uso do modelo para gerar embeddings.

---

### 5. What is the general process to build a search application by using Vertex AI Vector Search?

- [ ] Generate one-hot encodings, encode data to embeddings, and create a vector space.
- [x] **Encode data to embeddings, build an index, and search results.**
- [ ] Generate tokens, deploy an index, and create a vector space.

**✅ Explicação:**  
O fluxo básico é:
1. **Codificar os dados em embeddings**
2. **Construir o índice vetorial**
3. **Executar buscas e retornar resultados**

**❌ Alternativas erradas:**  
- *One-hot encodings* são para modelos tradicionais, não para busca semântica.  
- *Tokens* são parte do NLP, mas não diretamente ligados à criação de índice vetorial.

---

### 6. What is the main benefit of using vector search in RAG (retrieval-augmented generation) to address LLM (Large Language Models) hallucination?

- [x] **It allows the LLM to access real-time information for fact-checking.**
- [ ] It eliminates the need for human review of the LLM's responses.
- [ ] It improves the LLM's ability to understand and respond to complex prompts.
- [ ] It reduces the computational cost of fine-tuning the LLM.

**✅ Explicação:**  
RAG usa vector search para **buscar informações confiáveis** em bases externas antes de gerar a resposta, ajudando a **evitar alucinações** (respostas incorretas).

**❌ Alternativas erradas:**  
- Não **elimina** a necessidade de revisão humana.  
- Não **aumenta a compreensão** de prompts, isso é função do modelo.  
- Não reduz custo de **fine-tuning**, que é um processo separado.

---

### 7. Which of the following is correct to compare between vector search and traditional keyword search?

- [ ] Vector search is limited to text, while traditional keyword search can handle multimodal data.
- [x] **Vector search addresses semantic similarity and is good at solving ambiguous queries, whereas traditional keyword search is good at solving precise queries.**
- [ ] Vector search is faster than traditional keyword search.

**✅ Explicação:**  
- **Vector search** é ideal para buscar por **significado** (semântica), mesmo se palavras forem diferentes.  
- **Keyword search** é melhor para buscas **exatas**.

**❌ Alternativas erradas:**  
- Vector search pode lidar com **multimodal data** (imagem, texto, áudio).  
- Vector search é geralmente **mais lenta**, mas mais expressiva.

---
