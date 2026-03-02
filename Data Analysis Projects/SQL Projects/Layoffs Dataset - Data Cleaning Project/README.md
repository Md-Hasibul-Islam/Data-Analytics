# 📉 Layoffs Dataset – Data Cleaning Project (MySQL)

## 📌 Project Overview

This project focuses on cleaning and preparing a global layoffs dataset using MySQL.  
The objective was to transform raw, inconsistent data into a structured and analysis-ready format while preserving data integrity.

A staging approach was used to ensure the original raw dataset remained unchanged.

---

## 🛠 Tools Used

- MySQL
- Window Functions
- Common Table Expressions (CTEs)
- Data Type Conversions
- Data Standardization Techniques

---

## 📂 Dataset Description

The dataset contains global layoff records including:

- Company
- Location
- Industry
- Total Laid Off
- Percentage Laid Off
- Date
- Company Stage
- Country
- Funds Raised (Millions)

The data required cleaning due to:
- Duplicate records
- Inconsistent industry naming
- Formatting inconsistencies
- Null and blank values
- Incorrect date formats

---

## ♻️ Data Cleaning Process

The cleaning process followed four structured steps:

---

### 1️⃣ Removing Duplicates

- Created a staging table to preserve raw data.
- Used `ROW_NUMBER()` with `PARTITION BY` to identify duplicate records.
- Deleted duplicate rows where `row_num > 1`.
- Implemented a secondary staging table (`layoffs_staging2`) for controlled duplicate removal.

Key Technique Used:
- Window Functions (`ROW_NUMBER()`)
- CTE-based deletion
- Partitioning across multiple identifying columns

---

### 2️⃣ Standardizing Data

#### Industry Standardization
- Converted blank industry values to NULL.
- Used self-join updates to populate missing industries from matching company records.
- Standardized variations:
  - 'Crypto Currency'
  - 'CryptoCurrency'
  → Unified as 'Crypto'

#### Country Standardization
- Removed trailing periods (e.g., "United States.")
- Used `TRIM()` function to normalize values.

#### Date Formatting
- Converted text dates using `STR_TO_DATE()`
- Modified column data type to `DATE`

---

### 3️⃣ Handling Null Values

- Reviewed null values in:
  - total_laid_off
  - percentage_laid_off
  - funds_raised_millions
- Preserved meaningful NULLs to maintain analytical accuracy.
- Removed records where both `total_laid_off` and `percentage_laid_off` were NULL (non-informative rows).

---

### 4️⃣ Structural Cleanup

- Dropped temporary helper column (`row_num`)
- Removed unnecessary rows with insufficient data
- Ensured proper data types across all relevant columns

---

## ⚙️ Key Cleaning Techniques Demonstrated

- Window Functions (`ROW_NUMBER()`)
- CTE-based record deletion
- Data normalization
- Self-join updates
- Date parsing and conversion
- NULL handling strategy
- Safe staging-table methodology

---

## 🎯 Business Impact

This cleaned dataset enables:

- Accurate trend analysis of global layoffs
- Industry-level comparison
- Time-series analysis
- Funding vs layoff correlation analysis
- Reliable downstream exploratory data analysis (EDA)

---

## 📌 Skills Highlighted

- SQL Data Cleaning
- Data Integrity Management
- Database Structuring
- Analytical Preparation
- Production-Ready Query Writing

---

## 🚀 Project Outcome

Successfully transformed raw layoff records into a clean, standardized, and analysis-ready dataset using structured SQL data cleaning techniques.

The final dataset is now suitable for:

- Exploratory Data Analysis
- Dashboard development
- Trend forecasting
- Business intelligence reporting

---
