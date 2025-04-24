# Vector Search and RAG: Solving LLM Hallucinations

## Applications of Vector Search

Vector Search has a variety of applications beyond search, such as:
- Personalization
- Trust and safety
- Mitigating hallucinations in Large Language Models (LLMs)

## The LLM Hallucination Problem

LLMs like chatbots can sometimes produce completely incorrect responses.  
For example:  
*A chatbot might recommend eating yellow raspberries, which do not exist.*

This is known as the **grounding problem** or **LLM hallucination**. Key causes include:
- LLMs only understand the data they were trained on.
- They lack access to real-time or proprietary information.
- They assume the prompt is true and do not request more context.

### Common (but limited) solutions:
- **Fine-tuning**: Requires extensive data and compute resources.
- **Human review**: Time-consuming and expensive.
- **Prompt engineering**: Helps, but is constrained by the LLM's existing knowledge.

## 🧠 Solution: Retrieval Augmented Generation (RAG)

**RAG** enhances LLMs by injecting real-time contextual data into the prompt using Vector Search.

### Architecture:
1. Take user input (prompt).
2. Use Vector Search to retrieve relevant real-time documents.
3. Append these results to the original prompt.
4. Send the augmented prompt to the LLM.

This helps the LLM produce grounded and accurate responses using:
- Original user input
- Verified, real-time context

## Use Case: Research Chatbot

A chatbot helps users explore Google research papers.

### Problem:
LLMs can’t memorize hundreds of documents.

### Solution:
- Use RAG to perform Vector Search on a document index.
- Retrieve relevant papers in response to user questions.
- LLM reads retrieved content and generates a summary answer.

This removes the need for memorization and reduces hallucinations.

### Sample RAG Prompt Includes:
- The user's question
- Instructions like: *“Use only the search results and do not make up an answer.”*
- Retrieved documents

## Summary: Vector Search in RAG

- **Grounding issue**: LLM lacks context and hallucinates.
- **RAG**: Adds supporting context to prompts.
- **Vector Search**: Enables fast, real-time retrieval of relevant data.

---

# 🧪 Lab: Build a Mini Search Engine with Vector Search

### Goal:
Query Stack Overflow using embeddings and Vector Search.

### Dataset:
Over 8 million Stack Overflow questions.

### Steps:
1. Generate text embeddings.
2. Create and deploy a Vector Search index.
3. Run a search query (e.g., *“How can you shuffle rows in SQL?”*).

By completing this lab, you’ll be ready to:
- Use embeddings
- Create scalable Vector Search solutions
- Find similar items in your data efficiently

---

## Conclusion

- Embeddings are key to modern business data representation.
- Vector Search enables fast, reliable retrieval of billions of embeddings.
- Vertex AI provides scalable, production-ready Vector Search technology.
- RAG + Vector Search is a powerful solution to LLM hallucinations.

Thank you for following the course.  
Explore more Google Cloud courses for continued learning.
