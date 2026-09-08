# Marketing A/B Testing Analysis

## Overview

This project analyzes a marketing A/B test to determine whether showing advertisements improves customer conversion compared with a control group that was shown a Public Service Announcement (PSA).

The analysis compares conversion performance between the AD and PSA groups, tests whether the difference is statistically significant, estimates the business impact of advertising, and explores when advertisement conversion performance is strongest.

## Business Questions

- Does showing advertisements result in a higher conversion rate than showing a PSA?
- How much higher is the conversion rate for the AD group?
- Is the difference between the AD and PSA groups statistically significant?
- What is the estimated additional conversion impact of advertising?
- Which days and hours show the strongest conversion performance among users exposed to advertisements?

## Dataset

**Source:** [Marketing A/B Testing Dataset – Kaggle](https://www.kaggle.com/datasets/faviovaz/marketing-ab-testing/data)

The dataset contains 588,101 users divided into two groups:

- **AD Group:** Users who were shown the advertisement.
- **PSA Group:** Control users who were shown a Public Service Announcement instead of the advertisement.

The dataset includes user conversion status, total advertisement exposure, and the day and hour when each user saw the most advertisements.

## Tools

- Python
- Pandas
- NumPy
- Matplotlib
- Statsmodels
- Google Colab

## Analysis

The analysis included:

- Data cleaning and validation
- Overall and group-level conversion rate analysis
- AD vs PSA conversion comparison
- Absolute conversion difference and relative lift
- Two-proportion Z-test for statistical significance
- 95% confidence interval for conversion impact
- Conversion analysis by day and hour
- Visualization of conversion performance

## Key Findings

- The overall conversion rate was **2.52%**.
- The **AD group achieved a 2.55% conversion rate**, compared with **1.79% for the PSA group**.
- Advertising produced a **0.76 percentage-point higher conversion rate**.
- This represents a **42.46% relative lift** compared with the PSA control group.
- The two-proportion Z-test produced a **Z-statistic of 7.37 and p-value < 0.05**, indicating a statistically significant difference between the groups.
- Advertising was estimated to generate approximately **76 additional conversions per 10,000 users**.
- The 95% confidence interval was approximately **59 to 93 additional conversions per 10,000 users**.
- Among users exposed to advertisements, **Monday recorded the highest conversion rate at 3.32%**.
- The highest hourly AD conversion rate occurred at **4 PM (16:00) at 3.09%**.

## Business Recommendations

- Continue using the advertising campaign because users exposed to advertisements showed a significantly higher conversion rate than the control group.
- Use the estimated **76 additional conversions per 10,000 users** when evaluating whether the additional conversions justify advertising costs.
- Consider testing increased advertising activity around **Monday and higher-performing afternoon/evening hours**.
- Conduct additional controlled experiments on advertisement timing before concluding that specific days or hours directly cause higher conversion rates.
- If advertising cost and revenue-per-conversion data become available, extend the analysis to measure the campaign's financial return and ROI.
