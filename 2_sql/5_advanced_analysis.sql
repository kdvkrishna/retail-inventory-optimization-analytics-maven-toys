-- ADVANCED ANALYSIS --

-- 1. Product Revenue Ranking

SELECT product_name,
SUM(revenue) AS total_revenue,
RANK() OVER( ORDER BY SUM(revenue) DESC ) AS revenue_rank

FROM sales_metrics

GROUP BY product_name;

-- 2. Category Wise Product Ranking

SELECT product_category, product_name,
SUM(revenue) AS revenue,
RANK() OVER( PARTITION BY product_category ORDER BY SUM(revenue) DESC ) AS category_rank

FROM sales_metrics

GROUP BY product_category, product_name;

-- 3. Running Revenue Trend

WITH monthly_sales AS (

SELECT
DATE_TRUNC('month', sale_date) AS month,
SUM(revenue) AS monthly_revenue

FROM sales_metrics

GROUP BY month
)

SELECT
month, monthly_revenue,
SUM(monthly_revenue) OVER(ORDER BY month) AS cumulative_revenue

FROM monthly_sales;

-- 4. Monthly Growth Rate

WITH monthly_sales AS (
SELECT
DATE_TRUNC('month', sale_date) AS month,
SUM(revenue) AS revenue
FROM sales_metrics
GROUP BY month
)

SELECT
month, revenue,
LAG(revenue) OVER(ORDER BY month) AS previous_month,
ROUND(
((revenue - LAG(revenue) OVER(ORDER BY month))/ LAG(revenue) OVER(ORDER BY month))*100,2) AS growth_percent

FROM monthly_sales;

-- 5. Top Stores By Profit Contribution

WITH store_profit AS (
SELECT st.store_name,
SUM(sm.profit) AS total_profit

FROM sales_metrics sm

JOIN stores st
ON sm.store_id = st.store_id

GROUP BY st.store_name
)

SELECT
store_name, total_profit,
ROUND((total_profit * 100.0)/SUM(total_profit) OVER(),2) AS profit_contribution_percent
FROM store_profit
ORDER BY total_profit DESC;


-- 6. ABC Inventory Classification

WITH product_revenue AS (

SELECT product_name, SUM(revenue) AS revenue
FROM sales_metrics
GROUP BY product_name
),

ranked_products AS (

SELECT
product_name, revenue, 
SUM(revenue) OVER(ORDER BY revenue DESC) AS cumulative_revenue,
SUM(revenue) OVER() AS total_revenue
FROM product_revenue
)

SELECT
product_name, revenue,
ROUND((cumulative_revenue / total_revenue) * 100,2) AS cumulative_percent,

CASE
WHEN (cumulative_revenue / total_revenue) <= 0.70 THEN 'A'
WHEN (cumulative_revenue / total_revenue) <= 0.90 THEN 'B'
ELSE 'C'
END AS abc_class

FROM ranked_products;

-- 7. Stockout Risk Analysis

WITH product_sales AS (
SELECT product_id, SUM(units) AS units_sold
FROM sales
GROUP BY product_id
),

inventory_summary AS (

SELECT product_id, SUM(stock_on_hand) AS stock

FROM inventory
GROUP BY product_id
)

SELECT
p.product_name, ps.units_sold,inv.stock,
ROUND(ps.units_sold::numeric / NULLIF(inv.stock,0),2) AS demand_stock_ratio,

CASE
WHEN ps.units_sold::numeric/NULLIF(inv.stock,0) > 40 THEN 'High Risk'
WHEN ps.units_sold::numeric / NULLIF(inv.stock,0) > 20 THEN 'Medium Risk'
ELSE 'Low Risk'
END AS stockout_risk

FROM product_sales ps
JOIN inventory_summary inv ON ps.product_id = inv.product_id
JOIN products p ON ps.product_id = p.product_id
ORDER BY demand_stock_ratio DESC;


-- 8. Best Store in Each City

WITH store_revenue AS (

SELECT st.store_city, st.store_name, SUM(sm.revenue) revenue
FROM sales_metrics sm

JOIN stores st ON sm.store_id = st.store_id

GROUP BY st.store_city, st.store_name
)
SELECT *
FROM (
SELECT *, RANK() OVER(PARTITION BY store_city ORDER BY revenue DESC) city_rank
FROM store_revenue
) t
WHERE city_rank = 1;

-- 9. Revenue Share by Category

SELECT
product_category, SUM(revenue) revenue,
ROUND(SUM(revenue) * 100.0/SUM(SUM(revenue)) OVER(),2) AS revenue_share_percent

FROM sales_metrics
GROUP BY product_category
ORDER BY revenue DESC;