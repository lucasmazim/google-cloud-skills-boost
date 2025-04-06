# Model_development

# 🤖 **ML Workflow Stage 2: Model Development**  

## 🔹 **Training & Evaluating the ML Model**  
- **Model Training** → Like **cooking a recipe**, experimenting with different configurations.  
- **Model Evaluation** → Like **tasting the meal**, ensuring it meets expectations.  
- **Process is iterative** → Refinements may be needed for better performance.  

---

## 🏗️ **Setting Up an ML Model in Vertex AI**  
### **1️⃣ Specify Training Details**  
- **Select dataset** from **data preparation stage**.  
- **Define training objective** based on data type (**tabular, image, text, video**).  
- **Choose training method**:  
  - **AutoML** (No-code).  
  - **Custom Training** (Code-based).  
- **Identify target column** for supervised learning problems.  
- **Select features** & **transform data types** if necessary.  
- **Specify budget & pricing**, then **start training**.  

### **2️⃣ AutoML’s Model Selection**  
- Uses **Neural Architecture Search** & **Transfer Learning** to optimize model selection.  

---

## 📊 **Evaluating Model Performance with a Confusion Matrix**
### **Confusion Matrix Overview**
- **True Positive (TP)** → Model predicted **positive**, and it was **correct**.  
- **True Negative (TN)** → Model predicted **negative**, and it was **correct**.  
- **False Positive (FP)** (Type 1 Error) → Model predicted **positive**, but it was **wrong**.  
- **False Negative (FN)** (Type 2 Error) → Model predicted **negative**, but it was **wrong**.  

### **Key Metrics: Recall & Precision**
- **Recall** = TP / (TP + FN)  
  - Measures **how many actual positives were correctly identified**.  
- **Precision** = TP / (TP + FP)  
  - Measures **how many predicted positives were actually correct**.  

📌 **Example (Fishing Net Analogy)**  
- **Large net** → High recall, low precision (catches all fish but also rocks).  
- **Small net** → High precision, low recall (catches only fish, but misses many).  

### **Trade-Off: When to Prioritize?**
- **High Recall** → Catch as many **spam emails** as possible (risking false positives).  
- **High Precision** → Only classify **definite spam emails** (risking missing some).  

🔹 **Vertex AI visualizes the precision-recall curve**, allowing **adjustments** for different use cases.  

---

## 🔍 **Feature Importance & Explainable AI**
- **Feature Importance** → **Bar chart** shows how much each feature impacts predictions.  
- **Explainable AI** → **Tools & frameworks** to interpret ML model predictions.  

📌 **Next: You’ll practice adjusting precision & recall, and explore Explainable AI in the AutoML lab!**  
