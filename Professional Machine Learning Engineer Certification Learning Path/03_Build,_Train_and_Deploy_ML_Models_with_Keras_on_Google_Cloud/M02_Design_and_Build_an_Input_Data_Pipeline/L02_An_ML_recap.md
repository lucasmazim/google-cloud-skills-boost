# An_ML_recap

# 📚 **ML Production Pipeline & Data Pipelines Recap**

## 🔁 Recap: ML Project Flow

After defining the business use case and establishing success criteria, the steps to deliver an ML model to production are:

- **Data Extraction**
- **Data Analysis**
- **Data Preparation**
- **Model Training**
- **Model Evaluation**
- **Model Validation**
- **Model Serving**
- **Model Monitoring**

These steps can be performed:
- Manually
- Using an **automated pipeline**

---

## ⚙️ ML Workflow Phases

- **Training Phase**
- **Inference Phase**

---

## 🧠 Understanding ML: It's All About Data

- ML models often require **feature values** to be represented as **real-numbered vectors**
- These values must be **multiplied by model weights**
- **Raw data** often needs to be **transformed** into feature vectors

---

## 🔍 Importance of Features

- **Features = columns** in your data frame
- **Better features** = faster training + more accurate predictions
- Models do **not** ingest raw data directly; they take **processed feature columns**

---

## 🔄 Efficient Data Pipelines

Training involves:
1. Opening a file (if not already opened)
2. Fetching a data entry
3. Using the data for training

To streamline this, we use TensorFlow's **`tf.data` API**

---

## 🧰 Introduction to `tf.data` API

- Builds **efficient, reusable** input pipelines
- Helps handle **large-scale** data and supports **complex transformations**

### Example Pipelines:

- **Image Model:**
  - Aggregates data from a distributed file system
  - Applies random perturbations to each image
  - Merges images into batches for training

- **Text Model:**
  - Extracts symbols from raw text
  - Converts them to embedding IDs via a lookup table
  - Batches together sequences of different lengths

---

## 💡 Why `tf.data`?

- Manage **large data volumes**
- Read from **various formats**
- Apply **complex preprocessing steps**

---

## 📌 What's Next?

- You'll explore **multiple ways** to feed TensorFlow models with data
- Up next: Practical applications using the **`tf.data` API**
