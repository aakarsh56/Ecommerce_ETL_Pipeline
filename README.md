Ecommerce ETL Pipeline: Maven Fuzzy Factory Analysis
📌 Project Overview
This project demonstrates a complete End-to-End ETL (Extract, Transform, Load) Pipeline for an e-commerce platform. I processed raw traffic and sales data to uncover business insights regarding website performance, product conversion rates, and sales growth.

🛠️ Tech Stack
Language: Python (Pandas)

Database: SQL (MySQL/PostgreSQL)

Tools: Jupyter Notebook, Git, GitHub

Data Sources: Flat file CSVs

📂 Dataset Access
Due to GitHub's file size limitations (100MB), the two primary traffic datasets are hosted externally. You can download them here to run the pipeline:

🔗 https://1drv.ms/x/c/9bb74998bfc5b29f/IQCGOPie-HH4S78bNm9YQHK8AQuhEJ1gAdl0dhNUBquel_0?e=Xov3gP

🔗 https://1drv.ms/x/c/9bb74998bfc5b29f/IQBa73XPTcYpSYN7joJCN1dHAWe2TF_TVvWJvYewaXyUK_8?e=f9sFV2

The remaining datasets (orders.csv, products.csv, etc.) are included directly in this repository.

⚙️ ETL Workflow
Extract: Loading large-scale e-commerce datasets (1M+ rows) from CSV.

Transform: Cleaning data, handling nulls, and merging session data with order data to calculate conversion rates.

Load: Exporting structured data into a SQL database for advanced analytical querying.

📈 Key Business Insights
Device Performance: Analyzed the difference between Mobile and Desktop conversion rates to optimize ad spend.

Traffic Attribution: Identified which marketing campaigns (GSearch, BSearch, etc.) drove the highest ROI.

Funnel Analysis: Mapped the customer journey from landing page to thank-you page to find where users drop off.

🚀 How to Run
Clone this repository to your local machine.

Download the large CSVs from the links above and place them in the project folder.

Open Ecommerce_ETL.ipynb and run the cells.

Use Ecommerce_ETL.sql to see the final analytical queries
