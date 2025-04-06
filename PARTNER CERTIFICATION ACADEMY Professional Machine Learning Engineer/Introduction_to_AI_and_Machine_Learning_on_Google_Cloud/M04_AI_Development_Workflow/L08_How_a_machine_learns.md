# How_a_machine_learns

# 🧠 **Understanding How Neural Networks Learn**

## 🔍 **Overview**  
To understand **machine learning**, you must first explore **how neural networks learn**. This includes:  
- The **learning process**  
- Key **terms and concepts**  
- The **role of activation functions, loss functions, and gradient descent**  

If you're already familiar with **ML theories and terminologies**, feel free to **skip this lesson**.

---

## ⚙️ **How Do Machines Learn?**
Neural networks are the foundation of machine learning. You may have heard of different types:  
- **Artificial Neural Networks (ANNs)**  
- **Deep Neural Networks (DNNs)**  
- **Convolutional Neural Networks (CNNs)**  
- **Recurrent Neural Networks (RNNs)**  
- **Large Language Models (LLMs)**  

All of these originate from the **basic ANN**, which consists of:  
1️⃣ **Input Layer**  
2️⃣ **Hidden Layer(s)**  
3️⃣ **Output Layer**  

Each **neuron** (node) connects to others via **weights**, which the **network learns** during training.

---

## 🔢 **How Neural Networks Process Data**
1️⃣ **Calculate the weighted sum** of inputs.  
2️⃣ **Apply an activation function** to introduce **non-linearity**.  
3️⃣ **Pass the output to the next layer** until reaching the final prediction.  
4️⃣ **Compare the predicted output (ŷ) to the actual result (y)** using a **loss function**.  
5️⃣ **Backpropagation** adjusts **weights** based on the loss.  
6️⃣ **Gradient descent** helps **optimize the learning process**.  
7️⃣ **Iteration continues** until the model reaches an **optimal state**.

---

## 🚀 **Activation Functions: Making Neural Networks Non-Linear**
Without activation functions, a **neural network remains linear** and lacks **complex decision-making capabilities**.  
Common activation functions:  
- **ReLU (Rectified Linear Unit)** → Outputs **0** for negative values, keeps **positive** values unchanged.  
- **Sigmoid** → Maps output to a **range between 0 and 1** (good for **binary classification**).  
- **Tanh (Hyperbolic Tangent)** → Maps values between **-1 and 1**, providing **stronger gradients**.  
- **Softmax** → Converts outputs into a **probability distribution**, used for **multi-class classification**.

---

## 📉 **Loss Functions: Measuring Errors**
Loss functions evaluate **how far the model's predictions are from the actual values**.  
- **Mean Squared Error (MSE)** → Common in **regression** problems.  
- **Cross-Entropy Loss** → Used in **classification** problems.  

📌 **Loss function vs. Cost function**:  
- **Loss function** → Measures error **for a single prediction**.  
- **Cost function** → Measures error **for the entire dataset**.

---

## 🏔️ **Gradient Descent: Optimizing Learning**
To **minimize error**, neural networks use **gradient descent** to adjust weights.  
1️⃣ **Compute the derivative** of the loss function.  
2️⃣ **Move in the opposite direction** of the gradient to minimize loss.  
3️⃣ **Repeat** until reaching the lowest possible error.  

📌 **Learning Rate (Step Size)**:  
- **Too small** → Learning is **slow**.  
- **Too large** → Model may **fail to converge**.  
- **Optimal learning rate** ensures **efficient training**.

---

## 🔄 **Training Iterations & Hyperparameters**
A **complete pass through the dataset** is called an **epoch**.  
- **More epochs** → Better learning, but **risk of overfitting**.  
- **Fewer epochs** → **Underfitting**, where the model **fails to learn patterns**.  

### **Key Training Terms**
🔹 **Weights & Biases** → Adjusted by the model during learning.  
🔹 **Hyperparameters** → Defined **before training** (e.g., number of layers, learning rate, activation functions).  
🔹 **Backpropagation** → **Adjusts weights** to minimize error.  
🔹 **AutoML** → **Automates hyperparameter tuning**, saving experimentation time.

---

## 🎯 **Key Takeaways**
- Neural networks **learn by adjusting weights** to minimize error.  
- **Activation functions** introduce **non-linearity**, enabling **complex problem-solving**.  
- **Loss functions** measure **how well the model is performing**.  
- **Gradient descent** helps **optimize** learning.  
- **Hyperparameters** (e.g., learning rate, number of layers) **must be tuned for optimal performance**.  
- **AutoML** can automate **many of these processes**.  

You’ll revisit these concepts in **upcoming lessons and labs**! 🚀  
