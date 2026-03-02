# 🏡 AirBnB Market Analysis: Pricing, Revenue & Geographic Insights (Tableau)

## 🌐 Interactive Dashboard

Explore the live dashboard on Tableau Public:  
🔍 [AirBnB Pricing & Revenue Analysis](https://public.tableau.com/views/AirBnBFullProject_17724000831150/Dashboard1?:language=en-GB&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## 📊 Project Overview

This project analyzes AirBnB listing data to uncover pricing trends, revenue patterns, and geographic insights using Tableau. The objective is to transform raw listing, review, and calendar data into actionable business intelligence to support pricing optimization and market analysis.

---

## 📂 Dataset Structure (Excel – 3 Sheets)

### 1️⃣ Listings

Contains detailed property and host information.

**Key fields include:**
- Listing ID  
- Property Type & Room Type  
- Bedrooms, Bathrooms, Beds  
- Zipcode & Neighbourhood  
- Price, Weekly Price, Monthly Price  
- Cleaning Fee & Security Deposit  
- Availability Metrics  
- Review Scores  
- Host Details (Superhost status, Response rate, etc.)

This sheet serves as the primary dataset for property-level analysis.

---

### 2️⃣ Reviews

Contains customer feedback information.

**Key fields include:**
- listing_id 
- date   
- reviewer_id   
- reviewer_name  
- comments  

Used for review count analysis and listing performance evaluation.

---

### 3️⃣ Calendar

Contains daily availability and pricing information.

**Key fields include:**
- listing_id  
- date  
- available (true/false)  
- price  

Used for revenue calculations and time-series analysis.

---

## 🔗 Data Modeling

Relationships created in Tableau:

- Listings ↔ Calendar (via listing_id)
- Listings ↔ Reviews (via listing_id)

This relational structure enables integrated pricing, availability, and review analysis within a single dashboard.

---

## 📈 Dashboard Components

### ✅ Average Price per Bedroom
- Demonstrates price growth as bedroom count increases.
- Identifies pricing tiers based on property size.

### ✅ Price by Zipcode
- Highlights premium and budget neighborhoods.
- Reveals geographic price segmentation.

### ✅ Revenue Over Time (Yearly Trend)
- Identifies seasonal demand patterns
- Demonstrates overall revenue growth across the year

### ✅ Listing Distribution by Bedrooms
- Shows majority of listings are 1-bedroom properties.
- Larger properties generate higher revenue per listing.

---

## 🎯 Business Impact

This dashboard supports:

- Pricing strategy optimization  
- Investment decision-making  
- Market supply analysis  
- Revenue performance tracking  
- Neighborhood-level opportunity identification  

---

## 🛠 Technical Skills Demonstrated

- Data Cleaning & Preparation  
- Data Modeling in Tableau  
- Calculated Fields  
- Revenue Calculation Logic  
- Time-Series Analysis  
- Geographic Visualization  
- Interactive Dashboard Design  
- Business Insight Extraction  

---

## 🚀 Future Enhancements

- Occupancy Rate Calculation  
- Profit Estimation After Expenses  
- Review Sentiment Analysis  
- Revenue Forecasting  
- Dynamic Pricing Recommendation Model  

---

## 🧠 Tools Used

- Tableau Public 
- Microsoft Excel  

---

## 📌 Project Outcome

Transformed raw AirBnB data into an interactive analytical dashboard that provides pricing intelligence, geographic insights, and revenue performance tracking for data-driven decision-making.

---
