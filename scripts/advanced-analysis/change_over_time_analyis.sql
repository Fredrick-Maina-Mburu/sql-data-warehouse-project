--CHANGES OVER TIME ANALYSIS

-- TotalSales, Nr_Of_Customers, TotalQuantity changes over order_month
SELECT
DATETRUNC(month, order_date) AS OrderDate,
SUM(sales_amount) AS TotalSales,
COUNT(DISTINCT customer_key) AS Nr_Of_Customers,
SUM(quantity) AS TotalQuantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date)
