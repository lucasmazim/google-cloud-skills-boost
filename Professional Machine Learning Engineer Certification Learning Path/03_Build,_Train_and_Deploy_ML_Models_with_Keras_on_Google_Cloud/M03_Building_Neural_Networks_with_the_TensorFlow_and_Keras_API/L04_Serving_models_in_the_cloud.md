# Serving_models_in_the_cloud

# Serving a Trained Model with TensorFlow and AI Platform

## From Training to Prediction

Once you've:
- Selected the features
- Transformed them as needed
- Chosen your model architecture
- Applied regularization for good performance
- Trained your model (possibly several times)

...it's time to **serve the model for prediction**.

## Why Serve the Model?

Making individual predictions locally isn’t realistic — client code cannot keep the model object in memory.

To allow others to use the trained model:
- Save/export the model to a file
- Load the model from this exported file when needed

## Exporting with SavedModel Format

We will export the model in **TensorFlow SavedModel** format.

This format allows serving through:
- Web applications
- JavaScript code
- Mobile apps
- And more

## What is SavedModel?

**SavedModel** is:
- A universal, language-neutral serialization format for TensorFlow models
- Recoverable and hermetic
- Designed for production use and tool interoperability

### Benefits
- Can be loaded with 'tf.keras.models.load_model'
- Compatible with TensorFlow Serving
- Makes the model servable by other tools and systems

## Using Google Cloud AI Platform

One powerful way to serve the model is with **Google Cloud AI Platform**.

> Although the AI Platform supports training at scale, we’re focusing only on model serving.

### Step 1: Create a Model

Create a model object in AI Platform.  
For example, name it 'property_price' (following the house price prediction use case).

### Step 2: Create a Model Version

This is essential.  
You might call the version 'DNN' (Deep Neural Network).  
Tip: Use timestamps or suffixes to differentiate multiple versions.

### Step 3: Push the Model to the Cloud

Run a command to upload the SavedModel to the cloud.  
Remember to:
- Point to the output directory where the SavedModel was saved
- Specify flags for:
  - Python runtime version
  - TensorFlow runtime version
  - Framework (default: TensorFlow)
  - Staging bucket (if uploading files)

> A staging bucket is needed only when uploading from local files.

## Making Predictions with 'gcloud'

Once the model and version are deployed, use this command to predict:

' gcloud ai-platform predict \
  --model property_price \
  --version DNN \
  --json-instances input.json '

Make sure to provide:
- The model name
- The version name
- A JSON file path with the input examples
