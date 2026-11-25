# SaaS Revenue & Cohort Retention Dashboard

## Repository Navigation
* **Data:** Access the raw dataset files used for this project.
* **Queries:** Browse some saved SQL queries and scripts used for data cleaning and transformation (note that core logic and measures are also embedded directly within the Power BI file).
* **Power BI Dashboard:** Download the `.pbix` file to explore the fully interactive data model, measures, and cohort retention matrix.


## Overview 
An end-to-end data analytics and business intelligence project that transforms raw subscription data into an interactive executive dashboard. This project investigates historical performance, customer behavior patterns, and future revenue trajectories using a structured data pipeline.

* **Data Integration & Storage (SQL Server Management Studio):** Combined and managed multiple raw data tables directly on the server to establish a unified relational database.
* **Data Processing & Querying:** Developed and optimized SQL queries on the combined tables to clean, transform, and structure the dataset for analysis.
* **Business Intelligence & Visualization (Power BI):** Connected the processed data model to Power BI to design an interactive dashboard tracking key SaaS performance indicators—including Monthly Recurring Revenue (MRR), ARPU, Churn Rate, and a 34-month customer cohort retention matrix.

---

## Project Objectives & Storytelling
This project was built to explore a Kaggle subscription service dataset, uncovering past trends and projecting future growth to help inform data-driven business decisions.

---

## 1. SSMS Initial Data Cleaning
The workflow began by importing raw `.csv` files into an SSMS database:

<p align="center">
  <img width="308" height="255" alt="Database Upload" src="https://github.com/user-attachments/assets/db594500-cf02-4c93-9a2c-59f5ad2d6f01" />
</p>

As exploratory queries were run, a systematic cleaning process was executed—including renaming columns, dropping redundant tables, and refining structures:

<p align="center">
  <img width="1126" height="426" alt="SQL Cleaning Query" src="https://github.com/user-attachments/assets/036168f1-bcd1-4d3b-816f-46e5dd7e5d9e" />
</p>

Finally, table joins and constraints were applied to produce a clean, unified master table ready for analysis.

---

## 2. Power BI Analytics & Modeling
With the relational schema established in SQL, the data model was connected to Power BI:

<p align="center">
  <img width="231" height="669" alt="Power BI Schema" src="https://github.com/user-attachments/assets/06e35bd9-b250-4215-82d7-be1a2a6f8c9b" />
</p>

### Key Performance Indicators (KPIs)
Custom DAX measures and SQL aggregate functions (`SUM`, `AVG`, `COUNT`) were built to track Monthly Recurring Revenue (MRR), churn rate (subscription cancellations), and Average Revenue Per User (ARPU), displayed via KPI cards and line charts:

<p align="center">
  <img width="375" height="321" alt="KPI Cards and Trendline" src="https://github.com/user-attachments/assets/87f61fa4-30ed-49cd-86fc-699f2a930127" />
</p>

* **Initial Insight:** The subscription model shows steady, near-linear growth year-over-year, with only a slight leveling off in its upward trajectory over time.

### Revenue Breakdown by Plan & Billing Cycle
To evaluate where revenue is growing versus where it stalls, a column chart was built comparing subscription tiers (excluding free tiers that yield no profit):

<p align="center">
  <img width="596" height="323" alt="Revenue Breakdown Chart" src="https://github.com/user-attachments/assets/992e608d-c645-419e-a82a-0b3fe9ea64f4" />
</p>

* **Observations:** 
  * Premium and Pro subscriptions generate comparable, strong revenue yields.
  * Basic subscriptions sit on the lower end of the revenue yield.
  * Annual subscriptions represent a very small share of total revenue compared to monthly plans.

---

## 3. Strategic Recommendations & Next Steps
With an overall churn rate sitting at **39.03%**, how should the business respond to these findings?

* **Retain Annual Options:** Even though annual subscriptions yield minimal upfront volume, they shouldn't be completely eliminated. Instead, they provide a stable baseline for long-term customer lock-in and should be optimized rather than removed.

## 4. Cohort Modeling & Future Trajectory
The initial approach to forecasting future customer behavior involved designing a discrete dynamical system using **Markov chains**—a probability-based matrix method used to predict likely future states and identify ways to optimize current retention.

Building this matrix required creating custom calculated columns and DAX measures to map customer cohorts (`Cohort_Month`) against tenure duration (`0` to `34` months). Because newer cohorts have not existed long enough to reach later tenure milestones, the resulting matrix naturally forms a lower-left staircase pattern (leaving an empty upper-right triangle):

<p align="center">
  <img width="1147" height="313" alt="Cohort Retention Matrix" src="https://github.com/user-attachments/assets/28e2acbc-d47c-4f9f-885d-3619089e26a4" />
</p>

### Key Takeaways & Recommendations
Rather than showing typical subscription decay, the matrix reveals that customer activity consistently **expands** as tenure increases, peaking around **Months 20 to 24**. With a few targeted adjustments, overall profitability can be maximized:

* **Focus on Expansion:** Because cohort activity grows steadily over time, marketing and product efforts should prioritize mid-tenure engagement to upgrade users from **Basic** tiers into higher-yielding **Pro** and **Premium** plans.
* **Optimize Annual Plans:** While annual subscriptions represent only **3.53%** of total MRR, offering targeted renewal incentives or tier discounts can help lock in long-term users and offset the **39.03%** churn rate.
* **Target Early-Tenure Drop-offs:** Monitoring cohort behavior during the first 6 months ensures new sign-ups reach the high-engagement maturity window seen in older cohorts.

---

## Conclusion
By combining relational data modeling in SQL Server Management Studio with interactive cohort analysis in Power BI, this project transforms raw subscription logs into actionable business intelligence. The findings demonstrate that while overall revenue is growing steadily, long-term profitability depends on nurturing mid-tenure customer expansion and reducing early subscription churn.

## Dataset used 

Ansari, M. (2026, March 7). Synthetic SaaS subscription dataset. Kaggledatasets. https://www.kaggle.com/datasets/ansarimuzammil/synthetic-saas-subscription-dataset

