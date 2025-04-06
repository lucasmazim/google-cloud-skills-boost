# Lab_introduction

# 🏦 **Hands-On Lab: Predicting Loan Risk with AutoML**  

## 🔹 **Lab Overview**  
In this lab, you'll use **AutoML**, a **no-code** tool, to **build a machine learning model** for **predicting loan risk**.  

- **Dataset**: Loan records from a financial institution (**2,050 data points**).  
- **AutoML Requirement**: At least **1,000 data points** per dataset.  
- **Objective**: Work through the **three phases** of the ML workflow:  
  1️⃣ **Data Preparation**  
  2️⃣ **Model Development**  
  3️⃣ **Model Serving**  

---

## 📊 **Understanding Model Evaluation**  
Before starting the lab, let’s review key **evaluation metrics** to help you interpret the model's results.  

### **Confusion Matrix Breakdown**
- **100% True Positive Rate (TPR)** → **Correctly identifies** all borrowers who will repay their loan (**ideal**).  
- **87% True Negative Rate (TNR)** → **Correctly identifies** 87% of defaulters.  
- **13% False Positive Rate (FPR)** → **Mistakenly classifies** 13% of good borrowers as defaulters (risk of rejecting good customers).  
- **0% False Negative Rate (FNR)** → **Never misclassifies** a repaying borrower as a defaulter (**ideal**).  

📌 If these terms are unfamiliar, refer to the **confusion matrix lesson** from the previous module.  

---

## 🎯 **Precision-Recall Curve & Confidence Threshold**  
- **Confidence threshold** affects **precision & recall**:  
  - **Higher threshold** → **Increases precision**, **decreases recall**.  
  - **Lower threshold** → **Decreases precision**, **increases recall**.  

🔹 **Extreme Threshold Scenarios**  
📌 **Threshold = 0**  
- **100% recall**, **50% precision** → Model assumes **everyone can repay** but only **half actually do**.  
- **Risky** → Potential **loan investment loss**.  

📌 **Threshold = 1**  
- **100% precision**, **1% recall** → Model **only approves 1% of applicants**, rejecting **99%**.  
- **Major business loss** → Too **conservative** in loan approvals.  

✅ **Key Takeaway**: **Set an appropriate threshold** to balance **precision & recall** based on business needs.  

---

## 🚀 **Let’s Start the Lab!**  
