--  INTERMEDIATE ANALYSIS 1 --
-- SALES + REVENUE + TIME ANALYSIS --


-- 1. REVENUE ANALYSIS --

-- Total Revenue

SELECT
ROUND(SUM(revenue),2)
FROM sales_metrics;

-- Total Profit

SELECT
ROUND(SUM(profit),2)
FROM sales_metrics;

-- Revenue by Category

SELECT
product_category,
ROUND(SUM(revenue),2) AS revenue
FROM sales_metrics
GROUP BY product_category
ORDER BY revenue DESC;

-- Profit by Category

SELECT product_category, ROUND(SUM(profit),2) AS profit
FROM sales_metrics
GROUP BY product_category
ORDER BY profit DESC;

-- 2. STORE PERFORMANCE --

-- Revenue By Store

SELECT
st.store_name,
ROUND(SUM(sm.revenue),2) revenue
FROM sales_metrics sm

JOIN stores st
ON sm.store_id = st.store_id

GROUP BY st.store_name
ORDER BY revenue DESC;

-- Revenue By City

SELECT
st.store_city,
ROUND(SUM(sm.revenue),2) revenue
FROM sales_metrics sm

JOIN stores st
ON sm.store_id = st.store_id

GROUP BY st.store_city
ORDER BY revenue DESC;

-- Revenue By Location

SELECT
st.store_location,
ROUND(SUM(sm.revenue),2) revenue,
COUNT(DISTINCT(st.store_id)) AS Number_of_Stores

FROM sales_metrics sm

JOIN stores st
ON sm.store_id = st.store_id

GROUP BY st.store_location
ORDER BY revenue DESC;

-- 3. TIMES SERIES ANALYSIS --

-- Monthly Revenue

SELECT
DATE_TRUNC('month', sale_date) AS month,
ROUND(SUM(revenue),2)
FROM sales_metrics
GROUP BY month
ORDER BY month;


-- Monthly Profit

SELECT
DATE_TRUNC('month', sale_date) AS month,
ROUND(SUM(profit),2)
FROM sales_metrics
GROUP BY month
ORDER BY month;
