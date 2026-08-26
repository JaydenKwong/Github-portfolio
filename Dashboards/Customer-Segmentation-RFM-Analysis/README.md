# Customer Segmentation & RFM Analysis Dashboard

## Project Overview

This project analyzes online retail transaction data to understand customer purchasing behaviour and segment customers using **RFM (Recency, Frequency, Monetary) analysis**.

Python was used for data preparation, customer-level aggregation, RFM scoring, and customer segmentation. Tableau was then used to build an interactive dashboard for exploring the resulting customer segments and their business value.

## Dashboard

![Customer Segmentation Dashboard](customer-segmentation-dashboard.png)

## Analysis Process

1. Cleaned and prepared the online retail transaction data using Python.
2. Aggregated transaction data to customer level.
3. Calculated:
   - **Recency** – how recently a customer purchased.
   - **Frequency** – how often a customer purchased.
   - **Monetary** – total customer spending.
4. Created R, F, and M scores.
5. Assigned customers into behavioural segments based on their RFM characteristics.
6. Exported the customer-level dataset for visualization in Tableau.
7. Built an interactive Tableau dashboard to analyze customer segments.

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

- **Python** – data cleaning, transformation and RFM analysis
- **Pandas** – customer-level aggregation and feature creation
- **Jupyter Notebook** – analysis workflow
- **Tableau** – dashboard development and visualization
- **GitHub** – project documentation and portfolio hosting

## Project Files

- `Customer_Segmentation.ipynb` – Python analysis and RFM segmentation
- `customer_segmentation.csv` – processed customer-level dataset
- `Customer_segment_RFM_Analysis.twbx` – packaged Tableau workbook
- `customer-segmentation-dashboard.png` – dashboard preview

## Key Business Application

RFM segmentation allows businesses to distinguish between high-value, loyal, new, at-risk, and inactive customers. These groups can support more targeted customer retention, re-engagement and marketing strategies.
