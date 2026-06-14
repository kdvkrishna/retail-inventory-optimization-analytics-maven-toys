# Retail Growth & Inventory Optimization Analytics

## Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1)
![PostgreSQL](https://img.shields.io/badge/Database-blue)
![PowerBI](https://img.shields.io/badge/Power_BI-F2C811)
![PowerBI](https://img.shields.io/badge/DAX-KPI_Reporting-green)


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
* Pareto Distribution
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


# Dashboard Overview

The Power BI dashboard consists of five analytical pages.

---

## Page 1 — Executive Overview

Provides a high-level summary of:

* Revenue
* Profit
* Sales
* Profit Margin
* Revenue trends
* Revenue by city
* Revenue by category

### Key Insights

* Revenue concentration by city
* Seasonal sales trends
* Category contribution analysis

## Page 2 — Store Performance Analytics

Analyzes:

* Store Revenue
* Store Profitability
* Revenue Contribution by location type
* Top performing stores
* Store age impact
* Store Distribution among Location in different Cities


### Key Insights

* Downtown stores outperform other locations while airport stores punched above their weight
* Significant revenue variance across cities
* Age of stores have near zero impact on revenue

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
* Certain niche products maintain strong profitability
* Some categories have consistently falling revenue

---

## Page 4 — Inventory & Supply Chain Analytics

Analyzes:

* Inventory levels
* Inventory turnover
* Stockout risk
* Sales vs Inventory
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

* Approximately 40% of products contributed nearly 80% of total revenue.
* Downtown stores produced more overall sales while airport stores generated the highest average revenue and profitability.
* Several high-demand products maintained critically low inventory levels.
* Certain low-performing products remained significantly overstocked.
* Revenue growth demonstrated occasional seasonal spikes.
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
├── presentation_pdf/
└── README.md
```

---

# Dashboard Screenshots

## Executive Overview

<img width="910" height="549" alt="page_1_maven_toys" src="https://github.com/user-attachments/assets/33110573-78bb-4a73-977c-001495208a6c" />

## Store Performance Analytics

<img width="913" height="547" alt="page_2_maven_toys" src="https://github.com/user-attachments/assets/3ee86113-b031-4b61-b67d-503cd0c8d199" />


## Product Analytics

<img width="912" height="547" alt="page_3_maven_toys" src="https://github.com/user-attachments/assets/c390edb2-060a-44f1-89e1-c2e481f8aa50" />


## Inventory & Supply Chain Analytics

<img width="909" height="547" alt="page_4_maven_toys" src="https://github.com/user-attachments/assets/f0a7633c-59c1-43a0-8898-0f134ac0dc1c" />


## Executive Strategy Dashboard

<img width="972" height="569" alt="page_5_maven_toys" src="https://github.com/user-attachments/assets/af93f213-8afc-4665-ad3e-b5cd200d7ec4" />


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

Krishna Devsishu

If you found this project interesting, feel free to connect or provide feedback.
