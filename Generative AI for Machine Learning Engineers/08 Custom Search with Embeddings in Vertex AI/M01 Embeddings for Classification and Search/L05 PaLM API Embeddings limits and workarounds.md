# PaLM API Embeddings limits and workarounds

# ⚙️ Rate Limiting and Batch Embeddings with PaLM API

When using the **PaLM embeddings API**, it's important to understand and manage **rate limits** and **token constraints** to prevent errors and optimize performance.

---

## 🚫 API Limits

### Current Constraints:
- **100 requests per minute**
- Each **input document** has a **token limit**
- **Excess tokens are truncated**
- **Document batching** is required for scalability

---

## 🛠️ Handling Rate Limits with MapReduce + Logic

If generating many embeddings, you'll need to implement **rate limiting logic**.

### Rate Limiting Function:

1. Convert **queries per minute (QPM)** to **queries per second (QPS)**
2. Record the **current time**
3. Execute the function using 'yield'
4. Measure execution time
5. Compute the difference from allowed interval:
   - If **> 0** → sleep for the remaining time
   - If **< 0** → proceed with next execution

6. Repeat the function in a loop

---

## 🧱 Custom Class for Rate-Limited Embeddings

1. **Create a derived class** from `'VertexAIEmbeddings'`
2. Call the **rate limiting** logic whenever embedding generation is triggered
3. Enforce **document batching** to align with quota

### Parameters:

- `'EMBEDDING_QPM' = 100`  
  (API-defined queries per minute)

- `'EMBEDDING_NUM_BATCH' = 5`  
  (Embeddings per batch; tune as needed)

### Usage:
Instantiate the custom model:

```python
custom_model = CustomVertexAIEmbeddings(
    qpm=EMBEDDING_QPM,
    batch_size=EMBEDDING_NUM_BATCH
)
