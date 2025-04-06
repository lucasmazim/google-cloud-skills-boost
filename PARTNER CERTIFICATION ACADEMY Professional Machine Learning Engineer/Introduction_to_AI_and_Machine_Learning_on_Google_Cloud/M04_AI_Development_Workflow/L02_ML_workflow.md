# ML_workflow

# 🔄 **ML Workflow on Vertex AI: Key Stages**  

## 🏗️ **The Three Stages of ML Workflow**  
Building an ML model is like **serving food in a restaurant**:  
1️⃣ **Data Preparation** → Gathering & preparing raw ingredients.  
2️⃣ **Model Development** → Experimenting with recipes.  
3️⃣ **Model Serving** → Finalizing the menu & serving customers.  

---

## **1️⃣ Data Preparation**  
- **Includes**: **Data uploading & feature engineering**.  
- **Data types**:  
  - **Structured data** → Stored in tables (e.g., numbers, text).  
  - **Unstructured data** → More complex (e.g., images, videos).  
- **Data sources**: Can be **real-time streaming data** or **batch data**.  

## **2️⃣ Model Development**  
- **Training & evaluation are iterative**:  
  - **Train** the model → **Evaluate** → **Refine & retrain**.  

## **3️⃣ Model Serving**  
- **Deployment & monitoring** to ensure the model is useful.  
- **Without deployment, an ML model remains theoretical**.  

---

## 🔄 **Iterative Workflow & MLOps**
- ML workflow is **not linear**—it’s **iterative**:  
  - **During training**, you may need to **refine data & features**.  
  - **During deployment**, you may detect **data drift** and need to **adjust parameters**.  
- **MLOps automates these steps**, improving efficiency.  

---

## 🔧 **Setting Up the ML Workflow with Vertex AI**
### **Option 1: AutoML (No-Code)**
- **User-friendly**, requires **no ML expertise or coding**.  
- **Best for beginners** or quick deployment.  

### **Option 2: Code-Based Approach (Vertex AI Pipelines)**
- **For experienced ML engineers & data scientists**.  
- Uses **Vertex AI Workbench** or **Colab**.  
- Includes **pre-built SDKs** to **automate the ML pipeline programmatically**.  

---

📌 **Next, we focus on AutoML before exploring the code-based approach later in this module.**  
