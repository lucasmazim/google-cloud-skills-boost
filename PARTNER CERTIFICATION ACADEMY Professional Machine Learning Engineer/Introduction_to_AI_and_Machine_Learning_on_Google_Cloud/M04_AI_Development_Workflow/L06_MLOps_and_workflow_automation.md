# MLOps_and_workflow_automation

# 🔄 **MLOps & Workflow Automation with Vertex AI Pipelines**  

## 🚀 **What is MLOps?**
- **MLOps (Machine Learning Operations)** → Combines **ML development** with **operations**, applying **DevOps principles** to ML models.  
- Aims to solve **production challenges** by **automating, monitoring, and integrating** ML workflows.  
- Enables **Continuous Integration (CI), Continuous Training (CT), and Continuous Delivery (CD)**.  

---

## 🛠️ **Building an ML Workflow: Two Approaches**  
1️⃣ **Codeless** → Use **Google Cloud Console** (e.g., **AutoML on Vertex AI**).  
2️⃣ **Code-Based Automation** → Develop **ML pipelines** for end-to-end workflow automation.  

### **Vertex AI Pipelines**
- Supports **Kubeflow Pipelines (KFP)** & **TensorFlow Extended (TFX)**.  
- Automates **data preparation, model training, evaluation, and deployment**.  
- Runs in **two environments**:  
  - **Development** → Data extraction, training, validation.  
  - **Production** → Deployment, monitoring, inference.  

---

## 🏗️ **ML Pipeline Components**
- **Pipeline Component** = **Self-contained** function performing a specific task in the workflow.  
- **Two options**:  
  ✅ **Use pre-built Google Cloud components** (faster setup).  
  ✅ **Create custom components** for specific needs (e.g., **setting unique deployment thresholds**).  

📌 **Check Google Cloud’s pre-built components before coding your own!**  

---

## 📊 **Three Phases of ML Automation**
1️⃣ **Phase 0: Manual Execution (GUI-Based)**
   - No automation yet, **training & deployment via AutoML UI**.  
   - Helps **build an end-to-end workflow manually** before automation.  

2️⃣ **Phase 1: Partial Automation**
   - Develop individual **ML pipeline components** using **Vertex AI Pipelines SDKs**.  
   - Example: **Automate model training** while keeping manual deployment.  

3️⃣ **Phase 2: Full Automation**
   - Integrate all components into a **complete ML pipeline**.  
   - Achieve **CI, CT, and CD**.  

---

## ⚙️ **Example: AutoML Pipeline for Bean Classification**
### **Step 1: Build the Pipeline**
1️⃣ **Plan components** (mix of **custom & pre-built**).  
2️⃣ **Develop custom components** (e.g., `classification_model_eval_metrics` to evaluate model performance).  
3️⃣ **Assemble the pipeline** with pre-built components:  
   - `TabularDatasetCreateOp` → Creates dataset from **Cloud Storage / BigQuery**.  
   - `AutoMLTabularTrainingJobRunOp` → Starts **AutoML training**.  
   - `EndpointCreateOp` → Creates an **endpoint for real-time predictions**.  
   - `ModelDeployOp` → Deploys model if **evaluation metrics meet threshold**.  

### **Step 2: Compile & Run the Pipeline**
1️⃣ **Compile pipeline code** (`compiler.Compiler().compile()`).  
2️⃣ **Define & execute pipeline job**.  
3️⃣ **Monitor pipeline performance** via **Google Cloud UI**.  

✅ **Vertex AI provides templates to accelerate pipeline development** (e.g., classification/regression templates for tabular data).  

---

## 🔍 **Key Benefits of MLOps with Vertex AI Pipelines**
✅ **End-to-end automation** → Reduces manual effort in training, evaluation, & deployment.  
✅ **Self-monitoring** → Automatically evaluates model performance & retrains when needed.  
✅ **Reusability** → Modular components can be **reused across projects**.  
✅ **Visualization** → Google Cloud **generates a visual pipeline flow** for easy monitoring.  

---

📌 **Next: Hands-on practice with Vertex AI Pipelines—build & deploy your own automated ML workflow!**  
