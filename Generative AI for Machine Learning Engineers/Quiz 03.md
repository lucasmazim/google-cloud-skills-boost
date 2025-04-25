# Module Quiz – RAG (Retrieval-Augmented Generation)

**Passing score:** 80%

---

### 1. Choose the reasons to build your own RAG instead of using the out-of-the-box Vertex AI Agent Builder solution? (Select two options)

- [ ] You want to save money
- [ ] You can perform faster vector embeddings
- [ ] You want to launch a product fast to market
- [x] **You need specific parsing of complex documents**
- [x] **You want to support search on images, videos and audio formats**

**✅ Explicação:**  
Construir sua própria solução RAG é vantajoso quando:
- Você precisa de **parsing personalizado de documentos complexos** (como PDFs não estruturados, formulários, imagens com OCR etc).
- Você quer suportar **busca multimodal** (imagens, vídeos, áudio), o que não está disponível na maioria dos sistemas prontos como o Agent Builder.

**❌ Alternativas incorretas:**
- *Salvar dinheiro* geralmente não é verdade — construir uma solução customizada tende a ser **mais caro**.
- *Faster embeddings* dependem do modelo e hardware — não é exclusivo de soluções customizadas.
- *Launch fast* é justamente uma vantagem do **Agent Builder**, não de soluções próprias.

---

### 2. When should you use a RAG over Fine Tuning an LLM? (Select two options)

- [ ] When you want to adapt the model to another domain, such as creating code for a language that the initial model has not been trained in.
- [x] **When you want to add citations and references to specific documents.**
- [x] **When information needs to be constantly updated.**
- [ ] When you have a bigger budget to spend in technology and research.
- [ ] When you want that the LLM takes a certain personality or role.

**✅ Explicação:**  
Use RAG quando:
- A informação precisa ser **atualizada com frequência**, sem necessidade de re-treinar o modelo.
- Você deseja que o modelo **cite documentos específicos**, o que só é possível com grounding feito na etapa de recuperação.

**❌ Alternativas incorretas:**
- *Fine-tuning* é ideal para adaptação a domínios desconhecidos.
- *Personificação e tom* são melhor tratados com técnicas como **prompt engineering**.
- *Orçamento maior* não é critério decisivo entre fine-tuning vs. RAG — o ponto é **requisitos funcionais**.

---

### 3. Why should you use a RAG? (Select two options)

- [ ] To perform vector embeddings
- [ ] To modify the LLM with our own preferences
- [x] **To ground the answers in specific data or documents**
- [x] **To reduce hallucinations**
- [ ] To provide reinforcement learning from human feedback

**✅ Explicação:**  
RAG é ideal para:
- **Ancorar (ground) respostas** em documentos confiáveis e atualizados.
- **Reduzir alucinações**, pois o modelo se apoia em dados externos.

**❌ Alternativas incorretas:**
- *Embeddings* são parte do processo, mas **não a motivação principal**.
- *Modificar preferências* é papel do fine-tuning ou prompt design.
- *RLHF* (reinforcement learning from human feedback) é outra abordagem de alinhamento, não relacionada diretamente a RAG.

---

### 4. How can you optimize a RAG solution? (Select two options)

- [ ] Caching results in CloudSQL
- [ ] Adding GPUs to process search results
- [x] **Adding attributes to be able to filter search results**
- [x] **Caching results in MemoryStore**
- [ ] Adding TPUs for image, video and audio generation

**✅ Explicação:**  
Para otimizar o desempenho do RAG:
- Use **atributos (filters)** para limitar e refinar buscas vetoriais (ex: por tipo de documento, data, categoria).
- Use **caching com MemoryStore** (Redis/Memcached) para armazenar respostas já consultadas.

**❌ Alternativas incorretas:**
- *CloudSQL* não é ideal para cache de alta performance.
- *GPUs/TPUs* são úteis em **inference pesada**, mas não trazem ganho real na recuperação vetorial ou cache.
