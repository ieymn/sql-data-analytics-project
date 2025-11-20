/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-------------------------------------------------------------------------------
--                              dim_customers
-------------------------------------------------------------------------------


-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    city 
FROM gold.dim_customers
ORDER BY city;

-- Retrieve a list of customers enggagement level
SELECT DISTINCT 
    engagement_level
FROM gold.dim_customers
ORDER BY engagement_level;

-------------------------------------------------------------------------------
--                              dim_products
-------------------------------------------------------------------------------
--Retrieve a list of products category with products name
SELECT DISTINCT
    product_category,
    product_name
FROM gold.dim_products
ORDER BY product_category;

-------------------------------------------------------------------------------
--                              fact_sales
-------------------------------------------------------------------------------

-- Retrieve a list of payment type that have been used by customers
SELECT DISTINCT
    payment_method
FROM gold.fact_sales;

-- Retrieve a list of order status
SELECT DISTINCT
    order_status
FROM gold.fact_sales;


