/*
===============================================================================
Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare performance or metrics across dimensions or time periods.
    - To evaluate differences between categories.
    - Useful for A/B testing or regional comparisons.

SQL Functions Used:
    - SUM(), AVG(): Aggregates values for comparison.
    - Window Functions: SUM() OVER() for total calculations.
===============================================================================
*/

-- Which categories contribute the most to overall sales?
WITH sales_category AS (
SELECT
    p.product_category,
    SUM(s.quantity) AS total_sales
FROM gold.fact_sales s
LEFT JOIN gold.dim_products p
ON p.product_key = s.product_key
WHERE order_status = 'Completed'
GROUP BY product_category

)

SELECT
    product_category,
    total_sales,
    SUM(total_sales) OVER () AS overall_sales,
   CONCAT(ROUND((CAST(total_sales AS FLOAT) /  SUM(total_sales) OVER ()) *100, 2), '%') AS percentage_of_total
FROM sales_category
ORDER BY total_sales DESC;


-- Customers from which city contribute the most to overall sales and revenue?
WITH sales_city AS (
SELECT
    c.city,
    SUM(s.quantity) AS total_sales,
    SUM(s.total_amount) AS total_revenue
FROM gold.fact_sales s
LEFT JOIN gold.dim_customers c
ON c.customer_key = s.customer_key
WHERE order_status = 'Completed'
GROUP BY city

)

SELECT
    city,
    total_sales,
    SUM(total_sales) OVER () AS overall_sales,
    CONCAT(ROUND((CAST(total_sales AS FLOAT) /  SUM(total_sales) OVER ()) *100, 2), '%') AS percent_of_total_sales,
    total_revenue,
    SUM(total_revenue) OVER () AS overall_revenue,
    CONCAT(ROUND((CAST(total_revenue AS FLOAT) /  SUM(total_revenue) OVER ()) *100, 2), '%') AS percent_of_revenue
FROM sales_city
ORDER BY total_sales DESC;