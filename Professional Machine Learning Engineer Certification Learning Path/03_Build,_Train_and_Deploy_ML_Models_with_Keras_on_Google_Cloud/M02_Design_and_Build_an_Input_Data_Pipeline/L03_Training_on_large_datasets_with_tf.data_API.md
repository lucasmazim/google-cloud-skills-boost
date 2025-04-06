# Training_on_large_datasets_with_tf.data_API

# 🔄 **Understanding the tf.data API & TFRecord Dataset Pipeline**

## 📦 What is `tf.data.Dataset`?

- The `tf.data` API introduces the **`tf.data.Dataset`** abstraction.
- A `Dataset` represents a **sequence of elements**, where:
  - Each element has **one or more components** (e.g., an image and its label).

**Example:**
- In an image pipeline:
  - A dataset element = a training example with two tensors:
    - One for the image
    - One for its label

---

## 🛠️ Creating Datasets

There are two main ways to create a `Dataset`:

1. **Data Source:**
   - From data in **memory** or in **files**

2. **Data Transformation:**
   - From one or more **existing `tf.data.Dataset` objects**

---

## 📁 Working with Large Datasets

- Large datasets are usually **sharded** (split across multiple files)
- This allows for **progressive loading** of data
- You **don't need the entire dataset in memory** for training
- **One mini-batch** is sufficient per training step

---

## 🚀 Benefits of `tf.data` API

- Create **input functions** that:
  - Load data progressively
  - **Throttle** the data as needed
- Supports reading data from multiple sources:
  - **Text files** (e.g., CSV)
  - **TFRecord files**
  - **Fixed-length binary files**

---

## 📚 Dataset Classes

- `TextLineDataset` – reads from **text files**
- `TFRecordDataset` – reads from **TFRecord files**
- `FixedLengthRecordDataset` – reads from **fixed-length binary files**
- For **custom formats**, use the generic dataset class and write **custom decoding logic**

---

## ⚙️ Example: TFRecord Input Pipeline

**Pipeline Steps:**

1. **TFRecord Op:**
   - Created and executed
   - Produces a **variant Tensor** representing the dataset
   - Stored in a **Python object**

2. **Shuffle Op:**
   - Takes the output from TFRecord Op
   - Connects to the next stage

3. **Map Op:**
   - Applies a **user-defined function**
   - Function is traced and passed as attributes
   - Operates on the **shuffled dataset**

4. **Batch Op:**
   - Creates the **final stage** of the input pipeline

---

## 🔁 Iterating Through a Dataset

When using a `for` loop:

1. `__iter__()` method is called on the dataset
2. Triggers:
   - Creation and execution of **anonymous iterator op**
   - Creates an **iterator resource**

3. **Initialization:**
   - `MakeIterator` op initializes the iterator with the batched dataset

4. **Fetching Data:**
   - Each `next()` call triggers `IteratorGetNext` op
   - This continues until the dataset is exhausted

5. **Cleanup:**
   - When the Python iterator goes out of scope
   - `DeleteIterator` op is executed to **free memory**

---

## ⚠️ Memory Management Reminder

> ❗ **Importante:** Properly disposing of iterator resources is crucial.  
> It's common for iterators to allocate **hundreds of MBs to GBs** due to internal buffering.
