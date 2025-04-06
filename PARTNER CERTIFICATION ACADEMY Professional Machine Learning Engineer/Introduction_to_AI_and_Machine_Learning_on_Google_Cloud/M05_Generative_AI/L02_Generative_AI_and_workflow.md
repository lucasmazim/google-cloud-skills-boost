# Generative_AI_and_workflow

# **Introduction to Generative AI on Google Cloud**

To begin, it is important to understand **what generative AI (gen AI) entails, how it functions, and how to create a gen AI project on Google Cloud**.  

Imagine you are:  
- A **marketing manager** spending hours creating compelling content and distributing it through multiple channels.  
- A **data scientist** writing SQL commands to run complex queries on various data sources.  
- An **app developer** creating a chatbot for a specific field like healthcare.  

Generative AI can be your **new go-to assistant** for all these tasks.  

## **What is Generative AI?**  
Generative AI is a type of **artificial intelligence that generates content** across multiple modalities, including:  
- **Text**  
- **Code**  
- **Images**  
- **Speech**  
- **Video**  
- **3D Models**  

When given a **prompt**, generative AI can help with:  
- Launching **marketing campaigns**  
- **Generating code**  
- Creating **chatbots**  
- **Extracting information**  
- **Summarizing documents**  
- **Providing virtual assistance**  

## **How Does Generative AI Work?**  
Generative AI learns from **massive amounts of existing content** like text, images, and videos through a process called **training**, which results in the creation of a **foundation model**.  

A **foundation model** is typically:  
- **Large**, with billions of parameters.  
- **Trained on massive datasets** requiring high computational power.  
- **Versatile**, capable of handling multiple tasks.  

Google has been a leader in **foundation model innovation**, starting from:  
- **Transformer (2017)** – The basis of modern generative AI.  
- **Gemini (2023)** – A **multimodal** model capable of processing text, images, and more.  

### **Key Foundation Models by Google (as of now):**  
- **Gemini** – Multimodal model handling text, images, and more.  
- **Gemma** – Lightweight, open model for language generation.  
- **Codey** – Specialized in code generation.  
- **Imagen** – Focused on image processing.  

**Note:** Foundation models continue to evolve, and Gemini may integrate multiple capabilities into a single model in the future.  

## **Pre-Trained vs. Fine-Tuned Models**  
A **pre-trained model** is trained for **general use cases**, while a **fine-tuned model** is further trained on specific datasets to **solve domain-specific problems**.  

For example:  
- A **pre-trained large language model (LLM)** can **summarize text** and **answer questions** across industries.  
- A **fine-tuned version** can specialize in **finance, healthcare, or retail**, using additional **domain-specific data**.  

This concept is similar to training a dog:  
- **Basic training** = General-purpose pre-training (sit, stay, come).  
- **Specialized training** = Fine-tuning for specific tasks (guide dog, police dog).  

### **Business Value of Generative AI**  
By leveraging **foundation models** like LLMs, generative AI can:  
- **Enhance productivity**  
- **Reduce operational costs**  
- **Create new business opportunities**  

You saw these benefits in **Module 1’s Coffee-on-Wheels case study**, where gen AI:  
- Automated **marketing campaigns**.  
- **Generated customer feedback**.  
- **Optimized delivery routes**.  

---

## **Creating a Generative AI Project on Google Cloud**  
To access and develop gen AI models, **Google Cloud** offers:  
- **Vertex AI Studio** – A primary tool for accessing and tuning gen AI models.  
- **Model Garden** – A repository of pre-trained and fine-tuned gen AI models.  

### **Generative AI Workflow on Google Cloud:**  
1. **Input Prompt** – Enter a request in **Vertex AI Studio**.  
2. **Responsible AI & Safety Checks** – The prompt undergoes **AI safety filtering**.  
3. **Foundation Model Selection** – The request is processed by **Gemini, Imagen, Codey**, or other models.  
4. **Model Customization (Optional)** – Fine-tune the model with **domain-specific data**.  
5. **Results Grounding & Citation** – Ensure **accuracy and reliability** of the output.  
6. **Final Response** – The model delivers the response via **Vertex AI Studio**.  

---

## **What’s Next?**  
In the upcoming lessons, we will focus on:  
- **Vertex AI Studio** – The **interface for accessing and testing gen AI models**.  
- **Model Garden** – A **library of generative AI models** for different applications.  

Let’s dive deeper into these tools!  
