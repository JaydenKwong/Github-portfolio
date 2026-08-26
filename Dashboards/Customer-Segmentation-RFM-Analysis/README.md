# Customer Segmentation & RFM Analysis Dashboard

## Project Overview

This project analyzes online retail transaction data to understand customer purchasing behaviour and segment customers using **RFM (Recency, Frequency, Monetary) analysis**.

Python was used for data preparation, customer-level aggregation, RFM scoring, and customer segmentation. Tableau was then used to build an interactive dashboard for exploring the resulting customer segments and their business value.

## Dataset

The project uses the **Online Retail II UCI** dataset, containing transaction data from a UK-based online retailer between 2009 and 2011.

**Source:** [Kaggle – Online Retail II UCI](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci)

The original dataset contains over one million transaction records. After data cleaning and customer-level aggregation, **5,878 unique customers** were included in the final RFM analysis.

## Dashboard

![Customer Segmentation Dashboard](customer%20segmentation%20dashboard.png)

## Analysis Process

1. Cleaned and prepared the online retail transaction data using Python.
2. Removed missing customer IDs, duplicate records, returns, and invalid transactions.
3. Aggregated transaction data to customer level.
4. Calculated:
   - **Recency** – how recently a customer purchased.
   - **Frequency** – how often a customer purchased.
   - **Monetary** – total customer spending.
5. Created R, F, and M scores based on customer behaviour.
6. Assigned customers into behavioural segments based on their RFM characteristics.
7. Used SQL to query and analyze the customer segmentation results.
8. Exported the customer-level dataset for visualization in Tableau.
9. Built an interactive Tableau dashboard to analyze customer segments.

## Customer Segments

The analysis groups customers into eight segments:

- Champions
- Loyal Customers
- Potential Loyalists
- New Customers
- At Risk
- At Risk - High Value
- Inactive High Spenders
- Inactive Customers

## Dashboard Features

The Tableau dashboard includes:

- Total Customers
- Total Customer Value
- Average Customer Value
- Number of Customers by Segment
- Customer Value by Segment
- Average Purchase Frequency by Segment
- RFM Score Profile by Segment
- Interactive Segment Filter

## Tools Used

- **Python (Pandas)** – data cleaning, transformation, aggregation, and RFM analysis
- **SQL (SQLite)** – querying and analyzing customer segmentation results
- **Google Colab** – analysis and development environment
- **Tableau** – interactive dashboard development and visualization
- **GitHub** – project documentation and portfolio hosting

## Project Files

- `Customer_Segmentation.ipynb` – Python, SQL, and RFM segmentation analysis
- `customer_segmentation.csv` – processed customer-level dataset
- `Customer_segment_RFM_Analysis.twbx` – packaged Tableau workbook
- `customer segmentation dashboard.png` – dashboard preview

## Key Business Application

RFM segmentation allows businesses to distinguish between high-value, loyal, new, at-risk, and inactive customers. These customer groups can support more targeted marketing, retention, and re-engagement strategies.
