# Multimodal embeddings

# 🧠 Multimodal Embeddings with PaLM API

**Multimodal embeddings** allow data from various formats—such as **text**, **images**, **audio**, and **video**—to be embedded in the **same vector space**. This unlocks powerful cross-modal capabilities.

---

## 🎯 Use Cases for Multimodal Embeddings

- 🔍 **Image search using natural language**
- 🎯 **Personalization** and **ad targeting**
- 🛡️ **Trust and safety**, e.g., copyright detection
- 🤝 **Content recommendations** across different formats

---

## 🧭 Conceptual Overview

> "I'm very much a visual person."  
> Imagine a **2D space** where text, image, audio, and video embeddings coexist.

This shared space allows for comparison and semantic similarity across **different data types**.

---

## 🛠️ Using PaLM APIs for Multimodal Embeddings

### Step-by-step:

1. Call the 'get_embeddings()' function
2. Pass an **image** to obtain its embedding
3. Pass **contextual text** to obtain its embedding

'''
image_embedding = model.get_embeddings(image_input)
text_embedding = model.get_embeddings(contextual_text)
'''

> Both return vectors of size **1408 dimensions**

---

## 📐 Dimensionality Details

- **Text embeddings** → 768 dimensions  
  Effective for encoding **words and sentences**

- **Multimodal embeddings** → 1408 dimensions  
  Needed to capture richer, cross-modal semantic information

### Why Higher Dimensions?

- Multimodal data involves **more complex relationships**
- More dimensions help represent **visual features**, **audio patterns**, and **textual meaning** together

---

## ✅ Summary

- **Multimodal embeddings** unify various data types into one semantic space
- Useful for applications like **search**, **recommendation**, and **content moderation**
- The **PaLM API** supports generation of these embeddings with a higher dimensionality of **1408**
- Allows seamless interaction between **text, images, audio, and video**
