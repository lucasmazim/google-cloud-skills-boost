# Data_and_AI_products

# ☁️ **Google Cloud Infrastructure Overview**

- **Google’s AI & Data Journey**  
  - Founded in **1998**, working with **data and AI since the beginning**.  
  - **Google Cloud launched in 2008** to provide **secure & flexible cloud services**.  

- **Three Layers of Google Cloud Infrastructure**  
  1. **Base Layer: Networking & Security**  
     - Foundation supporting Google’s **infrastructure and applications**.  
  2. **Middle Layer: Compute & Storage**  
     - **Decoupled** compute and storage for **independent scalability**.  
  3. **Top Layer: Data & AI/ML Products**  
     - **Data ingestion, storage, processing, and ML model deployment**.  
     - **Managed services eliminate the need for manual infrastructure management**.  

---

# 🖥️ **Google Cloud Compute Services**

- **Compute Power & AI Workloads**  
  - Growing **data needs** require **scalable compute resources**.  
  - Google offers **multiple compute solutions**:  

### 🚀 **Compute Services**
1. **Compute Engine** (IaaS – Infrastructure as a Service)  
   - Provides **virtual compute, storage, and network resources**.  
   - Offers **maximum flexibility** for managing **server instances manually**.  

2. **Google Kubernetes Engine (GKE)**  
   - Runs **containerized applications** in the cloud.  
   - Containers package code with **all dependencies** for **portability**.  

3. **App Engine (PaaS – Platform as a Service)**  
   - Fully managed **platform** that binds code to infrastructure libraries.  
   - Developers focus on **application logic** instead of infrastructure.  

4. **Cloud Run**  
   - Serverless platform for **event-driven, stateless workloads**.  
   - **Auto-scales from zero**, charging only for used resources.  

5. **Cloud Functions**  
   - **Function-as-a-Service (FaaS)** for **event-driven execution**.  
   - No need to **install software** or **manage servers**.  

---

# 🔬 **Processing Power: CPUs, GPUs, and TPUs**

- **Traditional Computing Chips**  
  - **CPU (Central Processing Unit)** – General-purpose computing.  
  - **GPU (Graphics Processing Unit)** – Optimized for parallel computations.  

- **Tensor Processing Units (TPUs) – AI Acceleration**  
  - **Introduced in 2016**: Google’s **custom AI hardware** (ASIC).  
  - Optimized for **machine learning workloads** (e.g., matrix multiplication).  
  - **Faster & more energy-efficient** than CPUs/GPUs for AI tasks.  
  - **Cloud TPUs** available for **Google Cloud customers**.  

---

# 🗄️ **Google Cloud Storage Services**

- **Decoupled Compute & Storage**  
  - Cloud computing **scales compute and storage separately**.  
  - Most applications require **database & storage solutions**.  

### 📂 **Storage Options**
- **Unstructured Data (Documents, Images, Audio)**  
  - **Cloud Storage** offers four storage classes:  
    1. **Standard Storage** → For frequently accessed ("hot") data.  
    2. **Nearline Storage** → For infrequently accessed data (once/month).  
    3. **Coldline Storage** → For long-term storage (access ≤ every 90 days).  
    4. **Archive Storage** → Lowest cost, for rarely accessed data (once/year).  

- **Structured Data (Tables, Rows, Columns)**  
  - **Transactional Workloads (Fast Inserts & Updates)**  
    - **Cloud SQL** → Best for **local/regional** scalability.  
    - **Cloud Spanner** → Best for **global** scalability.  
    - **Firestore** → **NoSQL, document-based database**.  

  - **Analytical Workloads (Complex Queries & Aggregations)**  
    - **BigQuery** → SQL-based **data warehouse** for petabyte-scale analytics.  
    - **Bigtable** → **NoSQL solution** for real-time, high-throughput applications.  

📌 **Understanding your data type (structured vs. unstructured) and workload (transactional vs. analytical) helps in choosing the right storage solution.**  
