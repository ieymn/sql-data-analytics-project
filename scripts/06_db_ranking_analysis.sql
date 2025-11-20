/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: WHERE, GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products Generating the Highest Revenue?
-- Simple Ranking
SELECT TOP 5
    p.product_name,
    SUM(s.total_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON p.product_key = s.product_key
WHERE s.order_status = 'Completed'
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Complex but Flexibly Ranking Using Window Functions
SELECT *
FROM (
    SELECT
        p.product_name,
        SUM(s.total_amount) AS total_revenue,
        RANK() OVER (ORDER BY SUM(s.total_amount) DESC) AS rank_products
    FROM gold.fact_sales s
    LEFT JOIN gold.dim_products p
        ON p.product_key = s.product_key
    WHERE s.order_status = 'Completed'
    GROUP BY p.product_name
) AS ranked_products
WHERE rank_products <= 5;


-- What are the 5 worst-performing products in terms of sales?
SELECT TOP 5
    p.product_name,
    SUM(s.total_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
    ON p.product_key = s.product_key
GROUP BY p.product_name
ORDER BY total_revenue ASC;

-- Find the top 10 customers who have generated the highest revenue
SELECT TOP 10
    customer_key,
    customer_name,
    SUM(total_amount) AS total_revenue
FROM gold.fact_sales
WHERE order_status = 'Completed'
GROUP BY 
    customer_key,
    customer_name
ORDER BY total_revenue DESC;

-- The 10 customers with the fewest orders placed
SELECT TOP 10
    customer_key,
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM gold.fact_sales
GROUP BY 
    customer_key,
    customer_name
ORDER BY total_orders;