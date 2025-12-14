--MEASURES EXPLORATION

--Find The total sales
SELECT
SUM(sales_amount) AS total_sales
FROM gold.fact_sales

--Find how many items are sold
SELECT
SUM(quantity) AS total_items
FROM gold.fact_sales

--Find the average selling price
SELECT
AVG(price) AS average_price
FROM gold.fact_sales

--Find the total number of orders
SELECT
COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales

--Find the total number of products
SELECT
COUNT(product_key) AS total_products
FROM gold.dim_products

--Find the total number of customers
SELECT
COUNT(customer_key) AS total_orders
FROM gold.dim_customers

--Find the total number of customers that has placed an order
SELECT
COUNT(DISTINCT customer_key) AS customers_with_an_order
FROM gold.fact_sales 

--Generate a report that shows all key metrics of the business
SELECT 'Total Sales', SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity)FROM gold.fact_sales
UNION ALL
SELECT 'Avg Price', AVG(price)FROM gold.fact_sales
UNION ALL
SELECT 'Nr Of Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Nr Of Products', COUNT(order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Nr Of Customers', COUNT(customer_key) FROM gold.dim_customers
UNION ALL
SELECT 'Nr Of Customers with orders', COUNT(DISTINCT customer_key) FROM gold.fact_sales
