# SaaS Revenue & Cohort Retention Dashboard

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
* **Focus on Expansion:** Because cohort retention and activity expand over time (visible in the 34-month cohort matrix), marketing efforts should focus on driving mid-tenure engagement to push users from Basic tiers into Pro and Premium plans.
