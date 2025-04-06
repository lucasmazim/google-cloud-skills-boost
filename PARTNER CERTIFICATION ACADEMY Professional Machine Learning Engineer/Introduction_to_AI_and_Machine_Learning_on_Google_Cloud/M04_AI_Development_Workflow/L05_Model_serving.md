# Model_serving


# 🚀 **ML Workflow Stage 3: Model Serving**  

The **final stage** of the ML workflow is **model serving**—the equivalent of **serving a meal** in a restaurant.  
This stage consists of **two key steps**:  
1️⃣ **Model Deployment** → Making the model available for predictions.  
2️⃣ **Model Monitoring** → Ensuring performance remains optimal.  

---

## 🛠️ **Step 1: Model Deployment**  
You have **two primary options** for deploying models:  

### **1️⃣ Real-Time (Online) Predictions**  
- Model is deployed to an **endpoint**.  
- Best for **low-latency, instant predictions** (e.g., **personalized recommendations** for online users).  
- **Requires model deployment to an endpoint** before use.  

### **2️⃣ Batch Predictions**  
- Predictions are **requested directly from the model** (no endpoint needed).  
- Best for **large-scale, periodic predictions** (e.g., **weekly marketing campaign analysis**).  

📌 **Deployment Options:**  
- Use **Vertex AI UI** or **call APIs via code**.  
- Models can also be **deployed off-cloud** for specific environments (e.g., **IoT applications, manufacturing plants**) to **reduce latency & ensure privacy**.  

---

## 📊 **Step 2: Model Monitoring**  
- Once deployed, models need **continuous monitoring** to maintain accuracy.  
- **Vertex AI Pipelines** automates monitoring, governance, and orchestration of the ML workflow.  
- Works like a **production control room**:  
  - **Automatically detects issues** and **triggers alerts** based on predefined thresholds.  
  - Helps **keep models reliable** over time.  

### **Vertex AI Workbench & Pipelines**
- **Vertex AI Workbench** → A **notebook tool** for **defining custom pipelines**.  
- **Prebuilt pipeline components** allow **faster setup** using SDKs.  
- More details on **Vertex AI Pipelines** coming up in the next lesson!  

---

✅ **With model deployment & monitoring, your ML workflow is complete!**  
🍽️ **The restaurant is now open & running smoothly—Bon appétit!**  
