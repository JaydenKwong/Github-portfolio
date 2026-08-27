# Customer Churn Analysis

## Project Overview

This project analyzes customer churn to understand why customers leave and identify customers who may be at risk of churning. Exploratory data analysis and machine learning were used to turn customer, service, contract and billing data into actionable retention insights.

## Business Questions

1. What customer patterns are associated with higher churn?
2. Can machine learning identify customers who are at risk of churning?
3. What actions could the business take to improve customer retention?

## Dataset

The project uses the Telco Customer Churn dataset containing 7,043 customers and 21 variables covering customer demographics, services, contracts, payment methods, tenure, charges and churn status.

The dataset was obtained from [Kaggle – Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data).

## Tools & Techniques

- Python
- Pandas
- Matplotlib & Seaborn
- Scikit-learn
- SMOTE
- Logistic Regression
- Random Forest
- GridSearchCV

## Analysis Process

The dataset was cleaned and explored before modelling. Categorical variables were encoded, numerical variables were scaled, and the data was split into stratified training and testing sets. SMOTE was applied only during training to address class imbalance.

Two machine learning models were developed and optimized using GridSearchCV: Logistic Regression and Random Forest.

## Key Findings

### 1. What customer patterns are associated with higher churn?

Customers with **month-to-month contracts, fiber optic internet and electronic check payments** showed higher churn. Churned customers also tended to have **shorter tenure and higher monthly charges**.

Overall, newer customers with flexible contracts and higher monthly costs appeared to represent a higher-risk customer group.

### 2. Can machine learning identify customers at risk of churn?

| Model | Accuracy | Precision | Recall | F1 Score | ROC-AUC |
|---|---:|---:|---:|---:|---:|
| Logistic Regression | 0.7417 | 0.5087 | **0.7861** | **0.6176** | **0.8397** |
| Random Forest | **0.7644** | **0.5447** | 0.6845 | 0.6066 | 0.8347 |

Logistic Regression provided the stronger result for identifying churn risk, achieving higher **recall, F1 score and ROC-AUC**. Its recall of 0.7861 means the model identified approximately **79% of customers who actually churned**.

Random Forest achieved higher overall accuracy and precision but missed more actual churners.

Random Forest feature importance also highlighted **contract type, tenure, payment method, online security, technical support and customer charges** as important predictors of churn.

### 3. What can the business do to improve customer retention?

Based on the analysis, the business could:

- Prioritize retention efforts toward **newer and month-to-month customers** who show higher churn risk.
- Encourage suitable customers to move toward **longer-term contracts** through loyalty benefits or incentives.
- Review the experience and pricing of **fiber optic customers**, as this group showed higher churn.
- Investigate why customers using **electronic check payments** show higher churn and encourage convenient alternative payment methods where appropriate.
- Use the churn model to identify high-risk customers earlier and target them with retention offers before they leave.

## Conclusion

The analysis identified clear customer groups associated with higher churn and demonstrated that machine learning can help detect customers at risk of leaving. Logistic Regression provided the strongest balance for churn detection, while Random Forest helped identify important predictive features.

Combining customer analysis with predictive modelling can help the business focus retention efforts on higher-risk customers rather than applying the same strategy to the entire customer base.

## Project File

The complete analysis, visualizations, preprocessing, model development and evaluation are available in `Churn_Analysis.ipynb`.
