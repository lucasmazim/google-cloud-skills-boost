# Prompt_design

# **Prompt Design and Model Parameters in Generative AI**

## **Introduction**
In this lesson, you explore the **art and science of prompt design**, a fundamental skill for utilizing **generative AI** effectively.  
You also learn about **model parameters** like **temperature, top-K, and top-P**, which influence the randomness and creativity of responses.

---

## **1. Understanding Prompt Design**
A **prompt** is a **natural language instruction** given to a generative AI model to generate a response.  
There are **three key methods** to shape the model’s response:

### **1.1 Zero-Shot Prompting**
- Provides **only an instruction** with **no examples**.
- Example:  
  **"Generate a list of items I need for a camping trip to Joshua Tree National Park."**  
- The model responds with a **useful list** without additional context.

### **1.2 One-Shot Prompting**
- Provides **one example** along with the instruction.
- Example:  
  **Instruction**: "Write a haiku about nature."  
  **Example**:  
  *Silent river flows,*  
  *Moonlight dances on its waves,*  
  *Echoes in the night.*  
- The model learns from the **single example** before generating a response.

### **1.3 Few-Shot Prompting**
- Provides **multiple examples** to **train** the model on **expected behavior**.
- Example:  
  **Context**: "You are an IT help desk assistant."  
  **Examples**:  
  - "Couldn't log in" → "Suggest a password reset."  
  - "Lost internet connection" → "Check router or modem."  
- When the model receives a new request like **"My computer screen is frozen."**,  
  it responds with **"Restart your computer."**

---

## **2. Best Practices for Prompt Design**
To create **effective** prompts, follow these guidelines:
✔ **Be concise** – Keep the prompt simple.  
✔ **Be specific** – Clearly define what you need.  
✔ **Ask one task at a time** – Avoid complex, multi-step requests.  
✔ **Provide examples** – Improve quality by showing desired responses.  
✔ **Experiment** – There’s no single best way; test different structures.

If you find a **well-designed prompt**, you can **save it** in the **Prompt Gallery** for future use.

---

## **3. Understanding Model Parameters**
Generative AI models generate responses by **predicting the next word** in a sentence based on probabilities.  
However, **too much predictability** makes responses **boring**, while **too much randomness** can make them **illogical**.  
To **control randomness and creativity**, you can adjust:

### **3.1 Temperature**
- **Controls randomness in the response.**
- **Low temperature (e.g., 0.2)** → Generates **predictable, logical answers**.  
  - Best for **Q&A, summarization, factual responses**.  
- **High temperature (e.g., 0.9)** → Generates **creative, unpredictable answers**.  
  - Best for **storytelling, marketing, brainstorming**.  

### **3.2 Top-K Sampling**
- **Limits word selection to the top-K most probable words**.
- **Example**:
  - **Top-K = 2** → The model chooses between **the 2 most likely words**.
  - **Top-K = 5** → More variety, but could include less relevant words.

### **3.3 Top-P Sampling (Nucleus Sampling)**
- **Dynamically adjusts the number of words to sample from.**
- **Example**:
  - **Top-P = 0.75** → Selects words until their **cumulative probability** reaches **75%**.
  - **More flexible** than Top-K, dynamically adjusting word selection.

### **Comparison**
| Parameter  | Effect |
|------------|---------------------------------|
| **Temperature** | Controls creativity and randomness. |
| **Top-K** | Selects from the **K most likely words**. |
| **Top-P** | Selects from **words until probability reaches P%**. |

**Note:** You don’t need to adjust these parameters constantly, especially **Top-K and Top-P**.

---

## **4. Experimenting with Prompt Design in Vertex AI Studio**
1. **Go to Vertex AI Studio** and click **"New Prompt"**.
2. **Try different prompting techniques** (zero-shot, one-shot, few-shot).
3. **Adjust model parameters** (temperature, top-K, top-P).
4. **Test responses** and refine prompts.
5. **Save effective prompts** in the **Prompt Gallery**.

---

## **Conclusion**
Mastering **prompt design** and **model parameters** is key to using **generative AI** effectively.  
By experimenting with **structured prompts** and **adjusting settings**, you can fine-tune responses to **better suit your needs**.

Now, let's put this into practice in the hands-on lab! 🚀
