--RANKING

--Which 5 products generate the highest revenue
SELECT TOP 5
dp.product_name, SUM(sales_amount) AS TotalRevenue
FROM gold.fact_sales fc
LEFT JOIN gold.dim_products dp ON fc.product_key = dp.product_key
GROUP BY dp.product_name
ORDER BY TotalRevenue DESC

--What are the 5 worst performing products in terms of sales
SELECT TOP 5
dp.product_name, SUM(sales_amount) AS TotalRevenue
FROM gold.fact_sales fc
LEFT JOIN gold.dim_products dp ON fc.product_key = dp.product_key
GROUP BY dp.product_name
ORDER BY TotalRevenue ASC

--Find the top 10 customers who have generated the highest revenue
SELECT TOP 10 fs.customer_key, dc.first_name, dc.last_name ,SUM(sales_amount) AS TotalRevenue
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc ON fs.customer_key = dc.customer_key
GROUP BY fs.customer_key, dc.first_name, dc.last_name
ORDER BY TotalRevenue DESC

--The 3 customers with the fewest orders placed
SELECT TOP 3 fs.customer_key, dc.first_name, dc.last_name ,COUNT(DISTINCT order_number) AS TotalOrders
FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc ON fs.customer_key = dc.customer_key
GROUP BY fs.customer_key, dc.first_name, dc.last_name
ORDER BY TotalOrders ASC
