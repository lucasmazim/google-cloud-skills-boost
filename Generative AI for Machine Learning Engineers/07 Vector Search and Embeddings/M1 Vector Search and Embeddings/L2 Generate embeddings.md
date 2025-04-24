# 🧠 Generating Embeddings

## 🎯 Objective

In this video, you explore **embeddings**, which solve the first challenge of **encoding data into representations that capture semantic meaning**.

Although embeddings can be applied to various data types (text, images, audio, video, code), the focus here is on **text embeddings**.

---

## 🧩 The Challenge

How can you represent **text** in a **numeric format** while retaining its meaning?

### Two sub-problems:
1. How do you turn text into numbers that retain **semantic relationships** (e.g., similarity, difference)?
2. How do you turn text into **dense vectors** suitable for **machine learning models**?

---

## 🧪 Basic Text Representation Techniques

### 🔢 One-Hot Encoding

An intuitive method where each word is represented as a vector with:
- A **1** in the position corresponding to the word.
- **0s** in all other positions.

#### Example:
Sentence: *"A dog is chasing a person."*  
After tokenization and preprocessing: **[dog, chase, person]**

Vocabulary: `["dog", "chase", "person", "my", "cat", "run"]`

Each word is converted into a binary vector of size equal to the vocabulary.

#### ✅ Pros:
- Easy to understand and implement.

#### ❌ Cons:
- Does **not convey relationships** between words.
- Produces **high-dimensional**, **sparse** matrices.
- Leads to **computational inefficiency** and potential **overfitting**.

---

## 🔍 Towards Word Embeddings

To address these limitations, you explore **word embeddings**.

### 🐶 Example: How to describe a dog?
- Breeds
- Height, weight
- Hair color/length
- Role (pet, neighbor's dog)
- Behavior (bark, quiet)

You can imagine **20+ dimensions** to describe a concept.

### 🗺️ Example: The word *"Paris"*
- Attributes: location, culture, history, art...
- Use a **vector space** to describe a word using dimensions.
- The **distance** between words reflects **semantic similarity**.

#### Analogy Example:
- `"Paris" - "France" + "Tokyo" ≈ "Japan"`

### 💡 Word Embedding:
- Represents words as **low-dimensional**, **dense** vectors.
- Captures **semantic similarity** and **relationships** between words.

---

## 📊 Advantages of Word Embeddings

- Fewer dimensions than one-hot encoding.
- Dimensions represent **semantic features**.
- Vectors are **dense** (most values are non-zero).
- Similar words have **similar vector encodings**.
- Also known as **distributed representations**.

---

## 🧠 How Are Embeddings Created?

You don’t manually assign the vector values.  
Instead, you **train a neural network** to learn them.

### Popular Algorithms:
- **Word2Vec** (Google)
- **GloVe** (Stanford)
- **FastText** (Facebook)

> *See the module "Text Representation" in the course "Natural Language Processing on Google Cloud" for more details.*

---

## ⚙️ Using Pre-trained Embedding Models

You don't need to train models yourself — just use APIs.

### 📦 Steps:
1. Import the embedding libraries.
2. Specify the pre-trained model (e.g., `textembedding-gecko`, `multimodalembedding` from Google).
3. Define your text input.
4. Retrieve the embeddings.

👉 *More examples available in the upcoming demo and hands-on lab.*

---

## 🖼️ Beyond Text: Multimodal Embeddings

You can also convert **images** and other media into embeddings.

> "dog" (text) and 🐶 (image) will be **close in vector space**.

---

🎓 **Next lesson:** *Creating Vector Search*
