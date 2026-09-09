# Website Traffic & User Engagement Analysis

## Project Overview

This project analyzes website traffic and user engagement to understand where visitors come from, how they interact with the website, and whether visitor behavior differs across traffic sources.

The data was cleaned and validated using Python before being analyzed and visualized in Tableau. The dashboard examines traffic source distribution, page views, session duration, bounce rate, time on page, and previous visits to identify patterns in website engagement.

## Tools Used

- Python (Pandas) – Data cleaning, validation, and preparation
- Tableau – Data analysis, visualization, and dashboard development
- Google Colab – Python development environment

## Business Questions

The analysis was designed to answer:

- Which traffic sources generate the most website traffic?
- How does average page engagement differ across traffic sources?
- Is longer session duration associated with more page views?
- Is session duration associated with lower bounce rates?
- Do visitors with more previous visits tend to view more pages?
- What is the overall level of website engagement based on page views, session duration, bounce rate, and time on page?

## Dashboard

### Website Traffic & User Engagement Dashboard

![Website Traffic & User Engagement Dashboard](website%20traffic%20analysis.png)

This dashboard analyzes website traffic and visitor behavior using traffic source distribution, average page views, session duration, bounce rate, time on page, and previous visits.

## Key Insights

- Organic was the largest traffic source with 786 records, followed by Paid with 428, Referral with 301, Social with 269, and Direct with 216.
- Average page views were relatively similar across most traffic sources. Organic, Referral, and Direct averaged approximately 5.0 page views, while Social recorded the lowest at approximately 4.7.
- The website recorded an overall average of 4.95 page views, 3.02 session duration, 28.48% bounce rate, and 4.03 time on page.
- Session duration showed little relationship with page views, indicating that visitors who stay longer do not necessarily explore more pages.
- Session duration showed a slight negative relationship with bounce rate, suggesting that longer visits tend to be associated with lower bounce rates, although the relationship is weak.
- Average page views showed an overall positive tendency as previous visits increased, suggesting that frequent returning visitors may demonstrate stronger page engagement.

## Business Recommendations

- Maintain focus on Organic traffic because it generates the largest share of website traffic.
- Review Social traffic performance because it has the lowest average page views among the traffic sources and investigate opportunities to improve visitor engagement.
- Evaluate traffic sources using engagement metrics in addition to traffic volume, as higher traffic volume does not necessarily result in higher page engagement.
- Encourage repeat visits through retention strategies such as relevant content, email communication, or personalized experiences because frequent returning visitors show higher page engagement.
- Investigate ways to improve visitor retention and reduce bounce rates, particularly for shorter sessions.
- Monitor multiple engagement measures together because session duration alone does not indicate how extensively visitors explore the website.

## Dataset Source

The original dataset used for this project is the Website Traffic dataset available on Kaggle. The dataset contains 2,000 records covering website traffic and engagement metrics and was generated for educational purposes.

[Website Traffic – Kaggle](https://www.kaggle.com/datasets/anthonytherrien/website-traffic)
