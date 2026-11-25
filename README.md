# SaaS_Analytics

## Overview 
- Data Integration & Storage (SQL Server Management Studio): Combined and managed multiple raw data tables directly on the server to establish a unified relational database.

- Data Processing & Querying: Developed and optimized SQL queries on the combined tables to clean, transform, and structure the dataset for analysis.

- Business Intelligence & Visualization (Power BI): Connected the processed data model to Power BI to design an interactive dashboard tracking key SaaS performance indicators—including Monthly Recurring Revenue (MRR), ARPU, Churn Rate, and a 34-month customer cohort retention matrix.

This results in an end-to-end Power BI SaaS analytics dashboard tracking Monthly Recurring Revenue (MRR), ARPU, Churn Rate, and 34-month customer cohort retention and expansion trends. As shown below: 

<img width="1341" height="659" alt="image" src="https://github.com/user-attachments/assets/0e73c79d-7781-449e-8f3c-45283edf2585" />

##The why?
This project was made with the intent of telling a story investigating and understanding a Kaggle data set specfically a subscription servicvve and understand what is happened already in the past and what is likly to happen in the future and how to adapt to the data we have access too. 

##SSMS Initial cleaning process

This process invovled going through and opening the .csv files in an SSMS data base first the databases were uploaded:
<img width="308" height="255" alt="image" src="https://github.com/user-attachments/assets/db594500-cf02-4c93-9a2c-59f5ad2d6f01" />
Then as queryes were ran to investigate the database a series of renaming and deleting of cols and tables to clean the data set was done such as the following example below 

<img width="1126" height="426" alt="image" src="https://github.com/user-attachments/assets/036168f1-bcd1-4d3b-816f-46e5dd7e5d9e" />

after which key constraints or combined query join methods were used to create a full table for analasis 

##Power BI stage

Now that a table containing all the inforamtion excists in a specific schema 
<img width="231" height="669" alt="image" src="https://github.com/user-attachments/assets/06e35bd9-b250-4215-82d7-be1a2a6f8c9b" />
Now information can be drawn and the findings and goals if this personal project can be found 

First new measures were amde and put onto cards specfically monthly revenue, churn rates (cancelation of subscription renewals) and return rate per user these measure were made through selective queries using sum,avg ,count and other aggregate sql queries on the data base and then shown and inputed through cards and a line grapth as shown below :
<img width="375" height="321" alt="image" src="https://github.com/user-attachments/assets/87f61fa4-30ed-49cd-86fc-699f2a930127" />

This intimal information presented highlights how the subscription model has grown on a semi linear path year by year with only a small decrease in upwards projectory later on. 

Now that this data can be investigated an it can be seen that the profit is increasing the question now that remains is where is the profit increasing and where is the profit stalling  

First a col chart was built to compare diffrent types of profits as free subscription yeilds no profit it was no inheritly put onto this grapth this resulted in the folllowing image
<img width="596" height="323" alt="image" src="https://github.com/user-attachments/assets/992e608d-c645-419e-a82a-0b3fe9ea64f4" />


This reuslt highlgihts that practically no profit from any of the subscription levels being sold in annual subscription matrics while the premium and propbased subscriptions yeild similar profits while the basic yeilds are on the lower end what can be iterpreted from this information is that : IDK

What should be done because of this inforamtion well as churn rates calcualted sit roughly at 39.03% this means that though annual profits are minimal these serviices should not be removed all togther isntead IDK 

