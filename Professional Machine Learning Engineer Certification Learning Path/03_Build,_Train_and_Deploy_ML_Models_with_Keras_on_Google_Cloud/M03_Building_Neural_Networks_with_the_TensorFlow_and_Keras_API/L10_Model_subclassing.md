# Model_subclassing

# Model Subclassing in Keras

## Where It Fits

Let's start with where **model subclassing** fits in the spectrum of Keras model building.

There are three main ways to build models in Keras:

1. **Sequential Model**  
   - Very straightforward  
   - A simple stack of layers  
   - Limited to single-input, single-output structures  

2. **Functional API**  
   - Easy-to-use and powerful  
   - Supports arbitrary model architectures  
   - Recommended for most use cases  
   - Considered the industry-strength approach in Keras  

3. **Model Subclassing**  
   - Fully customizable  
   - Best for complex, research-driven, or out-of-the-box use cases  
   - Requires implementing everything from scratch  

## When to Use Each

Choosing the right model type depends on the **level of customization** you need:

- **Sequential API**: Minimal flexibility  
- **Functional API**: More flexible, but with some limits  
- **Model Subclassing**: Complete control and customization  

## How Model Subclassing Works

Subclass the base Keras model by extending 'tf.keras.Model'.  
You must define:
- An '__init__' method: where you instantiate the layers  
- A 'call' method: where you define the forward pass  

### Example

```python
class MyModel(tf.keras.Model):
    def __init__(self):
        super(MyModel, self).__init__()
        self.dense1 = tf.keras.layers.Dense(64, activation='relu')
        self.dense2 = tf.keras.layers.Dense(10)

    def call(self, inputs):
        x = self.dense1(inputs)
        return self.dense2(x)
