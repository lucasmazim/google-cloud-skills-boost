# Module Quiz – Text Embeddings

**Passing score:** 80%

---

### 1. What are potential use cases for text embedding? (Select two options)

- [x] **Semantic Search**
- [x] **Text classification**
- [ ] Language translation
- [ ] Fraud detection
- [ ] Linear regression

**✅ Explicação:**  
Text embeddings capturam o **significado semântico** do texto, permitindo que modelos comparem similaridades de maneira contextual.

- **Semantic Search**: permite buscar conteúdo com base em significado e não só palavras-chave.
- **Text classification**: embeddings ajudam a representar o texto como entrada numérica para modelos de classificação.

**❌ Por que as outras estão erradas:**  
- *Language translation* envolve seq2seq, transformers e não necessariamente embeddings diretos.
- *Fraud detection* pode usar embeddings, mas **não é um uso direto e comum de text embeddings sem estrutura adicional**.
- *Linear regression* é uma técnica estatística, não um caso de uso de embeddings.

---

### 2. How can you improve the quality of embeddings in Vertex AI? (Select two options)

- [x] **Fine tuning the embeddings model**
- [x] **Providing the task type, such as retrieval, semantic similarity, classification or clustering**
- [ ] Changing the dimensions of the embeddings depending on the use case
- [ ] Updating all the vector embeddings for the model every time
- [ ] Using prompt engineering

**✅ Explicação:**  
Para melhorar a qualidade das embeddings na Vertex AI:

- **Fine tuning** permite ajustar um modelo base para um domínio específico, otimizando as representações vetoriais.
- **Informar o tipo de tarefa** (ex: *semantic similarity* ou *classification*) ajuda a API a gerar embeddings mais eficazes para aquele propósito.

**❌ Alternativas erradas:**
- *Mudar a dimensão* das embeddings **não é suportado diretamente** pela API, pois o tamanho é fixo por modelo.
- *Atualizar todos os vetores* constantemente não melhora a qualidade, apenas reflete novos dados.
- *Prompt engineering* é útil para **LLMs na geração de texto**, mas **não afeta diretamente embeddings**.

---

### 3. How many dimensions do vector embeddings have when using PaLM APIs? (Select two options)

- [x] **768 dimensions for text**
- [x] **1024 dimensions for multimodal embeddings like images**
- [ ] 512 dimensions for multimodal embeddings like images
- [ ] 512 dimensions for text
- [ ] 512 dimensions for text, 1024 for images and 2048 for videos

**✅ Explicação:**  
- **Text embeddings** no PaLM geralmente têm **768 dimensões**, o que tem se mostrado eficaz para representar significados de palavras e frases.  
- **Multimodal embeddings**, como imagens, podem ter **1024 dimensões** ou mais.

**❌ Alternativas erradas:**  
- *512 dimensões* não é o padrão para PaLM.  
- *2048 para vídeos* pode ser verdade para outros modelos, mas **não foi mencionado no contexto do PaLM API específico**.

---

### 4. How are embedding vectors created?

- [ ] They are encrypted values of each letter in the words
- [ ] They are the unicode decimal values of the letters in the words
- [ ] They are a numeric hash of the words
- [x] **They use a ML algorithm that can capture the semantic meaning of the text and represent it as a multidimensional vector**

**✅ Explicação:**  
Embeddings são criadas com **modelos de machine learning**, como BERT ou PaLM, que **aprendem representações semânticas** de textos e convertem esses significados em vetores de múltiplas dimensões.

**❌ Alternativas erradas:**  
- *Encrypted/unicode/hash* são formas simples de transformação textual, mas **não capturam semântica**.
