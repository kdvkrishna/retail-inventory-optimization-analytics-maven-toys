# Retail Growth & Inventory Optimization Analytics

An end-to-end Retail, Inventory, and Supply Chain Analytics project built using PostgreSQL and Power BI to analyze 800K+ retail transactions, identify revenue drivers, optimize inventory allocation, and generate actionable business insights for operational decision-making.

---

# Project Overview

Maven Toys, a multi-city retail chain operating across Mexico, faced challenges related to:

* Uneven store performance
* Inventory inefficiencies
* Stockout risks
* Overstocked products
* Lack of centralized business visibility
* Inconsistent product profitability

This project combines:

* Retail Analytics
* Inventory Analytics
* Supply Chain Analytics
* Business Intelligence

to develop a data-driven decision-support solution for improving operational efficiency and retail growth.

The project leverages:

* PostgreSQL for advanced SQL analytics
* Power BI for dashboarding and visualization
* DAX for KPI and business metric calculations

---

# Business Problem

Retail businesses often struggle with balancing inventory levels against fluctuating customer demand.

Maven Toys needed to:

* Identify high-performing stores and products
* Optimize inventory allocation
* Reduce stockout risk
* Improve inventory turnover
* Detect underperforming products
* Analyze regional sales trends
* Build executive-level reporting dashboards

The objective of this project was to analyze historical sales and inventory data to generate actionable insights and strategic recommendations for retail growth and supply chain optimization.

---

# Dataset Information

Dataset Source:
Maven Analytics — Mexico Toy Sales Dataset

The project uses four primary datasets:

## Sales Table (~800K Rows)

Contains:

* Sale ID
* Date
* Store ID
* Product ID
* Units Sold

## Products Table

Contains:

* Product Name
* Product Category
* Product Cost
* Product Price

## Stores Table

Contains:

* Store Name
* Store City
* Store Location Type
* Store Open Date

## Inventory Table

Contains:

* Store ID
* Product ID
* Stock on Hand

---

# Tools & Technologies Used

## Database & Querying

* PostgreSQL
* SQL

## SQL Techniques

* Joins
* Aggregations
* Common Table Expressions (CTEs)
* Window Functions
* Ranking Functions
* Running Totals
* Revenue Growth Analysis

## Business Intelligence

* Power BI
* Power Query
* DAX

## Analytics Areas

* Retail Analytics
* Inventory Analytics
* Supply Chain Analytics
* Profitability Analysis
* Operational Analytics

---

# Project Workflow

```text
CSV Files
→ PostgreSQL Database
→ SQL Cleaning & Analytics
→ Data Modeling
→ Power BI
→ DAX Measures
→ Interactive Dashboards
→ Strategic Business Recommendations
```

---

# Key Analytics Performed

## Revenue Analysis

* Revenue trends over time
* Revenue by city
* Revenue by category
* Revenue contribution analysis

## Store Performance Analysis

* Top and bottom performing stores
* Revenue by store location type
* Profitability by store
* Store maturity analysis

## Product Analytics

* Product profitability analysis
* Revenue vs profit analysis
* Margin analysis
* Product category performance

## Inventory & Supply Chain Analytics

* Inventory turnover analysis
* Demand-to-stock ratio
* Stockout risk analysis
* Inventory allocation analysis
* Overstock identification

## Strategic Analytics

* ABC inventory classification
* Pareto analysis
* Executive optimization recommendations

---

# Dashboard Overview

The Power BI dashboard consists of five analytical pages.

---

## Page 1 — Executive Overview

Provides a high-level summary of:

* Revenue
* Profit
* Profit Margin
* Revenue trends
* Revenue by city
* Revenue by category

### Key Insights

* Revenue concentration by city
* Seasonal sales trends
* Category contribution analysis

---

## Page 2 — Store Performance Analytics

Analyzes:

* Store revenue
* Store profitability
* Revenue by location type
* Top & bottom stores
* Store age impact

