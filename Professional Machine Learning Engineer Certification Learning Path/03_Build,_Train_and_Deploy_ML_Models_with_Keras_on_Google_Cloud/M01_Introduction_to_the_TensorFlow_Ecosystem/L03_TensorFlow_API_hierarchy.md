# TensorFlow_API_hierarchy

# 🧱 **TensorFlow API Hierarchy – Structured Notes**

## 🌐 Overview
TensorFlow provides a **spectrum of APIs** ranging from low-level hardware interaction to high-level abstraction for building complex models like **128-layer neural networks** with minimal code (e.g., via **Keras**).

---

## 🔽 **1. Hardware Abstraction Layer**
- Lowest level of abstraction.
- Targets various **hardware platforms** (CPUs, GPUs, TPUs).
- Not commonly used unless you're involved in **hardware development**.

---

## ⚙️ **2. TensorFlow C++ API**
- Used to **create custom TensorFlow operations (ops)**:
  - Implement functions in **C++**.
  - Register them as custom ops in TensorFlow.
  - Python wrapper provided automatically.
- Best suited for **ML researchers** or advanced use cases.
- Documented under TensorFlow's *"extending ops"* section.

---

## 🧮 **3. Core Python API**
- Handles most **numeric processing operations**:
  - Arithmetic (add, subtract, divide, multiply).
  - Matrix operations like `matmul`.
  - Tensor/variable creation, reshaping, dimension checks, etc.
- Foundation of all TensorFlow operations.

---

## 🔧 **4. Python Modules for Neural Networks**
- Useful when constructing **custom neural networks**.
- Examples of high-level components:
  - `tf.layers`: Define layers like hidden ReLU layers.
  - `tf.metrics`: Compute metrics like RMSE.
  - `tf.losses`: Compute losses (e.g., cross-entropy).

---

## 🧠 **5. When to Use Custom Models**
- Use custom models only when needed.
- Most workflows can rely on standard training approaches:
  - **Gradient descent**
  - **Backpropagation**
- In such cases, avoid low-level session loops and use:

---

## 💡 **6. High-Level APIs (Keras, Estimators)**
- Simplifies tasks like:
  - Distributed training
  - Data preprocessing
  - Model definition & training
  - Model evaluation & checkpoints
  - Model saving & serving (via TensorFlow Serving)
- **Estimator & Keras APIs** are recommended:
  - **Don't use low-level code** unless absolutely necessary.
  - Avoid manual device placement, memory management, etc.

> ❗ **Tip:** If you find TensorFlow code online that *doesn't* use Estimators or Keras, **walk away** — it's likely unnecessarily complex.

---

## ☁️ **Cloud AI Platform (CAIP)**
- **Orthogonal to the API hierarchy**: supports all abstraction levels.
- Fully-managed cloud service:
  - Run TensorFlow without installing or managing infrastructure.
  - Works on **clusters in the cloud**.

---

## 🧰 Summary of API Tiers:
| Level | Description | Examples |
|-------|-------------|----------|
| 1. Hardware | Hardware-specific operations | Rarely used |
| 2. C++ API | Custom TensorFlow ops | Advanced users |
| 3. Core Python | Numeric operations, tensors | add, matmul, reshape |
| 4. Python Modules | Neural net components | `tf.layers`, `tf.metrics` |
| 5. High-Level APIs | Model training & serving | Keras, Estimator |
| Cloud AI Platform | Managed environment | TensorFlow in the cloud |

---

## 🧑‍💻 What's Next
Before diving into API code and model building:
- Understand the **types of data** used in TensorFlow.
- Like any programming course, start with the basics (variables) before advancing to higher concepts (functions, classes).

