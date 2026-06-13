-- PRELIMINARY ANALYSIS --

-- 1. BUSINESS UNDERSTANDING --

-- How Many Cities?
SELECT COUNT(DISTINCT store_city)
FROM stores;

-- Which Cities?
SELECT DISTINCT store_city
FROM stores
ORDER BY store_city;

-- Store Distribution

SELECT store_city, COUNT(*) AS stores
FROM stores
GROUP BY store_city
ORDER BY stores DESC;

-- Store Types

SELECT
store_location,
COUNT(*)
FROM stores
GROUP BY store_location;

-- 2. PRODUCT UNDERSTANDING --

-- Products per Category

SELECT
product_category,
COUNT(*) AS products
FROM products
GROUP BY product_category
ORDER BY products DESC;

-- Average Price Per Category

SELECT
product_category,
ROUND(AVG(product_price),2)
FROM products
GROUP BY product_category;

-- Highest Margin Products

SELECT
product_name, product_category, product_price, product_cost,
(product_price - product_cost) AS margin
FROM products
ORDER BY margin DESC;

-- 3. BUSINESS METRICS --

CREATE VIEW sales_metrics AS
SELECT
s.sale_id,
s.sale_date,
s.store_id,
s.product_id,
s.units,

p.product_name,
p.product_category,

p.product_price,
p.product_cost,

s.units * p.product_price AS revenue,

s.units * p.product_cost AS cost,

s.units * (p.product_price - p.product_cost) AS profit

FROM sales s
JOIN products p
ON s.product_id = p.product_id;

-- View Created

SELECT *
FROM sales_metrics
LIMIT 10;

-- The prelliminary analysis ends here. Now we'll contunue with Advanced analysis of Revenue, Stores & Inventory.