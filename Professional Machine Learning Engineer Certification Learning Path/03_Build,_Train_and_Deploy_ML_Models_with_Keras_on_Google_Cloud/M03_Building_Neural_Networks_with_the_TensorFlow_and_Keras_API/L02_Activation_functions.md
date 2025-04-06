# Activation_functions

# 🧠 Activation Functions in Deep Neural Networks

## 📌 Introduction
Next, let's take a look at activation functions and how they help train deep neural network models.

## 📊 Linear Models

- **Example setup**:  
  A simple linear model with three inputs: X1, X2, and X3 (blue circles), connected by weights (W) to a single output (green circle).
- There's typically an extra bias term added in, but it's excluded here for simplicity.
- The model can be expressed as:  
  **Y = W1 * X1 + W2 * X2 + W3 * X3**

## 🔄 Hidden Layers in Linear Models

- Even if we add a hidden layer of neurons, it still behaves like a linear model.
- Example:  
  - First hidden neuron takes weights from all three inputs (w1, w4, w7), and outputs a new value (w10).
  - This process repeats for other hidden neurons.
- **Conclusion**: Without nonlinearity, all these layers collapse into a single linear transformation.

## 🧮 Matrix Multiplication in ML

- Machine learning often involves:
  - Smashing arrays (1D, 2D, 3D) together
  - Multiplying:
    - Weight tensors
    - Input datasets
    - Hidden layer outputs
- It's a lot of simple math done *very quickly*.

## ❗ The Limitation of Stacked Linear Layers

- Adding more hidden layers doesn't solve the problem:
  - Still results in a single linear transformation
  - Just more computationally expensive

## 🔓 Breaking Linearity: Nonlinear Activation Functions

- **Solution**: Add a **nonlinear transformation layer**
  - Achieved via activation functions like:
    - Sigmoid
    - Tanh
    - ReLU
- In frameworks like TensorFlow:
  - Each neuron has:
    - Node 1: Weighted sum ('W * X + B')
    - Node 2: Activation function output
- Activation functions **introduce nonlinearity** and allow networks to model complex patterns.

## 🔁 Why Nonlinearity Matters

- Without nonlinearity, multiple linear layers can be collapsed into one.
- Typical setup:
  - All layers (except the output) use **nonlinear activations**
  - Final layer:
    - Linear for regression
    - Sigmoid or Softmax for classification

## 🤔 Choosing an Activation Function

- Options include:
  - **Sigmoid**
  - **Scaled/shifted sigmoid**
  - **Tanh**
- **Problem**: Saturation leads to **vanishing gradients**
  - Gradients become 0
  - Weights stop updating
  - Training halts

## ⚡ ReLU: Rectified Linear Unit

- One of the most widely used due to:
  - Simplicity
  - Performance
- **Behavior**:
  - Positive domain: Linear
  - Negative domain: Output is 0
- **Advantages**:
  - Faster training (often 10x faster than sigmoid)

## ⚠️ Dying ReLU Problem

- Negative input → Output 0
- Zero output → Backpropagation gradient is 0
- No weight update → Layer stops learning
- **Training fails for that layer**

## 🛠️ ReLU Variants to the Rescue

Several modifications help prevent the dying ReLU issue:

### 🔹 Softplus

- A smooth ReLU function
- Derivative is the **logistic sigmoid**
- Smooth approximation of ReLU

### 🔹 Leaky ReLU

- Allows small negative values
- Enables **non-zero gradients** when inactive

### 🔹 Parametric ReLU (PReLU)

- Learns parameters to control leakiness
- Adapts the activation function during training

### 🔹 Exponential Linear Unit (ELU)

- Generalization of ReLU
- Uses a parameterized exponential for negative values
- Helps center activations around zero → Faster learning

### 🔹 Gaussian Error Linear Unit (GELU)

- High-performing like ReLU
- Nonlinearity applies **stochastic regularization**
  - Randomly applies identity or zero to input

## 📊 Visual Summary

> "I'm very much a visual person."

A quick overlay of various activation functions on the same XY plane is shown (not included in transcript, but referenced).

---
