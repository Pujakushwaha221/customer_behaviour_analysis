# Customer Shopping Behavior Analysis
## Overview
This project analyzes customer shopping behavior using transactional purchase data to uncover patterns in customer spending, product preferences, discounts, and subscription behavior. The analysis combines Python for data exploration and cleaning, MySQL for business queries, and Power BI for visualization to transform raw data into actionable insights.
The goal is to demonstrate a complete end-to-end data analytics workflow — from data preparation to business reporting and dashboard development.

## Dataset
The dataset contains customer purchase records from an online retail environment.
### Dataset Summary
* Total Records: 3,900


* Total Columns: 18


* Data Type: Transactional customer data


### Key Features
* Customer information:

    ** Age


    ** Gender


    ** Location


    ** Subscription Status


* Purchase details:

    ** Item Purchased


   ** Category


   ** Purchase Amount


   ** Season


   ** Size


   ** Color


* Customer behavior metrics:

    ** Discount Applied


    ** Previous Purchases


    ** Frequency of Purchases


    ** Review Rating


    ** Shipping Type



## Project Workflow
### 1. Data Loading
* Loaded the dataset using Python (Pandas).


* Inspected structure using:


 * df.info()


 * df.describe()


 * df.head()



### 2. Exploratory Data Analysis (EDA)
* Initial exploration to understand:
  * Data types


  * Missing values


  * Distribution of purchase amounts


  * Product categories


  * Customer demographics


* Key techniques used:
   * Summary statistics


   * Value counts


  * Data visualization



### 3. Data Cleaning
* Data preprocessing steps included:
* Handling missing values in the Review Rating column


* Renaming columns to snake_case format


* Creating new features such as:


   * age_group


   * purchase_frequency_days


   * Checking redundant columns and removing unnecessary ones


   * Ensuring consistency of categorical values



### 4. Database Integration (MySQL)
The cleaned dataset was exported from Python and loaded into MySQL for structured querying.

Business questions were answered using SQL queries such as:

* Revenue by gender


* High-spending customers using discounts


* Top rated products


* Shipping type comparison


* Subscriber vs non-subscriber analysis


* Discount-dependent products


* Customer segmentation (New / Returning / Loyal)


* Top products per category


* Revenue by age group



## Power BI Dashboard
An interactive Power BI dashboard was built to visualize key insights.

Dashboard highlights include:

* Revenue distribution by gender


* Top rated products


* Discount usage trends


* Customer segmentation


* Revenue contribution by age group


* Shipping type comparison


The dashboard helps stakeholders quickly understand customer behavior and purchasing trends.

## Key Results & Insights

Major findings from the analysis include:
* Male customers generated higher total revenue compared to female customers.


* A large share of customers fall into the loyal customer segment.


* Certain products such as gloves, sandals, and boots received the highest ratings.


* Express shipping users show slightly higher average purchase values.


* Several products rely heavily on discount strategies to drive sales.



## Business Recommendations

Based on the analysis:

* Introduce loyalty programs to reward frequent buyers.


* Promote subscription benefits to increase recurring purchases.


* Optimize discount strategies to balance sales growth and profit margins.


* Focus marketing campaigns on high-revenue customer segments.



## How to Run the Project
  Clone the repository


git clone https://github.com/your-username/customer-shopping-behavior-analysis.git
Install required Python libraries


pip install pandas numpy matplotlib seaborn mysql-connector-python
Run the Python analysis notebook/script


* Perform EDA


* Clean the dataset


* Export cleaned data


* Load cleaned data into MySQL


* Run SQL queries to answer business questions


* Open the Power BI dashboard file (.pbix) to explore visual insights.



## Project Learnings
Through this project, the following skills were applied and strengthened:

* Data Cleaning and Preprocessing using Python


* Exploratory Data Analysis (EDA)


* Writing business-focused SQL queries


* Designing interactive dashboards in Power BI


* Translating data insights into business recommendations


* Communicating findings through reports and presentations

     
