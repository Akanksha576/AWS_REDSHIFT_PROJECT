
An AWS S3 → Redshift → SQL Project

Overview: This project explores how everyday digital habits—such as screen time, stress level, sleep quality, and time spent away from social media—relate to overall mental well-being.
I built a small end-to-end data pipeline using Amazon S3 and Amazon Redshift Serverless, cleaned and transformed the data using SQL, and prepared a structured fact table for analysis.
This project helped me practice real data engineering concepts with a practical dataset.

Technologies:Amazon S3 – raw data storage
Amazon Redshift Serverless – data warehouse for transformations
SQL – data cleaning, casting, and analytical queries
AWS IAM – secure data access for S3 → Redshift

 Project Workflow: Here’s the data flow I implemented:
CSV File → Amazon S3 → Redshift (Raw Table) → SQL Cleaning & Casting → Final Fact Table → Analysis

Raw Table: Stores the original CSV exactly as uploaded.
Useful for debugging and auditing.
Clean Fact Table: Contains typed and cleaned data ready for reporting and analysis.

 Data Cleaning & Transformation: The raw CSV had mixed data types, extra characters, and inconsistent formatting.
I cleaned the dataset by:
Removing non-numeric characters from numeric columns
Casting values into correct data types
Handling empty or invalid values with NULLIF
Preparing a clean fact table suitable for analytics
This approach mirrors a realistic ETL workflow used in cloud data engineering projects.
