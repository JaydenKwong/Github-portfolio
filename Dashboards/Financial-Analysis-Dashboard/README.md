# Financial Analysis Dashboard

## Project Overview

This project analyzes quarterly corporate financial statements to understand how company revenue, expenses, profit, and profitability change over time.

The data was prepared using Python and visualized in Tableau through an interactive dashboard that allows users to select different company symbols and analyze their financial performance.

## Tools Used

- Python (Pandas) – Data cleaning and financial metric calculation
- Tableau – Interactive dashboard and visualization
- Google Colab – Python development environment

## Business Questions

This project aims to answer:

- How has company revenue changed over time?
- How have gross profit, operating income, and net income changed?
- How have operating expenses, R&D, and SG&A expenses changed over time?
- How have gross margin, operating margin, and net profit margin changed?
- How quickly is revenue growing compared with the previous year?
- How does financial performance differ across companies?

## Dashboard

![Financial Analysis Dashboard](Financial%20Analysis%20Dashboard.png)

The dashboard includes:

- Company symbol filter
- Latest available quarter
- Total Revenue
- Net Income
- Net Profit Margin
- Revenue YoY Growth
- Quarterly Revenue Trend
- Quarterly Profit Trend
- Quarterly Expense Trend
- Profit Margin Trend

## Key Insights

Using Apple (AAPL) as an example:

- Revenue shows strong long-term growth with clear quarterly fluctuations.
- Gross profit, operating income, and net income generally increased alongside revenue.
- Operating expenses increased as the company grew, with R&D spending becoming increasingly significant.
- Gross margin remained higher than operating and net profit margins throughout the period.
- In the latest available quarter (2025 Q3), Apple recorded approximately $102.47B in revenue and $27.47B in net income.
- Net profit margin was approximately 26.80%, while Year-over-Year revenue growth was approximately 19.73%.

## Dataset Source

The dataset used for this project is the **Corporate Financial Statements (AlphaVantage)** dataset available on Kaggle.

[Corporate Financial Statements (AlphaVantage) – Kaggle](https://www.kaggle.com/datasets/emranalbiek/companies-financial-income-statements)

The dataset contains annual and quarterly income statement data for publicly traded companies, originally retrieved using the Alpha Vantage API.
