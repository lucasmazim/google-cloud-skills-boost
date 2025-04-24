# 📦 Using Embeddings for Product Classification with K-Means

A common use case for embeddings is the **classification of products** using unsupervised machine learning techniques like **K-Means clustering**.

---

## 🛒 Scenario: Classifying Products from a Catalog

Imagine you have a product catalog with:
- A 'product name'
- A 'product description'

### Objective:
Automatically classify these products into groups based on the similarity of their descriptions.

---

## 🧠 Step-by-Step Process

### 1. Generate Embeddings
- Compute embeddings for each product description.
- Because of API constraints, embeddings must be generated in **batches** with **rate limiting**.

### 2. Batch Processing Logic
- Take a list of product descriptions.
- Split them according to API quota rules.
- Generate embeddings for each batch.
- Combine all batches into a single list of embeddings.

> This ensures scalability and respects API rate limits.

### 3. Apply K-Means Clustering

**K-Means** groups similar embeddings into clusters.

'''
from sklearn.cluster import KMeans

# Set the number of clusters
num_clusters = 5

# Fit the K-Means model
kmeans = KMeans(n_clusters=num_clusters)
kmeans.fit(embeddings_array)
'''

> Embedding-based training is fast and efficient.

### 4. Predict Cluster Assignments

Assign each embedding to a cluster:

'''
cluster_indices = kmeans.predict(embeddings_array)
'''

Each index (e.g., 0 to 4) corresponds to a group of similar products.

### 5. Map Clusters to Category Labels

Create a dictionary to map cluster indices to human-readable category names:

'''
cluster_map = {
    0: 'Software',
    1: 'Furniture',
    2: 'Instrument',
    3: 'Appliances',
    4: 'Toys'
}
'''

Convert cluster predictions to category names:

'''
labels = [cluster_map[idx] for idx in cluster_indices]
'''

---

## 🧪 Classifying New Samples

### Example Inputs:
- 'Google Chrome'
- 'Cymbal Baby Grand Piano'

### Code Flow:

1. **Get embeddings**:
   '''
   new_embeddings = model.get_embeddings(['Google Chrome', 'Cymbal Baby Grand Piano'])
   '''

2. **Reshape embeddings**:
   '''
   import numpy as np
   input_array = np.stack(new_embeddings).squeeze()
   '''

3. **Predict clusters**:
   '''
   predictions = kmeans.predict(input_array)
   '''

4. **Map to category names**:
   '''
   predicted_labels = [cluster_map[p] for p in predictions]
   '''

5. **Print results**:
   - 'Google Chrome' → Software
   - 'Cymbal Baby Grand Piano' → Instrument

---

## ✅ Summary

- Embeddings provide rich semantic representation of product descriptions.
- K-Means enables fast and unsupervised clustering.
- Batch processing and rate limiting are essential when dealing with large datasets and APIs.
- Mapping cluster indices to meaningful labels enhances interpretability.
