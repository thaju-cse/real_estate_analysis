# 🏢 Real Estate Space Utilization & Revenue Analysis

Delhi | Mumbai | Pune

--- 

## 📌 Project Overview

This project analyzes real estate rental listings across major Indian metro cities to understand pricing trends, space utilization, and revenue efficiency.
The goal is to support data-driven decisions related to pricing strategy, location selection, and space optimization for a space-providing company.

---

## 🎯Business Objective

A real estate / space-providing company wants to:

Compare rental performance across cities

Identify high-value locations and space sizes

Evaluate pricing efficiency (price per square foot)

Understand the impact of furnishing and negotiation on rent

---

## 🧰 Tools & Technologies Used

Python (Pandas, Matplotlib, Seaborn)

SQL (MySQL)

Power BI Desktop

CSV Data Files

Generative AI

Internet Search Engines

---

## 📂 Dataset Description
These datasets are downloaded form Kaggle website.
### The project uses three real estate datasets:

1. Indian_housing_Delhi_data.csv
2. Indian_housing_Mumbai_data.csv
3. Indian_housing_Pune_data.csv

### Each dataset contains rental listing information such as:

- City & location
- Property size (sq ft)
- Monthly rent
- Furnishing status
- Negotiation availability
- Property type

---

## 🏗️ Project Structure
```
real_estate_analysis/
│
├── data/
│   ├── Indian_housing_Delhi_data.csv
│   ├── Indian_housing_Mumbai_data.csv
│   └── Indian_housing_Pune_data.csv
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   └── 02_eda_analysis.ipynb
│
├── sql/
│   ├── schema.sql
│   └── analysis_queries.sql
│
├── dashboard/
│   └── Real_Estate_Analytics_Dashboard.pbix
│
├── screenshots/
│
└── README.md
```

---

## 🔄 Step-by-Step Project Workflow
### 🔹 Step 1: Data Loading & Consolidation
- Loaded all three city datasets using Python
- Added a city column for consistency
- Combined datasets into a single master dataframe
- Outcome: Unified dataset with ~15,000 rental listings.

### 🔹 Step 2: Data Cleaning & Preparation

Performed essential cleaning to handle real-world data issues:
- Removed text like "sq ft" and commas from house_size
- Converted house_size and price to numeric values
- Handled missing values (balconies, negotiable flag)
- Removed irrelevant columns
- Removed extreme outliers using IQR method
New Features Created:
- price_per_sqft
- size_bucket (Small / Medium / Large)
- property_id (unique identifier)

### 🔹 Step 3: SQL Database Setup

- Imported cleaned CSV into MySQL
- Defined correct data types for all columns
- Added a primary key (property_id)
- Created indexes on frequently queried fields (city, location)
- Removed unused columns from the database
- Purpose: Enable fast, reliable analytical queries.

### 🔹 Step 4: Business Questions Answered Using SQL

Key SQL analyses included:
- Average rent by city
- Price per square foot by city
- Top 10 premium locations
- Performance by space size category
- Impact of furnishing on rent
- Negotiable vs non-negotiable pricing comparison
- These queries simulate real business reporting.

### 🔹 Step 5: Exploratory Data Analysis (EDA)

Performed EDA using Python to uncover trends and patterns:

Rent comparison across cities

Size vs price relationship

Space size category performance

Furnishing impact on pricing

Location-level price efficiency analysis

Each visualization was paired with a clear business insight.

### 🔹 Step 6: Power BI Dashboard Development

Built an interactive Power BI dashboard with:
- KPI Section
- Total Listings
- Average Rent
- Average Price per Sq Ft
- Best Performing City
- Best Space Size Category
- Visual Analysis
- Average rent by city
- Price per square foot by city
- Size bucket performance
- Furnishing impact on rent
- Top 10 premium locations table
- Interactivity
- Slicers for City, Size Category, and Furnishing Status
#### Sample Visualization 

![Visualization]([https://github.com/thaju-cse/real_estate_analysis/blob/master/dashboard/screenshots/Visualization_1.png]).

---

## 📊 Key Insights

- Mumbai has the highest average rent but high price variability
- Pune offers more stable pricing efficiency
- Medium-sized properties provide the best revenue balance
- Furnished properties command a clear rental premium
- Certain locations outperform entire cities in price per sq ft

---

## 🧠 Business Impact

This analysis helps a real estate company to:
- Optimize pricing strategies
- Identify high-ROI locations
- Decide ideal space sizes to invest in
- Improve revenue through furnishing decisions

---

## 🚀 Future Enhancements

- Automate data ingestion using ETL pipelines
- Add time-based trend analysis
- Forecast rental prices by location
- Integrate additional metro cities

---

## Key Insights that I understood:

- Mumbai leads in absolute rental revenue
- Pune offers better price stability
- Medium-sized properties provide best ROI
- Furnished properties increase revenue
- Location plays a stronger role than size

---

## About Me
Hi there! I am Shaik Thajuddhin, I am a Data Enthusiast and passionate learner to learn and Grow.

Thank You..

From 
**Shaik Thajuddhin.**
