# Model_Garden

# **Vertex AI Model Garden Overview**

## **Introduction**
In addition to **Vertex AI Studio**, **Model Garden** within Vertex AI provides access to a wide range of **generative AI (Gen AI) models**, including those developed by Google, third-party providers, and open-source communities.

## **What is Model Garden?**
Model Garden functions as a **model library** where you can:
- **Search, discover, and interact** with various Gen AI models.
- **Access models from different sources**, including Google, third parties, and open-source repositories.

## **Vertex AI Studio vs. Model Garden**
| Feature | Vertex AI Studio | Model Garden |
|---------|----------------|--------------|
| **Purpose** | Comprehensive environment for building, training, and fine-tuning models | Quick model discovery and application |
| **Interface** | Supports UI and coding | Provides model cards and easy integration |
| **Best for** | Developing custom AI models | Finding pre-trained models for specific tasks |

## **Model Cards**
Each model in Model Garden includes a **model card**, which provides:
- **Overview**
- **Use cases**
- **Relevant documentation**

Model Garden also integrates with **Vertex AI Studio**, allowing users to:
- Start project development via a user-friendly interface.
- Access **sample code** and use **notebooks** for development.

## **Categories of Models**
Model Garden features three major categories of models:

1. **Foundation Models**  
   - **Pretrained, multitask models** that can be fine-tuned using **Vertex AI Studio**, **APIs**, and **SDKs**.  
   - Examples:
     - **Gemini** – Multimodal processing
     - **Embeddings** – Text and multimodal embeddings
     - **Imagen** – Image generation
     - **Chirp** – Speech processing
     - **Codey** – Code generation  
   - Previously covered in **pre-trained APIs** lessons.

2. **Task-Specific Solutions**  
   - **Pre-trained models optimized for specific tasks**, such as:
     - **Entity analysis**
     - **Sentiment analysis**
     - **Syntax analysis**
     - **Object detection**
     - **Text translation**

3. **Fine-Tunable/Open-Source Models**  
   - Mostly **open-source models** that can be fine-tuned using:
     - Custom **notebooks**
     - **Pipelines**

## **Filtering Models**
To find the best model, you can filter search results by:

- **Modalities** (e.g., Language, Vision, Speech)
- **Tasks** (e.g., Generation, Classification, Detection)
- **Features** (e.g., Pipeline, Notebook, One-Click Deployment Support)

## **Starting Your Workflow with Model Garden**
With Model Garden, you can:
1. **Use Google’s foundation models** directly in the Google Cloud Console via **Vertex AI Studio** or through **APIs**.
2. **Tune models** in Vertex AI Studio.
3. **Deploy models** to production.
4. **Customize and use open-source models**.

---

# **Use Case: Computer Vision with Model Garden**
### **Example: Using Owl-ViT for Object Detection**
**Scenario:** You are interested in computer vision and want to use a vision-based model.

### **Steps to Find and Use a Model**
1. **Filter for vision-related models** in Model Garden.
2. **Select "Detection"** under the "Tasks" section.
3. **Result:** The search shows the **Owl-ViT (Vision Transformer)** model, an open-source **zero-shot, text-conditioned object detection model**.
4. **Review the model card** for details.
5. **Open a Colab notebook** to try the model.
6. **Deploy the model** to an endpoint on **Vertex AI**.
7. **Send an image to the endpoint** to receive a prediction (**text caption describing the image**).

### **Conclusion**
This example highlights how **Model Garden simplifies the process** of:
- Finding a model
- Deploying it
- Using it efficiently for AI tasks
