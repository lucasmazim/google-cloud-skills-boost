# Getting_the_data_ready_for_model_training

# 🏠 **Modeling Real-World Problems with Features and 'feature_column' in TensorFlow**

## 🎯 Defining the Problem

Let’s predict the **price of a property** using machine learning.

### Example features:
- **'square footage'** → *Numeric*
- **'property type'** → *Categorical* (e.g., 'house' or 'apartment')

---

## 🔢 Numeric vs. Categorical Data

- **Numeric data** (e.g., 'square footage'):
  - Can be **fed directly** into a neural network.

- **Categorical data** (e.g., 'house', 'apartment'):
  - Often stored as **strings** or integers.
  - Needs to be **converted into numeric format** before being input into a model.

---

## 🧱 Using the 'feature_column' API

### Example usage:
- 'feature_column.numeric_column' for square footage
- 'feature_column.categorical_column_with_vocabulary_list' for property type

Use 'categorical_column_with_vocabulary_list' when:
- Inputs are **strings or integers**
- You have an **in-memory vocabulary** mapping values to integer IDs

> ❗ **By default**, out-of-vocabulary values are **ignored**

---

## 📂 Other Variants of Categorical Columns

- **'categorical_column_with_vocabulary_file'**  
  When vocabulary is stored in a **file**.

- **'categorical_column_with_identity'**  
  Use when inputs are **integers** in the range `[0, num_buckets)`  
  (each value is its own category ID).

- **'categorical_column_with_hash_bucket'**  
  For **sparse** features in string or integer format, hashes them into a **fixed number of buckets**.

---

## 📈 Training a Model with Features

### Model: Linear Regressor

A **linear regressor**:
- Works on a **vector of inputs**
- Computes a **weighted sum** of the input elements
- Learns to adjust the weights based on training data

---

## 📦 Packing Inputs into Vectors

How do we convert raw data into a single input vector?

- **Numeric columns**:  
  Their values are inserted **directly** into the input vector.

- **Categorical columns**:  
  Require **one-hot encoding**.

### Example: One-hot encoding for 'property type'
- Categories: 'house', 'apartment'
  - 'house' → [1, 0]
  - 'apartment' → [0, 1]
  - A third category → [0, 0, 1], etc.

This transforms the categorical feature into a numeric format suitable for the linear regressor.

---

## 🧰 More Feature Column Types

In addition to categorical columns, TensorFlow offers:

- **Bucketized columns**:  
  Turn continuous values into **discrete buckets**.

- **Embedding columns**:  
  Represent high-cardinality categorical data in **dense, lower-dimensional space**.

- **Crossed columns**:  
  Combine multiple features into **single composite features**.

> 📝 **Note:** These transformations are well-documented in TensorFlow, making it easier to understand and use them.

---

## 📌 Example: Bucketized Columns

Use bucketized columns to **discretize continuous features**.

Example: Latitude & Longitude  
- Raw values are too granular  
- Group them into ranges (buckets) to reduce complexity  
- Similar to zooming out to a **zip code level**

---

## 🧠 Sparse vs. Dense Tensors

- Categorical columns are typically **sparse tensors**
- TensorFlow can operate on sparse tensors **without converting to dense**, saving memory and computation

---

## 🧭 Using Embeddings

As the number of categories grows, one-hot encoding becomes inefficient:
- Example: [0, 0, ..., 0, 1] with millions of zeros

**Embeddings** solve this by:
- Representing categories with **dense vectors** of lower dimension
- Each cell in the vector can hold **any number**, not just 0 or 1

---

## ⏭️ Coming Up Next

We'll return to the **real estate example**, but first take a quick dive into **embeddings** and how they work in practice.
