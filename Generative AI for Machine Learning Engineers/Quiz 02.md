# Module Quiz – Vertex AI Vector Search

**Passing score:** 80%

---

### 1. An ecommerce website wants to use Vector Search in their application, but only wants it to be accessible from within the same VPC. What endpoint deployment option should they choose?

- [x] **Private Endpoint**
- [ ] Private Service Connect
- [ ] Private Service Access
- [ ] Public Endpoint

**✅ Explicação:**  
O **Private Endpoint** permite que o serviço de Vector Search seja acessado apenas por recursos dentro da **mesma VPC**, garantindo segurança e isolamento de rede.

**❌ Alternativas erradas:**  
- *Private Service Connect* permite conexões **entre VPCs diferentes**.
- *Private Service Access* é usado para conectar redes VPC ao Google gerenciado, mas **não define endpoint de serviço diretamente**.
- *Public Endpoint* expõe o serviço para acesso **via internet pública**.

---

### 2. Why do you need special technology to search embeddings?

- [ ] You need to perform exact matches and such algorithm is not available in all databases
- [ ] You don’t need special technology, they can be searched in any database
- [ ] Current database search is too slow.
- [x] **You need to perform a close neighborhood search and such algorithm is not available in all databases**

**✅ Explicação:**  
**Embeddings representam significados** em espaços vetoriais de alta dimensão. Para encontrar resultados relevantes, é necessário executar **buscas de vizinhança próxima** (nearest neighbor), o que exige algoritmos específicos como **ScaNN, Faiss, Annoy**, etc.

**❌ Alternativas erradas:**
- *Busca por correspondência exata* não é usada em embeddings.
- *Qualquer banco de dados* pode armazenar embeddings, mas **nem todos têm capacidade eficiente de busca vetorial**.
- *Desempenho lento* é consequência, não a **causa primária da necessidade tecnológica**.

---

### 3. What index algorithm is usually the fastest in Vertex AI Vector Search?

- [ ] Cosine distance
- [ ] Manhattan L1 distance
- [ ] Euclidean L2 distance
- [ ] Frankfurt L1 distance
- [x] **Dot product distance**

**✅ Explicação:**  
Na Vertex AI Vector Search, **dot product distance** é altamente otimizado e geralmente mais rápido, especialmente com embeddings gerados por modelos que usam produtos escalares para medir similaridade.

**❌ Alternativas erradas:**
- *Cosine* e *Euclidean* são comuns, mas **geralmente mais lentos** do que dot product em buscas otimizadas.
- *Frankfurt* e *Ulysses* são nomes fictícios sem relevância técnica.

---

### 4. When should you use AlloyDB for PostgreSQL instead of Vector Search? (Select two options)

- [ ] When you want faster embeddings retrieval
- [x] **When you want to have the generation and storage of embeddings taking place within SQL**
- [ ] When you want faster inference on embeddings retrieval
- [ ] When you want cheaper storage
- [x] **When you use smaller datasets and the data is already in PostgreSQL**

**✅ Explicação:**  
- **AlloyDB** é ideal quando você já armazena dados no PostgreSQL e quer **consultar vetores diretamente com pgvector**.
- Também é útil para **workloads menores**, com integração direta no banco.

**❌ Alternativas erradas:**
- *AlloyDB* não é mais rápido que Vector Search para grandes volumes.
- *Inferência* geralmente é feita fora do banco, com modelos.
- *Custo de armazenamento* pode variar, mas **não é o diferencial principal entre AlloyDB e Vector Search**.

---

### 5. What search algorithms are available in Vertex AI Vector Search? (Select two options)

- [x] **Euclidean L2 distance**
- [ ] Frankfurt L1 distance
- [x] **Dot product distance**
- [ ] Ulysses L2 distance
- [ ] Sine distance

**✅ Explicação:**  
Vertex AI Vector Search suporta algoritmos de similaridade como:
- **Dot product**
- **Euclidean (L2)**  
Esses são os mais comuns para medir a proximidade entre embeddings.

**❌ Alternativas erradas:**
- *Frankfurt*, *Ulysses* e *Sine distance* **não existem como algoritmos padrão de busca vetorial**.

---
