# Module Quiz – RAG Improvements

**Passing score:** 80%

---

### 1. What is the main benefit of query expansion with multiple queries?

- [x] **To broaden the pool of results that an LLM can use to generate a response.**
- [ ] To return a fewer, more accurate number of results to the LLM, so that it can produce a more accurate answer.
- [ ] To increase content that may have less relevance or even contain some distractors to the original query.
- [ ] To generate an answer that provides additional context to the query, and can be used by the LLM to generate a response.

**✅ Explicação:**  
A **expansão de consultas** (query expansion) gera **múltiplas versões da mesma pergunta**, com o objetivo de **ampliar a cobertura** semântica e trazer documentos que podem conter termos diferentes, mas contextualmente relevantes.  
Isso ajuda o modelo a **ter mais conteúdo útil** para responder de forma mais rica e completa.

**❌ Alternativas incorretas:**
- Retornar **menos resultados** é o oposto do que a expansão propõe.
- Inserir conteúdo irrelevante (*distractors*) é um risco, não um benefício.
- Gerar contexto adicional é consequência da recuperação, não da expansão diretamente.

---

### 2. What is the main cause of errors when performing a query with RAG?

- [ ] Detractors
- [x] **Distractors**
- [ ] Relevance
- [ ] Misspelling

**✅ Explicação:**  
**Distractors** são documentos ou trechos recuperados que **parecem relevantes, mas não são**. Eles confundem o modelo, levando a **respostas incorretas ou alucinações**.  
Eles são o principal risco em pipelines RAG mal ajustados.

**❌ Alternativas incorretas:**
- *Detractors* não são um termo técnico usado aqui.
- *Relevance* é o que se busca melhorar, não a causa do erro.
- *Misspelling* pode afetar a recuperação, mas não é a causa principal.

---

### 3. What RAG improvement solution does this statement describe:  
‘By logging a list of relevant and irrelevant answers, you can adapt where a query lands in space and move it closer to where the more relevant answers are.’

- [ ] Retrieval windowing  
- [x] **Embeddings adapter**  
- [ ] Tuning embedding models  
- [ ] Query validation

**✅ Explicação:**  
O **embeddings adapter** ajusta a representação vetorial da query com base em feedback sobre quais documentos são relevantes ou não.  
Com isso, a query é **reposicionada no espaço vetorial**, aumentando a chance de encontrar conteúdos mais relevantes nas próximas buscas.

**❌ Alternativas incorretas:**
- *Retrieval windowing* refere-se ao ajuste da quantidade de contexto retornado.
- *Tuning embedding models* requer treinamento e é mais custoso.
- *Query validation* lida com a qualidade ou estrutura da pergunta, não com o espaço vetorial.

---

### 4. How does reranking using a cross encoder re-order the retrieval results?

- [ ] A bi-encoder processes a large dataset to output a smaller selection of 100 similar sentences, and the cross-encoder is used to rerank those 100 sentences.
- [ ] The retrieved results are re-ordered based on their proximity to the original query in the vector embedding space.
- [ ] Two embeddings are created for two separate input sentences. These sentence embeddings can then be compared, to find the nearest neighbors of both, using cosine similarity.
- [x] **Comparing the query to each retrieved result to provide a relevancy score for each result which produces a new order.**

**✅ Explicação:**  
O **cross-encoder** analisa a **query + resultado juntos**, e gera um **score de relevância mais preciso**, que é então usado para **reordenar os resultados retornados pela busca vetorial inicial**.

**❌ Alternativas incorretas:**
- *Bi-encoder* é usado **antes** do reranking, na recuperação inicial.
- *Proximidade vetorial* já foi considerada na etapa anterior (bi-encoder).
- *Cosine similarity de embeddings separados* descreve bi-encoding, não cross-encoding.

---
