--DATE EXPLORATION

--Find the date of the first and last order
--How many years of sales
SELECT
MAX(order_date) AS last_order_date,
MIN(order_date) AS first_order_date,
DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) AS order_range_years
FROM gold.fact_sales

--Find the youngest and oldest customer
SELECT
MAX(birthdate) AS oldest_customer,
MIN(birthdate) AS youngest_customer,
DATEDIFF(year,MAX(birthdate), GETDATE()) AS oldest_age,
DATEDIFF(year,MIN(birthdate), GETDATE()) AS youngest_Age
FROM gold.dim_customers
