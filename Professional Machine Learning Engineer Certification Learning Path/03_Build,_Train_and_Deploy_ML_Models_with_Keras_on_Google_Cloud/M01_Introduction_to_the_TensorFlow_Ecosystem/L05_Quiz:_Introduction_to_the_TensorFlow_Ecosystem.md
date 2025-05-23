# Quiz:_Introduction_to_the_TensorFlow_Ecosystem

# ✅ **Quiz Answers & Explanations**
**Topic:** Introduction to the TensorFlow Ecosystem  
**Passing Score:** 75%

---

### **Question 1: How does TensorFlow represent numeric computations?**

✅ **Correct Answer:** Using a Directed Acyclic Graph (or DAG)  
❌ **Incorrect Answers:**
- Flow chart: While visualizations may look like flow charts, TensorFlow internally uses DAGs for computation.
- None of the options are correct: DAG is the correct representation.
- Both Using a Directed Acyclic Graph (or DAG) and Flow chart: Only DAG is technically accurate; "flow chart" is a mischaracterization.

---

### **Question 2: Which API is used to build performant, complex input pipelines from simple, re-usable pieces that will feed your model's training or evaluation loops.**

✅ **Correct Answer:** tf.data.Dataset  
❌ **Incorrect Answers:**
- All of the options are correct: Only `tf.data.Dataset` is designed for input pipelines.
- tf.Tensor: This represents data, not input pipeline logic.
- tf.device: This is used to place operations on specific devices, not for input pipelines.

---

### **Question 3: Which are useful components when building custom Neural Network models?**

✅ **Correct Answer:** All of the options are correct.  
❌ **Incorrect Answers:**
- tf.losses: Essential for defining model objectives.
- tf.optimizers: Used for training the model.
- tf.metrics: Track and evaluate model performance.

Each is useful, which makes the "All of the options" choice correct.

---

### **Question 4: What operations can be performed on tensors?**

✅ **Correct Answer:** They can be both reshaped and sliced  
❌ **Incorrect Answers:**
- They can be sliced: This is true but incomplete.
- They can be reshaped: Also true but incomplete.
- None of the options are correct: Tensor operations like slicing and reshaping are fundamental in TensorFlow.

---

### **Question 5: Which of the following statements is true of TensorFlow?**

✅ **Correct Answer:** TensorFlow is a scalable and multi platform programming interface for implementing and running machine learning algorithms, including convenience wrappers for deep learning.  
❌ **Incorrect Answers:**
- TensorFlowis a scalable and single-platform...: TensorFlow is *multi-platform*, not single.
- Although able to run on other processing platforms, TensorFlow 2.0 is not yet able to run on GPU's: This is false; GPU support is core to TensorFlow.
- ...not yet able to run on TPU's: TPU support is available.

---

### **Question 6: Which of the following is true when we compute a loss gradient?**

✅ **Correct Answer:** All options are correct.  
❌ **Incorrect Answers:**
- It uses tape and the gradients...: True, but not the full answer.
- TensorFlow records all operations...: True and accurate.
- The computed gradient... used in reverse mode differentiation: Also correct, part of the autodiff process.

All options are valid parts of how TensorFlow computes gradients, making "All options are correct" the best choice.

---
