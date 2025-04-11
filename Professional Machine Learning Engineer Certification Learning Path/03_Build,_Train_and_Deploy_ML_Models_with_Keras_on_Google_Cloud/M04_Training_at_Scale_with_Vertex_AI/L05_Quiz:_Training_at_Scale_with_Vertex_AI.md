# Quiz:_Training_at_Scale_with_Vertex_AI

# ✅ **Quiz Answers & Explanations**
**Topic:** Training at Scale with Vertex AI  
**Passing Score:** 75%

---

### **Question 1: Fill in the blanks. When sending training jobs to Vertex AI, it is common to split most of the logic into a _________ and a ___________ file.**

✅ **Correct Answer:** task.py, model.py  
❌ **Incorrect Answers:**
- task.json, model.json: JSON is not used for executable Python code.
- task.xml, model.xml: XML is not relevant here.
- task.avro, model.avro: AVRO is a data serialization format, not code.

---

### **Question 2: Fill in the blanks. You can use either pre-built containers or custom containers to run training jobs. Both containers require you specify settings that Vertex AI needs to run your training code, including __________, ____________, and ________.**

✅ **Correct Answer:** Region, display-name, worker-pool-spec  
❌ **Incorrect Answers:**
- Source distribution name, job name, worker pool: Not the required parameters for containers.
- Region, source distribution, custom URI: Not complete or relevant in this context.
- Cloud storage bucket name, display-name, worker-pool-spec: Bucket name is not mandatory for running containers.

---

### **Question 3: To make your code compatible with Vertex AI, there are three basic steps that must be completed in a specific order. Choose the answer that best describes those steps.**

✅ **Correct Answer:** First, upload data to Google Cloud Storage. Next, move code into a trainer Python package. Then submit your training job with gcloud to train on Vertex AI.  
❌ **Incorrect Answers:**
- First, move code into a trainer Python package...: This should come after uploading data.
- First, upload data... then submit... then move code: Code must be prepared before submission.
- First, download data...: You upload data to GCS for training, not download it.

Uploading data is the first step so it can be accessed during training, followed by organizing the code and then submitting the job.

---

### **Question 4: Which file is the entry point to your code that Vertex AI will start and contains details such as “how to parse command-line arguments and where to write model outputs?**

✅ **Correct Answer:** task.py  
❌ **Incorrect Answers:**
- tmodel.avro: Not a Python file, and not executable.
- model.py: Typically holds model logic, not the entry point.
- tmodel.json: JSON file, not executable Python code.

---

### **Question 5: When you package up a TensorFlow model as a Python Package, what statement should every Python module contain in every folder?**

✅ **Correct Answer:** an init_.py  
❌ **Incorrect Answers:**
- model.py: Used for model code, not module initialization.
- tmodel.json: Irrelevant for packaging.
- tmodel.avro: Not applicable for Python packages.

---
