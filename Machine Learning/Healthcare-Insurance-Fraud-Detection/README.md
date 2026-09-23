# Healthcare Insurance Fraud Detection

## Project Overview

This project uses machine learning to detect potentially fraudulent healthcare providers.

The main focus was to understand how **data cleaning, feature engineering and preprocessing** affect fraud detection performance rather than simply using more complex machine learning models.

---

## Dataset

**Source:** [Healthcare Provider Fraud Detection Analysis - Kaggle](https://www.kaggle.com/datasets/rohitrox/healthcare-provider-fraud-detection-analysis)

The project uses **4 original datasets**:

- Provider data
- Inpatient claims
- Outpatient claims
- Beneficiary data

The original data contains:

- **558,211 healthcare claim records**
- **138,556 beneficiaries**
- **5,410 healthcare providers**

The datasets were cleaned, combined and aggregated from claim-level and patient-level data into **5,410 provider-level records** for machine learning and fraud prediction.

---

## Project Steps

### 1. Data Cleaning & Preparation

- Checked missing values and data types
- Converted date columns into the correct format
- Cleaned diagnosis, procedure and physician information
- Combined inpatient, outpatient and beneficiary datasets
- Aggregated claim-level data into provider-level records

### 2. Feature Engineering

Created **39 new provider-level features** from the original healthcare data.

The features were grouped into:

- **Theme 1:** Provider claim behaviour
- **Theme 2:** Patient profile, medical complexity and billing patterns
- **Combined:** Theme 1 + Theme 2

Examples of engineered features include:

- Claim volumes
- Reimbursement amounts
- Claim duration
- Patient demographics
- Chronic conditions
- Diagnosis and procedure diversity
- Physician activity
- Deductible and billing patterns

### 3. Data Preprocessing

- Removed highly correlated and redundant features
- Used stratified train-test splitting
- Applied **SMOTE** to balance the training data
- Applied **StandardScaler** where required
- Used machine learning pipelines to prevent data leakage

### 4. Machine Learning

Four machine learning models were tested:

- Logistic Regression
- Random Forest
- Support Vector Machine (SVM)
- Artificial Neural Network (ANN)

Each model was tested across the three feature settings, creating **12 model-feature combinations**.

Models were tuned using **GridSearchCV with 5-fold stratified cross-validation**.

### 5. Model Evaluation

The models were evaluated using:

- Accuracy
- Precision
- Recall
- F1-Score
- ROC-AUC
- Confusion Matrix
- ROC Curves

**F1-Score** was used as the main evaluation metric because the fraud dataset was imbalanced.

---

## Key Findings

- **Random Forest + Theme 2** achieved the highest F1-Score of **0.6160**
- **Theme 1** achieved the strongest overall Recall and ROC-AUC performance
- Logistic Regression + Theme 1 detected **91 out of 101 fraudulent providers**
- Combining Theme 1 and Theme 2 did **not** improve overall model performance
- More complex models did not automatically produce better results
- The results showed that **feature engineering had a major impact on fraud detection performance**

---

## Important Fraud Indicators

Some of the strongest indicators associated with potential fraud were:

- Unique procedure codes
- Total inpatient reimbursement
- Total inpatient claims
- Unique diagnosis codes

**SHAP** was also used to understand which features contributed most to the selected Random Forest model.

---

## Tools & Technologies

**Programming & Data Analysis**
- Python
- Pandas
- NumPy

**Machine Learning**
- Scikit-learn
- Imbalanced-learn
- Logistic Regression
- Random Forest
- Support Vector Machine
- Artificial Neural Network

**Preprocessing & Model Tuning**
- SMOTE
- StandardScaler
- GridSearchCV
- Stratified 5-Fold Cross-Validation
- Machine Learning Pipelines

**Visualisation & Model Interpretation**
- Matplotlib
- Seaborn
- SHAP

**Environment**
- Google Colab

---

## Project Files

### `Healthcare_Fraud_Data_Preprocessing.ipynb`

Contains:

- Raw data exploration
- Data cleaning
- Data integration
- Provider-level aggregation
- Feature engineering
- Exploratory data analysis
- Feature selection

### `Healthcare_Fraud_Modelling.ipynb`

Contains:

- Train-test splitting
- Class imbalance handling
- Feature scaling
- Machine learning pipelines
- Model training
- Hyperparameter tuning
- Cross-validation
- Model evaluation
- Confusion matrices
- ROC curves
- SHAP feature importance

---

## Conclusion

The project showed that **better feature engineering can have a greater impact on fraud detection than simply increasing model complexity**.

Provider claim behaviour was useful for detecting more fraudulent providers, while patient, medical complexity and billing features provided a better balance between fraud detection and false positives.
