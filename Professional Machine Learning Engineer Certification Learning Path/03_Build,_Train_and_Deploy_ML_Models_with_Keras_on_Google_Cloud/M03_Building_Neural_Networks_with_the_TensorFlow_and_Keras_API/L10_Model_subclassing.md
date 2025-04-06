# Model_subclassing

# Model Subclassing in Keras

## Where It Fits

Let's begin with where **model subclassing** fits in the model-building spectrum of Keras.

There are three primary ways to build models in Keras:

1. **Sequential API**
   - Straightforward
   - A simple stack of layers
   - Limited to single-input, single-output architectures

2. **Functional API**
   - Fully featured and easy to use
   - Supports arbitrary model architectures
   - Ideal for most use cases
   - Considered the industry-strength API

3. **Model Subclassing**
   - Fully customizable
   - Useful for complex, research-level models
   - Gives you complete control over model behavior

## When to Use Each Approach

Choosing the right model type depends on the **level of customization** needed:

- **Sequential API**: Minimal flexibility
- **Functional API**: More flexible, but still has some limitations
- **Model Subclassing**: Maximum flexibility and customization

## How Model Subclassing Works

With model subclassing, you:

1. Subclass the base model class: 'tf.keras.Model'
2. Define the layers in the constructor ('__init__')
3. Implement the model's forward pass in the 'call' method

### Example

'  
class MyModel(tf.keras.Model):  
    def __init__(self):  
        super(MyModel, self).__init__()  
        self.dense1 = tf.keras.layers.Dense(64, activation='relu')  
        self.dense2 = tf.keras.layers.Dense(10)  

    def call(self, inputs):  
        x = self.dense1(inputs)  
        return self.dense2(x)  
'

In this example:
- The constructor initializes two dense layers
- The 'call' method defines the forward pass

## Adding Parameters

You can pass parameters like 'num_classes' into the constructor for further customization:

'  
class MyModel(tf.keras.Model):  
    def __init__(self, num_classes):  
        super(MyModel, self).__init__()  
        self.dense1 = tf.keras.layers.Dense(64, activation='relu')  
        self.dense2 = tf.keras.layers.Dense(num_classes)  
'

This makes the output layer dynamic based on the task.

## Custom Training Loops

Model subclassing also enables writing **custom training loops**.

While you can still use 'model.compile()' and 'model.fit()', subclassing allows more advanced training logic when needed.

You can use the 'training' keyword argument in the 'call' method to control layer behavior:

'  
def call(self, inputs, training=False):  
    x = self.batch_norm(inputs, training=training)  
    return self.dropout(x, training=training)  
'

## Training vs Inference Behavior

Some layers behave differently during training and inference:

- **Dropout**:
  - Training: Randomly drops units
  - Inference: No dropout

- **BatchNormalization**:
  - Training: Uses batch statistics
  - Inference: Uses moving averages

## Summary

| API Type         | Flexibility | Use Case                          |
|------------------|-------------|-----------------------------------|
| Sequential API   | Low         | Simple linear stacks              |
| Functional API   | Medium      | Multi-input/output, shared layers |
| Model Subclassing| High        | Fully custom, research models     |

Use:
- **Sequential API** for simplicity
- **Functional API** for flexibility and clarity
- **Model Subclassing** for total control and advanced use cases
