# Training_neural_networks_with_TensorFlow_2_and_the_Keras_Functional_API

# Wide and Deep Learning with the Functional API

## Introduction

No, this section is not about ornithology or the study of birds.  
We all know that **seagulls can fly**, and **pigeons can fly** as well.  
It feels intuitive that animals with wings can fly — it's how we learn.

But what about **penguins** or **ostriches**?

By **jointly training** a wide linear model (for memorization) and a deep neural network (for generalization),  
we can combine the strengths of both approaches to reach human-like intuition.

At Google, this approach is called **Wide and Deep Learning**.

## When is Wide & Deep Learning Useful?

It's useful for large-scale regression and classification problems with **sparse inputs**, such as:
- Recommender systems
- Search
- Ranking problems

### The Brain Analogy

- Your brain memorizes patterns:  
  *"Seagulls can fly"*, *"Pigeons can fly"*

- It generalizes:  
  *"Animals with wings can fly"*

- It handles exceptions:  
  *"Penguins can't fly"*

Wide & Deep models aim to mimic this human-style reasoning.

## Understanding Sparse Matrices

Sparse matrices are **super wide**, with many features.

- Use **linear models** to minimize free parameters
- If columns are independent, linear models may work
- For **correlated inputs** (like nearby image pixels), use deep networks to:
  - Decorrelate features
  - Reduce dimensionality

## Using the Keras Functional API

The **Functional API** allows:
- Multiple inputs and outputs
- Layer sharing
- Nonlinear model topologies
- Ad hoc graphs

### How it Works

You define layers as instances and connect them directly:

1. Create input and output layers
2. Pass data from one to another
3. Use 'Model(inputs, outputs)' to tie them together

### When to Use Functional API

- Models with shared layers
- Models with complex graphs
- Multi-input/multi-output models

**Note**: The sequential API can't handle these cases.

## Example: Multi-Input Multi-Output Ticket System

Inputs:
- Title (text input)
- Body (text input)
- Tags (categorical)
- Image (logo representation)

Outputs:
- Department (classification via softmax)
- Text summary (sequence output)

## Reusing Models Like Layers

In Functional API:
- You can treat any model like a layer
- Reuse both **architecture** and **weights**

## Example: Autoencoder

In the Functional API, operations are **functions** — outputs from one layer feed directly into the next.

## Shared Layers

- Use the same layer instance multiple times
- Useful for inputs with shared vocabularies or similar features
- Reduces training data needs

To share a layer:  
Just call the **same instance** multiple times.

## Building a Wide and Deep Model

1. **Input Layer**:  
   Use features like:
   - Pickup & dropoff latitude/longitude
   - Number of passengers

2. **Deep Part**:  
   Use 'layers.Dense' stacked for depth

3. **Wide Part**:  
   Use 'DenseFeatures' with your defined feature columns

4. **Combine** and compile the model.

Training, evaluation, and inference work the same as with Sequential API.

## Strengths of Functional API

- Less verbose than subclassing
- Validates model during construction
- Inputs defined with shape and dtype
- Helpful static error messages
- Similar to type checking in compiled languages
- Plottable and inspectable graphs
- Intermediate activations accessible
- Serializable & clonable as a single file

## Weaknesses of Functional API

- Does not support **dynamic architectures**
  - Models must be **DAGs** (Directed Acyclic Graphs)
  - Not suitable for recursive networks like Tree-RNNs

- Complex architectures might require:
  - Subclassing
  - Custom training and inference methods

## Summary

Use the **Functional API** when you need:
- Flexibility
- Shared layers
- Multiple inputs/outputs
- Visual inspection and serialization

Use **subclassing** when you need:
- Dynamic behavior
- Full control over training/inference
