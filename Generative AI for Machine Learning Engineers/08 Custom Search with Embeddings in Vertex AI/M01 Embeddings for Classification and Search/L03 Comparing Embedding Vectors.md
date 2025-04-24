# Comparing Embedding Vectors

# Using Vector Embeddings for Similarity and Visualization

## 🎯 Goal

Once you have vector embeddings, the next step is to compare them and extract meaningful relationships using similarity metrics and visualizations.

---

## 🔍 Vector Similarity

Unlike exact word matching, vector search aims to **find the closest points** in vector space, which implies **semantic similarity**.

### Algorithms for Similarity Search:

#### 1. **Cosine Similarity**
- Measures the angle between two vectors.
- **Range**: [-1, 1]
  - 1 → vectors point in the same direction (high similarity)
  - -1 → vectors are diametrically opposite
- **Formula**:
  'cosine_similarity(A, B) = (A · B) / (||A|| * ||B||)'
- **Pros**:
  - Ignores magnitude
  - Works well with texts of varying lengths

#### 2. **Dot Product**
- Projects one vector onto another.
- **Considers magnitude**
- Can reflect popularity or weight, useful in **recommendation systems**
- Recommended by **Google Cloud documentation** for use in Vector Search.

> 🔧 Tip: Normalize your vectors before using Dot Product if you want to eliminate magnitude effects.

#### 3. **L2 (Euclidean) Distance**
- Measures the straight-line distance between vectors.
- Sensitive to vector scale.

#### 4. **L1 (Manhattan) Distance**
- Measures the sum of absolute differences across dimensions.
- **Faster** to compute than L2.

### Choosing the Right Metric:
- Depends on the **embedding space** and **use case**.
- **Start with Dot Product**, and experiment with/without **unit L2 normalization**.

---

## 🧪 Practical Example with scikit-learn

### Tools Used:
- **Scikit-learn**: ML library in Python
- **NumPy**: Linear algebra operations
- **Seaborn** & **Pandas**: Data visualization and manipulation

### Example Scenario:
You want to compare semantic similarity among:
- Two sentences about programming languages
- One sentence about a dog chasing a car

As expected, sentences 1 and 2 are more similar than sentence 3.

### Code Flow:
1. Define 'input_text_lst_news' – list of 7 strings
2. Generate embeddings for each string
3. Use **cosine similarity** to compare them

---

## 📉 Dimensionality Reduction with PCA

### What is PCA?
- **Principal Component Analysis**
- Reduces high-dimensional vectors (e.g., 768-dim) to 2D for visualization
- Preserves variance by identifying **principal components**

### Why Use It?
- Embeddings are usually **high-dimensional**
- **Visualization** requires reducing to 2D or 3D space

---

## 📊 Plotting with Seaborn

### Steps:
1. Create a 'pandas.DataFrame' with:
   - 'x': First component of each embedding
   - 'y': Second component
   - 'sentences': Original text

2. Assign this to a variable 'data'

3. Plot with Seaborn:
   'import seaborn as sns'  
   'import pandas as pd'  
   'sns.scatterplot(data=data, x="x", y="y", hue="sentences")'

### Results:
- Sentences on **similar topics cluster together**:
  - 🐕 Animal-related texts form one cluster
  - 🍎 Food-related texts another
  - 💻 Programming-related texts form their own cluster

> "I'm very much a visual person."  
> 2D projections show sentence similarity clearly using embedding distance.

---

## ✅ Summary

- **Vector similarity** helps uncover meaningful relations between text entries.
- **Cosine Similarity** and **Dot Product** are popular and complementary.
- **PCA** + **Seaborn** = powerful tools for **visualizing embeddings**.
- These techniques form the core of **semantic search**, **recommendation systems**, and **NLP applications**.
