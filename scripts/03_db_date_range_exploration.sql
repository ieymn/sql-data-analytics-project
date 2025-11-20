/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and last interacion date, ticket date and the total duration in months
SELECT 
    MIN(last_interaction_date) AS first_interaction_date,
    MAX(last_interaction_date) AS last_interaction_date,
    MIN(last_ticket_date) AS first_ticket_date,
    MAX(last_ticket_date) AS last_ticket_date,
    DATEDIFF(MONTH, MIN(last_interaction_date), MAX(last_interaction_date)) interaction_range_month,
    DATEDIFF(MONTH, MIN(last_ticket_date), MAX(last_ticket_date)) ticket_range_month
FROM gold.dim_customers;

-- Measures how long it takes between order and shipping
SELECT
DATEDIFF(DAY, order_date, shipping_date) AS shipping_delay_days
FROM gold.fact_sales;

-- To find if payments are immediate or delayed
SELECT
DATEDIFF(DAY, order_date, transaction_date) AS transaction_gap
FROM gold.fact_sales;

-- Determine the first/last order date and transaction date
SELECT 
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order,
    MIN(transaction_date) AS first_transaction,
    MAX(transaction_date) AS last_transaction,
    MIN(shipping_date) AS first_shipping,
    MAX(shipping_date) AS last_shipping
FROM gold.fact_sales;

-- Find late shipments
SELECT
order_id,
CASE 
    WHEN DATEDIFF(DAY, order_date, shipping_date) > 7 THEN 'Late'
    ELSE 'On Time'
END AS shipping_status
FROM gold.fact_sales;
