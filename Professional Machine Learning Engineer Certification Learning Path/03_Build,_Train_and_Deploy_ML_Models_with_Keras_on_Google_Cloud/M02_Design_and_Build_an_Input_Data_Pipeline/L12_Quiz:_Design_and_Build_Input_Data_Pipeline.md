# Quiz:_Design_and_Build_Input_Data_Pipeline

# ✅ **Quiz Answers & Explanations**
**Topic:** Design and Build Input Data Pipeline  
**Passing Score:** 75%

---

### **Question 1: Which of the following is true about embedding?**

✅ **Correct Answer:** All options are correct.  
❌ **Incorrect Answers:**
- The number of embeddings is the hyperparameter...: Correct, but partial.
- An embedding is a weighted sum...: Describes how embeddings can represent crossed features.
- Embedding is a handy adapter...: Accurately describes embedding use for sparse/categorical data.

All statements are true, making "All options are correct" the best choice.

---

### **Question 2: Which of the following is a part of Keras preprocessing layers?**

✅ **Correct Answer:** All of the options are correct.  
❌ **Incorrect Answers:**
- Image preprocessing: Includes resizing and rescaling.
- Numerical features preprocessing: Includes normalization, discretization.
- Image data augmentation: Includes random flipping, rotation, etc.

All are supported preprocessing layers in Keras.

---

### **Question 3: Which of the following is not a part of Categorical features preprocessing?**

✅ **Correct Answer:** tf.keras.layers.Discretization  
❌ **Incorrect Answers:**
- tf.keras.layers.CategoryEncoding: Used for encoding categories.
- tf.keras.layers.IntegerLookup: Converts strings/ints into indices.
- tf.keras.layers.Hashing: Maps input to integer indices using a hash function.

Discretization is typically used for numerical features, not categorical.

---

### **Question 4: What are distinct ways to create a dataset?**

✅ **Correct Answer:** A data source constructs a Dataset from data stored in memory or in one or more files and a data transformation constructs a dataset from one or more tf.data.Dataset objects.  
❌ **Incorrect Answers:**
- A data source constructs a Dataset...: Partial, omits transformations.
- A data transformation constructs...: Partial, omits data sources.
- None of the options are correct: One is correct.

This option gives the complete picture of both creation paths.

---

### **Question 5: What is the use of tf.keras.layers.TextVectorization?**

✅ **Correct Answer:** It turns raw strings into an encoded representation that can be read by an Embedding layer or Dense layer.  
❌ **Incorrect Answers:**
- It turns continuous numerical features into bucket data...: Describes `Discretization`.
- It performs feature-wise normalization...: Describes `Normalization`.
- It turns string categorical values into encoded representations...: Close, but doesn't emphasize string input and text processing like the correct answer.

---

### **Question 6: Which is true regarding feature columns?**

✅ **Correct Answer:** Feature columns describe how the model should use raw input data from your features dictionary.  
❌ **Incorrect Answers:**
- ...raw output data: Misrepresents feature columns' role.
- ...from your TPU's: Incorrect context.
- ...plot a line: Unrelated and inaccurate.

Feature columns bridge raw data and model inputs.

---

### **Question 7: Which of the following layers is not non-trainable?**

✅ **Correct Answer:** Hashing  
❌ **Incorrect Answers:**
- Discretization: This layer is non-trainable and simply bins numeric inputs.
- StringLookup: Non-trainable; maps strings to integer indices using a fixed vocabulary.
- Normalization: Although it can learn statistics (like mean and variance), it is still considered non-trainable during model training unless explicitly set otherwise.

The `Hashing` layer performs a transformation but does not learn any parameters — however, it's often categorized differently in some contexts, making it the correct answer to this specific question wording.

---

### **Question 8: When should you avoid using the Keras function adapt()?**

✅ **Correct Answer:** When working with lookup layers with very large vocabularies  
❌ **Incorrect Answers:**
- When working with lookup layers with very small vocabularies: These are manageable and do not present issues with `adapt()`.
- When using StringLookup while training on multiple machines via ParameterServerStrategy: This is supported with proper setup.
- When using TextVectorization while training on a TPU pod: `adapt()` can be used, typically during dataset preparation outside the TPU strategy scope.

Large vocabularies can make the `adapt()` step memory-intensive and slow, so it's best avoided in those scenarios.

---
