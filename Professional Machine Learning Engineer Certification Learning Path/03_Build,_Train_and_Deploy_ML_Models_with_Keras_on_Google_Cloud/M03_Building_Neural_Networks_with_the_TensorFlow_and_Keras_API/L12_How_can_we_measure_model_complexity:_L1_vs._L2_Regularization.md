# How_can_we_measure_model_complexity:_L1_vs._L2_Regularization

# Regularization: L1 and L2 Norm Penalties

## Overview

Regularization is a major research area in machine learning, with many techniques available and more emerging.

Some common methods include:
- Early stopping
- Parameter norm penalties
- Dataset augmentation
- Noise robustness
- Sparse representations

In this module, we focus on **L1** and **L2** regularization from the *parameter norm penalties* family.

## Why Regularize?

Regularization helps a model **generalize**, meaning it performs well not only on training data but also on **unseen test data**.

The idea is to **penalize model complexity**, which often causes overfitting.

## Measuring Model Complexity

L1 and L2 regularization define model complexity as the **magnitude of the weight vector**.

From linear algebra:
- The **magnitude** of a vector is given by its **norm**
- Common norms:
  - L2 norm (Euclidean)
  - L1 norm (Manhattan)

## L2 Norm (Euclidean Distance)

For a 2D weight vector 'w = [a, b]':
- L2 norm is calculated as:  
  'sqrt(a² + b²)'

This is the most familiar form — a straight-line distance from the origin.

- Denoted as: '||w||₂' or simply '||w||'
- In geometry: the vector lies **within a circle** of radius 1 if '||w||₂ ≤ 1'

## L1 Norm (Manhattan Distance)

For the same vector 'w = [a, b]':
- L1 norm is:  
  '|a| + |b|'

This forms a **diamond-shaped** constraint region.

- Denoted as: '||w||₁'
- Encourages **sparse solutions**, where some weights are driven to exactly **zero**

## Applying L2 Regularization (Weight Decay)

L2 regularization adds a penalty to the loss function:

'  
loss + λ * ||w||²  
'

Notes:
- Uses the **square** of the L2 norm for easier differentiation
- 'λ' (lambda) is a **hyperparameter** that controls the tradeoff between:
  - Model accuracy (fit to data)
  - Model simplicity (smaller weights)

## Applying L1 Regularization

Swap the L2 term with the L1 norm:

'  
loss + λ * ||w||₁  
'

Key differences:
- **L1 leads to sparsity**: some weights become zero
- Enables **feature selection** by discarding unimportant features (those with zero weight)

## Visualization

- **L2** constraint region → **circle**  
- **L1** constraint region → **diamond**

This shape explains why L1 often yields exact zeros: the corners of the diamond promote optimal points on the axes.

## Sparsity and Feature Selection

- L1 regularization simplifies the model
- Zero weights indicate **irrelevant features**
- Great for **feature selection**, especially in high-dimensional spaces

## Lambda: The Regularization Coefficient

- 'λ' is a scalar that controls regularization strength
- Needs to be **tuned** (manually or automatically)
- Is **data-dependent**, meaning its optimal value varies by dataset

You can tune 'λ' using:
- Manual search
- Automated tools (e.g., hyperparameter tuning frameworks)

## Summary

| Method       | Penalty Term         | Effect                         | Use Case                          |
|--------------|----------------------|---------------------------------|------------------------------------|
| L2           | 'λ * ||w||²'         | Shrinks all weights uniformly  | Prevents overfitting               |
| L1           | 'λ * ||w||₁'         | Drives some weights to zero    | Feature selection, sparsity        |

Regularization is essential to controlling model complexity and ensuring good generalization to unseen data.
