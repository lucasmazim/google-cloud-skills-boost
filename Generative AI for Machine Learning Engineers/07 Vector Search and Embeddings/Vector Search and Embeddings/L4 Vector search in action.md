# Building a Search Engine with Vector Search on Google Cloud

## Overview

Having grasped the concepts of embeddings and Vector Search, you're now equipped to build a search engine using the Vector Search service on Google Cloud.

## Vertex AI Integration

- Vector Search is available on Vertex AI, Google's unified AI development platform.
- Vertex AI is a fully managed service integrated with other Google Cloud services such as:
  - BigQuery
  - Embedding APIs
  - MLOps (Machine Learning Operations)
- This makes it easy to run queries and build indexes.

## Capabilities of Vector Search

- High performance, scalability, and reliability
- Suitable for Google-scale enterprise services
- Allows fast creation of ML pipelines from:
  - Data extraction
  - Embedding generation
  - Index creation
  - Endpoint deployment

## Ways to Interact with Vector Search

1. No-code: Using the UI in the Vertex AI console
2. Code-based: Using APIs with Vertex AI Notebooks
3. Minimal code: Using Gcloud command line

> Gcloud offers limited functionality for creating and monitoring Vector Search.

In this lesson, the focus is on:
- No-code UI
- Code-based APIs with Notebooks

You can use APIs to build the pipeline and the UI for experimentation and monitoring.

## Navigating Vector Search in Vertex AI Console

- Located under the "Deploy and Use" tab
- UI may evolve with AI tool updates

### Menus

- **Indexes**: Create and deploy a new index
- **Index Endpoints**: Run queries and monitor an index

## Creating a New Index

Steps:

1. Provide name, description, and region
2. Define the vector data source
   - Can use any embedding model, not limited to Google models
   - Vectors must be stored on Google Cloud
3. Choose a search algorithm:
   - **TreeAh** (default): Based on Approximate Nearest Neighbor (ANN), fast and scalable
   - **Brute Force**: Linear search, simpler but slower; suited for development
4. Set:
   - Dimensions of the embeddings
   - Approximate number of neighbors
5. Choose query mode:
   - Batch or Stream
6. Define shard size:
   - Index data is split into "shards" for processing

> More on shard types and prices available on the pricing page.

## Advanced Options

- Distance measure types:
  - Euclidean (L2)
  - Manhattan (L1)
  - Cosine
  - Dot Product (default and recommended)

## Index Deployment

- After clicking "Create", index creation begins (usually under 10 minutes)
- Once created:
  - Deploy it by selecting the index name
  - The endpoint becomes ready for queries and monitoring

> All these steps can be performed via Vertex AI Notebooks for more control.

## Example: Product Similarity Search

Goal: Improve customer search experience by finding similar items

Steps:

1. Generate embeddings for each item
2. Build a vector index with embeddings
3. Run queries to find similar items by name

### Using BigQuery

- BigQuery is the primary data warehouse on Google Cloud
- Use `ML.EMBED_TEXT` to generate text embeddings
- Embeddings are stored in Cloud Storage as JSON files
- Example: 768-dimensional embeddings

> Note: The number of dimensions is a hyperparameter defined via the embedding API.

## Index Creation via API

- Designate:
  - Search algorithm (e.g., TreeAh)
  - Cloud Storage path of the JSON file
  - Dimensions
  - Number of neighbors
  - Similarity metric

> Google’s rapid indexing service can process data within minutes.

## Endpoint Deployment

- The endpoint receives queries and returns results via Vector Search
- Search is **semantic**, not keyword-based:
  - Understands meaning of items
  - Finds closest matches in vector space

## Summary

- Vector Search provides a powerful and easy way to build semantic search
- Usable via UI or simple code
- Ideal for building intelligent, scalable search engines

Stay tuned for the next lesson: **Vector Search with RAG**.