### Key Insights

* Downtown stores outperform other locations
* Significant revenue variance across cities
* Older stores show stronger customer retention

---

## Page 3 — Product & Profitability Analytics

Analyzes:

* Product performance
* Profitability
* Product margins
* Product demand
* Revenue vs Profit relationships

### Key Insights

* High-selling products do not always generate high profit
* Margin performance varies significantly across categories
* Certain niche products maintain strong profitability

---

## Page 4 — Inventory & Supply Chain Analytics

Analyzes:

* Inventory levels
* Inventory turnover
* Stockout risk
* Demand vs Inventory
* Inventory distribution

### Key Insights

* Several high-demand products face stockout risk
* Overstock exists in low-performing inventory segments
* Inventory allocation differs significantly across stores

---

## Page 5 — Executive Strategy & Optimization

Provides:

* ABC classification
* Pareto analysis
* Strategic inventory recommendations
* Operational optimization insights

### Key Insights

* A small percentage of products generate the majority of revenue
* High-priority products require tighter inventory management
* Inventory optimization opportunities exist within Class C products

---

# Key KPIs & Metrics

The project includes advanced business metrics such as:

* Total Revenue
* Total Profit
* Profit Margin %
* Inventory Turnover
* Demand-to-Stock Ratio
* Stock Coverage Days
* Revenue Contribution %
* Product Margin %
* ABC Product Classification

---

# Major Business Insights

* Approximately XX% of products contributed nearly XX% of total revenue.
* Downtown stores generated the highest average revenue and profitability.
* Several high-demand products maintained critically low inventory levels.
* Certain low-performing products remained significantly overstocked.
* Revenue growth demonstrated seasonal spikes during holiday periods.
* Inventory turnover varied substantially across product categories.

---

# Strategic Recommendations

## Increase Inventory for High-Demand Products

Prioritize replenishment for products with:

* high demand
* strong turnover
* elevated stockout risk

## Reduce Excess Inventory

Optimize inventory allocation for:

* low-performing products
* low-turnover inventory
* low-contribution categories

## Implement Regional Inventory Planning

Adopt city-specific inventory allocation strategies based on local demand patterns.

## Prioritize Class A Products

Allocate greater operational focus toward:

* high-revenue products
* high-margin products
* high-turnover products

## Improve Demand Forecasting

Leverage historical sales trends and seasonality to improve future procurement planning.

---

# Advanced Features Implemented

* Advanced SQL analytics
* Window functions
* CTE-based analysis
* Interactive Power BI dashboards
* Dynamic DAX measures
* Executive KPI cards
* Inventory optimization analytics
* Supply chain risk analysis
* ABC inventory classification
* Pareto analysis

---

# Repository Structure

```text
Retail-Inventory-Optimization-Analytics/
│
├── data/
├── sql/
├── powerbi/
├── dashboard_screenshots/
├── report/
├── presentation/
└── README.md
```

---

# Dashboard Screenshots

## Executive Overview

(Add screenshot here)

## Store Performance Analytics

(Add screenshot here)

## Product Analytics

(Add screenshot here)

## Inventory & Supply Chain Analytics

(Add screenshot here)

## Executive Strategy Dashboard

(Add screenshot here)

---

# Future Improvements

Potential future enhancements include:

* Demand forecasting using Machine Learning
* Automated inventory replenishment models
* Customer segmentation analysis
* Recommendation systems
* Geographic sales optimization
* Real-time inventory monitoring
* Predictive stockout modeling
* Dynamic pricing optimization

---

# Conclusion

This project demonstrates how data analytics and business intelligence can be used to solve real-world retail and supply chain challenges.

By integrating:

* SQL analytics
* Inventory optimization
* Power BI dashboarding
* Strategic business analysis

the project delivers a scalable framework for improving operational efficiency, inventory utilization, and retail decision-making.

---

# Author

Krishna Vajpayee

If you found this project interesting, feel free to connect or provide feedback.
