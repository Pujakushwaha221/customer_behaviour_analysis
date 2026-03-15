# Customer Shopping Behavior Analysis
## Overview

This project analyzes customer shopping behavior using transactional purchase data to uncover patterns in customer spending, product preferences, discounts, and subscription behavior. The analysis combines Python for data exploration and cleaning, MySQL for business queries, and Power BI for visualization to transform raw data into actionable insights.

The goal is to demonstrate a complete end-to-end data analytics workflow — from data preparation to business reporting and dashboard development.

## Dataset

The dataset contains customer purchase records from an online retail environment.
### Dataset Summary
 Total Records: 3,900
 Total Columns: 18
 Data Type: Transactional customer data

 #### Key Features
##### Customer information:
         Age
         Gender
         Location
         Subscription Status

##### Purchase details:
        Item Purchased
        Category
        Purchase Amount
        Season
        Size
        Color

##### Customer behavior metrics:
        Discount Applied
        Previous Purchases
        Frequency of Purchases
        Review Rating
        Shipping Type

## Tools and Technologies 

     | Tool                                       | Purpose                        |
| ------------------------------------------ | ------------------------------ |
| Python (Pandas, NumPy, Matplotlib/Seaborn) | Data loading, EDA and cleaning |
| MySQL                                      | Querying business questions    |
| Power BI                                   | Interactive dashboard creation |
| Gamma AI                                   | Presentation creation          |
| Jupyter Notebook                           | Analysis workflow              |


## Project Workflow

### 1. Data Loading 
     a. Loaded the dataset using Python (Pandas).
     b. Inspected structure using:
          df.info()
          df.describe()
          df.head()

### 2. Exploratory Data Analysis (EDA)
    a. Initial exploration to understand:
         Data types
         Missing values
         Distribution of purchase amounts
         Product categories
         Customer demographics

    b. Key techniques used:
        Summary statistics
        Value counts
        Data visualization

### 3. Data Cleaning 
     
