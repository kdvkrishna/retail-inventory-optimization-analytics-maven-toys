-- INTERMEDIATE ANALYSIS 2
-- STOCK + INVENTORY ANALYSIS

-- 1. DEMAND ANALYSIS

-- Best Selling Products

SELECT
product_name,
SUM(units) units_sold
FROM sales_metrics
GROUP BY product_name
ORDER BY units_sold DESC;

-- Category Demand

SELECT
product_category,
SUM(units) units_sold
FROM sales_metrics
GROUP BY product_category
ORDER BY units_sold DESC;

-- 2. INVENTORY ANALYSIS

-- Inventory Value

SELECT
SUM(i.stock_on_hand * p.product_cost)
AS inventory_value
FROM inventory i

JOIN products p
ON i.product_id = p.product_id;

-- Current Inventory By Category

SELECT
p.product_category,
SUM(i.stock_on_hand) AS stock
FROM inventory i

JOIN products p
ON i.product_id = p.product_id

GROUP BY p.product_category
ORDER BY stock DESC;

-- 3. STOCK MOVEMENT ANALYSIS

-- A View for Product Sales

CREATE VIEW product_demand AS

SELECT
product_id,
SUM(units) units_sold
FROM sales
GROUP BY product_id;

-- Stockout Risk

SELECT p.product_name, pd.units_sold,
SUM(i.stock_on_hand) AS stock,
ROUND(pd.units_sold::numeric / NULLIF(SUM(i.stock_on_hand),0),2) AS demand_stock_ratio
FROM product_demand pd

JOIN inventory i
ON pd.product_id = i.product_id

JOIN products p
ON pd.product_id = p.product_id

GROUP BY p.product_name, pd.units_sold
ORDER BY demand_stock_ratio DESC;

