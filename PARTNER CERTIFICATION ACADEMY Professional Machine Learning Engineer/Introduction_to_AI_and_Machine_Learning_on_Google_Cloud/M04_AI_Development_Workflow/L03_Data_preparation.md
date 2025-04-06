# Data_preparation

# 📊 **ML Workflow Stage 1: Data Preparation with AutoML**  

## 🔹 **Uploading Data for Model Training**  
- Data sources: **Cloud Storage, BigQuery, or local machine**.  
- AutoML supports **four data types**:  
  1. **Image** → Single-label, multi-label classification, object detection, image segmentation.  
  2. **Tabular** → Regression, classification, forecasting.  
  3. **Text** → Text classification, entity extraction, sentiment analysis.  
  4. **Video** → Action recognition, video classification, object tracking.  

📌 **Pre-trained APIs vs. AutoML**  
- **Pre-trained APIs** → Use **Google’s pre-trained models**, no custom data.  
- **AutoML** → Trains a **custom model** using **your own data**.  

---

## 🛠️ **Feature Engineering: Preparing Data for Training**  
- **Feature engineering** is like **preparing ingredients for cooking**.  
- **Feature** = Independent variable that impacts model predictions.  
- **Vertex AI Feature Store** helps **manage, serve, and share features** efficiently.  

---

## 🔹 **Vertex AI Feature Store: Managing ML Features**
- Aggregates features from **BigQuery** for **real-time (online) & batch (offline) serving**.  
- Supports **embeddings**, essential for **generative AI**.  
- Enables **real-time retrieval of similar items** with low latency.  

### **Workflow for Online Serving with Vertex AI Feature Store**  
1️⃣ **Prepare data in BigQuery**.  
2️⃣ (Optional) **Register data sources** with feature groups.  
3️⃣ **Set up online store & feature view** for real-time serving.  
4️⃣ **Serve latest feature values online**.  

---

## 🏆 **Benefits of Vertex AI Feature Store**
✅ **Shareable** → Central repository ensures **consistency across training & serving**.  
✅ **Reusable** → Saves **time & effort** by avoiding duplicate work.  
✅ **Scalable** → **Auto-scales** for low-latency predictions.  
✅ **User-Friendly** → **Easy-to-navigate UI** simplifies usage.  

📌 **Next, we move from data preparation to model development!**  
