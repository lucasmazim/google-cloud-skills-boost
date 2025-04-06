# Embeddings

# 🧠 **Embeddings & Feature Crosses in Machine Learning**

## 🔍 Why Use Embeddings?

When a feature has a large number of categories, **one-hot encoding becomes infeasible**.

### Embedding columns solve this:
- Convert high-dimensional one-hot vectors into **low-dimensional dense vectors**
- Each cell in the embedding can contain **any real number**, not just 0 or 1

---

## 🎯 Primary Purposes of Embeddings

1. **Finding nearest neighbors** in the embedding space  
   - Useful for recommendations and clustering

2. **Input for supervised models**  
   - Embeddings serve as part of the input vector for training

3. **Visualization of relationships**  
   - Helps explore similarities and patterns across categories

---

## ✍️ Example: MNIST in TensorBoard

- Visualized **10,000** handwritten digit examples
- Each colored cluster corresponds to a digit (0–9)
- Misclassifications and variations are visible in 3D space
  - E.g., handwritten '5's appear with more variation than '1's

---

## 🎬 Embeddings for Movie Recommendation

### Scenario:
- 1 million users  
- 500,000 movies  
- Goal: recommend 5–10 movies per user

### Input matrix:
- Shape: **1,000,000 × 500,000**
- Each entry represents whether a user watched/rated a movie
- Most of the matrix is sparse — many unknown values

---

## 🧭 Organizing Movies by Similarity

Start with **one dimension**:
- Average viewer age  
  - Cartoons on the left, adult content on the right

Then add a **second dimension**:
- Total ticket sales  
  - Helps group similar genres and popularity levels

Examples:
- 'Shrek' and 'The Incredibles' are close
- 'Bleu' and 'Memento' are close
- 'Star Wars' and 'The Dark Knight Rises' are close

> Adding dimensions improves recommendations, but **too many dimensions can lead to overfitting**

---

## 🔢 Dimensionality: N vs. D

- **N** = number of categories (e.g., 500,000 movie IDs)
- **D** = embedding dimensions (e.g., 2, 8, 16...)

> Key idea: **D is much smaller than N**

---

## ⚙️ Choosing Embedding Dimension Size

- 'D' is a **hyperparameter** (set before training)
- Rule of thumb: use the **fourth root of N**

**Example:**
- N = 500,000  
- √500,000 ≈ 707  
- √707 ≈ 26  
- Start with D ≈ **25**

> Suggested search range for tuning: **15 to 35**  
> This is just a **heuristic**, not a hard rule

---

## 🔗 Feature Crosses

### What is a feature cross?

- A **synthetic feature** created by combining multiple features
- Helps model **nonlinear relationships**

**Example:**
- Crossing 'location' with 'property_type'
  - Allows model to differentiate between:
    - Apartment in urban areas
    - Houses in suburbs

### How it works:
- Takes a **Cartesian product** of input features (bucketized or categorical)
- Backed by a **hashed column** to limit memory use
- Does **not** generate all combinations explicitly

---

## 🏠 Back to the Real Estate Example

### Training setup:

1. **Input function**
   - Returns features using the same names as your feature columns
   - Also returns **labels** (the target values)

2. **Training the model**
   - Use the **Keras API**: call 'model.fit'
   - You can train with:
     - Repeated datasets (e.g., 100 epochs)
     - Single batches or multiple batches (batching explained later)

3. **Data formats**
   - Use **NumPy arrays** for small, in-memory datasets
   - Use **'tf.data.Dataset'** for larger or streaming datasets

---

## 🧱 DenseFeatures Layer

Once feature columns are defined:

- Pass them to the **'DenseFeatures'** layer
- This layer transforms them into a **dense tensor**
- Ready to be consumed by the Keras model

---

## ✅ Full Training Workflow

1. Define feature columns (numeric, categorical, embedding, crossed, etc.)
2. Create the input pipeline (NumPy arrays or 'tf.data.Dataset')
3. Wrap the features with 'DenseFeatures'
4. Train with 'model.fit'

> 📝 **Reminder:** You’ll practice this hands-on after learning dataset manipulation.
