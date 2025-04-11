# Quiz:_Building_Neural_Networks_in_TensorFlow_with_Keras_API

# ✅ **Quiz Answers & Explanations**
**Topic:** Building Neural Networks in TensorFlow with Keras API  
**Passing Score:** 75%

---

### **Question 1: How does regularization help build generalizable models?**

✅ **Correct Answer:** By adding dropout layers to our neural networks  
❌ **Incorrect Answers:**
- By using image processing APIs to find out accuracy: Image processing APIs do not contribute to regularization.
- None of the options are correct: Dropout is a known regularization technique.
- By adding dropout layers... and using image processing APIs: Only the dropout part is valid.

---

### **Question 2: Select the correct statement regarding the Keras Functional API.**

✅ **Correct Answer:** Unlike the Keras Sequential API, we have to provide the shape of the input to the model.  
❌ **Incorrect Answers:**
- The Keras Functional API does not provide a more flexible way...: Incorrect — it *does* offer more flexibility.
- None of the options are correct: One is correct.
- Unlike the Keras Sequential API, we do not have to provide the shape...: Incorrect — Functional API *requires* input shape.

---

### **Question 3: The Keras Functional API can be characterized by having:**

✅ **Correct Answer:** Multiple inputs and outputs and models with shared layers.  
❌ **Incorrect Answers:**
- Single inputs and outputs...: Describes Sequential API, not Functional.
- None of the options are correct: One is correct.
- Multiple inputs and outputs and models with non-shared layers: Shared layers are supported and often used.

---

### **Question 4: How does Adam (optimization algorithm) help in compiling the Keras model?**

✅ **Correct Answer:** Both by updating network weights iteratively based on training data by diagonal rescaling of the gradients  
❌ **Incorrect Answers:**
- By diagonal rescaling of the gradients: True, but not complete.
- By updating network weights iteratively...: Also true but incomplete.
- None of the options are correct: The combined option is correct.

---

### **Question 5: The L2 regularization provides which of the following?**

✅ **Correct Answer:** It adds a sum of the squared parameter weights term to the loss function.  
❌ **Incorrect Answers:**
- It multiplies a sum...: Incorrect.
- It subtracts a sum...: Regularization adds to the loss.
- None of the options are correct: One option is correct.

---

### **Question 6: What is the significance of the Fit method while training a Keras model?**

✅ **Correct Answer:** Defines the number of epochs  
❌ **Incorrect Answers:**
- Defines the number of steps per epochs: Can be passed optionally but not the primary role.
- Defines the batch size: Also optional.
- Defines the validation steps: Can be defined, but not core to the question.

The key function of `fit()` is to manage training epochs.

---

### **Question 7: During the training process, each additional layer in your network can successively reduce signal vs. noise. How can we fix this?**

✅ **Correct Answer:** Use non-saturating, nonlinear activation functions such as ReLUs.  
❌ **Incorrect Answers:**
- Use sigmoid or tanh...: These are saturating and may cause vanishing gradients.
- None of the options are correct: One is correct.
- Use non-saturating, linear activation functions: Linear functions do not introduce non-linearity needed for deep learning.

---

### **Question 8: Non-linearity helps in training your model at a much faster rate and with more accuracy without the loss of your important information?**

✅ **Correct Answer:** True  
❌ **Incorrect Answer:**
- False: Non-linearities enable deep networks to model complex patterns more efficiently.

---

### **Question 9: The predict function in the tf.keras API returns what?**

✅ **Correct Answer:** Numpy array(s) of predictions  
❌ **Incorrect Answers:**
- Input_samples of predictions: The input is not returned.
- Both numpy array(s)...: Only the predictions are returned.
- None of the options are correct: One is correct.

---
