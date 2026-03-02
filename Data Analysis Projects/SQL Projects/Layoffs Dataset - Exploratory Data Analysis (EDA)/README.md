# 📊 Layoffs Dataset – Exploratory Data Analysis (EDA) using MySQL

## 📌 Project Overview

This project performs Exploratory Data Analysis (EDA) on a cleaned global layoffs dataset using MySQL.

The objective is to uncover trends, patterns, outliers, and key insights related to:

- Company-level layoffs
- Industry impact
- Geographic distribution
- Yearly trends
- Monthly rolling totals
- Company rankings by year

The dataset used in this analysis was first cleaned and standardized in a separate SQL Data Cleaning project, which is [Layoffs Dataset - Data Cleaning Project using MySQL](https://github.com/Md-Hasibul-Islam/Data-Analytics/tree/main/Data%20Analysis%20Projects/SQL%20Projects/Layoffs%20Dataset%20-%20Data%20Cleaning%20Project). 

---

## 🛠 Tools & Techniques Used

- MySQL
- Aggregations (SUM, AVG, MAX, MIN)
- GROUP BY
- Window Functions
- CTEs (Common Table Expressions)
- DENSE_RANK()
- Rolling Totals
- Date Functions (YEAR, SUBSTRING)

---

## 🔎 Key Analysis Performed

### 1️⃣ Identifying Maximum Layoffs

- Maximum total laid off in a single record
- Maximum and minimum layoff percentages
- Companies with 100% layoffs (percentage_laid_off = 1)

Insight:
Many 100% layoffs occurred in startups, indicating company shutdowns.

---

### 2️⃣ Company-Level Analysis

- Top companies by single-day layoffs
- Companies with highest total layoffs across all years
- Company layoff trends grouped by year

Used:
- SUM(total_laid_off)
- GROUP BY company
- YEAR(date)

---

### 3️⃣ Geographic Analysis

- Total layoffs by:
  - Location
  - Country

Insight:
Certain countries and tech hubs experienced significantly higher layoff volumes.

---

### 4️⃣ Industry & Company Stage Analysis

- Total layoffs by industry
- Total layoffs by company funding stage

Insight:
Some industries were disproportionately affected during downturn periods.

---

### 5️⃣ Time-Series Analysis

#### Yearly Layoff Trends
- Total layoffs per year using YEAR(date)

#### Monthly Trends
- Aggregated layoffs by month using:
  - SUBSTRING(date, 1, 7)

---

### 6️⃣ Rolling Total Analysis

Calculated cumulative layoffs over time using:

```
SUM(total_off) OVER (ORDER BY month)
```

This shows how layoffs accumulated month-over-month.

---

### 7️⃣ Top Companies Per Year (Ranking)

Used CTE + DENSE_RANK() to determine:

- Top 5 companies with highest layoffs per year

Example Logic:

```
DENSE_RANK() OVER (PARTITION BY year ORDER BY total_laid_off DESC)
```

This identifies leading companies contributing to layoffs each year.

---

## 📈 Key Insights

- Several companies experienced complete shutdowns (100% layoffs).
- Layoffs peaked during specific economic downturn years.
- Tech-heavy industries were among the most affected.
- Rolling totals reveal rapid acceleration during certain months.
- A small number of companies contributed disproportionately to annual totals.

---

## 🎯 Business Impact

This analysis enables:

- Economic trend monitoring
- Industry risk assessment
- Investment risk evaluation
- Workforce trend forecasting
- Macroeconomic impact analysis

---

## 📌 Skills Demonstrated

- Advanced SQL Aggregations
- Window Functions
- CTE-based Analysis
- Time-Series Computation
- Ranking Analysis
- Data Exploration Techniques
- Analytical Thinking

---

## 🚀 Project Outcome

Successfully transformed a cleaned layoffs dataset into meaningful analytical insights using SQL-based exploratory data analysis techniques.

This project demonstrates practical SQL analytics techniques that can support real-world business reporting and decision-making initiatives.

---
