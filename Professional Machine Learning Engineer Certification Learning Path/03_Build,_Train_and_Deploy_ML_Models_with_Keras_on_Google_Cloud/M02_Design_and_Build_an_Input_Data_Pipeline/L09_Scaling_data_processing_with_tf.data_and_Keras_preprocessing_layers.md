# Scaling_data_processing_with_tf.data_and_Keras_preprocessing_layers

# ⚙️ **Data Preprocessing at Scale with `tf.data` and Keras Preprocessing Layers**

## 📊 Why Preprocessing Matters

- Collecting good data is not enough.
- You need processes to:
  - **Clean**
  - **Analyze**
  - **Transform** the data so the model can extract the most signal.

---

## 🤝 `tf.data` + Keras Preprocessing Layers

With **Keras Preprocessing Layers**, you can:
- Build **end-to-end models** that accept **raw data**
- Normalize features and **index categorical values** within the model

### Supported data types:
- **Text**
- **Numerical**
- **Categorical**
- **Images**
- **Image augmentation**

---

## 📝 Text Preprocessing

### Layer: 'tf.keras.layers.TextVectorization'
- Transforms a batch of strings into:
  - A tensor of **token indices**, or
  - A **dense float representation** of token statistics

- Output is compatible with:
  - **Embedding layers**
  - **Dense layers**

### Vocabulary building:
- Call 'adapt(data)' on the layer
- Builds vocabulary based on:
  - **Term frequency**
  - Can be **capped or uncapped** in size

---

## 🔢 Numerical Feature Preprocessing

### Layer: 'tf.keras.layers.Normalization'
- Normalizes features:
  - Mean = 0
  - Standard deviation = 1
- Learns statistics with:  
  - 'normalizer.adapt(data)'

---

### Layer: 'tf.keras.layers.Discretization'
- Buckets continuous values into **discrete ranges**
- Outputs integer index of the corresponding range

---

## 🧩 Categorical Feature Preprocessing

### 'tf.keras.layers.CategoryEncoding'
- Converts integer categorical values into:
  - **One-hot**
  - **Multi-hot**
  - **Count-dense** representations

### 'tf.keras.layers.Hashing'
- Applies the **hashing trick** to categorical data

### 'tf.keras.layers.StringLookup'
- Maps **string values** to integer indices
- Usable with Embedding or Dense layers

### 'tf.keras.layers.IntegerLookup'
- Maps **integer values** to encoded integer indices
- Usable with Embedding or Dense layers

---

## 📦 Stateful Preprocessing Layers

Some layers maintain state learned via 'adapt':
- 'TextVectorization' → Token-to-index mapping
- 'StringLookup' / 'IntegerLookup' → Value-to-index mapping
- 'Normalization' → Mean & standard deviation
- 'Discretization' → Bucket boundaries

> ❗ These layers are **non-trainable** — state must be set **before training**

---

## 🐶 Case Study: PetFinder Dataset

- CSV format with thousands of rows
- Goal: Predict if a pet will be adopted
- Features: **Categorical**, **Numerical**, **Text**, and **Target Classification**

### Steps:
1. Import Keras preprocessing layers
2. Use 'StringLookup' for features like pet type ('Dog', 'Cat')
3. Normalize numeric features with 'Normalization'
4. Use 'adapt' to compute means, variances, or vocabularies from the training data

---

## 🧪 Normalization Pipeline Example

1. Create a normalization layer
2. Use 'normalizer.adapt(data)' to compute internal statistics
3. Add the normalization layer to your model

---

## 🧰 Applying Preprocessing: Two Options

### Option 1: **Inside the model**
- Preprocessing is part of the **model graph**
- **Runs on GPU/TPU**
- Best for:
  - 'Normalization'
  - Image preprocessing
  - Data augmentation

### Option 2: **In the input pipeline using `dataset.map()`**
- Preprocessing runs **asynchronously** on **CPU**
- Leverages **multithreading**
- Efficient for streaming and CPU-bound ops

> Use 'tf.data.AUTOTUNE' to parallelize preprocessing with model training

---

## ⚠️ Special Case: TPU Usage

- Place preprocessing inside the **`tf.data` pipeline** on TPUs
- **Exception**: 'Normalization' and 'Rescaling' run well on TPU and can be model layers

---

## 📦 Exporting End-to-End Models

Even with Option 2, you can **export an inference-only model** that includes preprocessing:

### Benefits:
- **Portable** — works across runtimes (e.g., TensorFlow.js)
- Avoids **training/serving skew**
- No need for users to:
  - Understand tokenization
  - Handle categorical indexing
  - Normalize image pixels manually

### Example:
- Model can accept **raw images** or **raw structured data**
- No external preprocessing code required

> ✅ This is powerful for deploying models on the web, mobile, or other platforms without extra implementation.
