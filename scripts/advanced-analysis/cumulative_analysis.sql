-- CUMULATIVE ANALYSIS

--calculate the total and average sales per month
--and the running total of sales over time

SELECT
OrderDate,
TotalSales,
AverageSales,
SUM(TotalSales) OVER (ORDER BY OrderDate) AS RunningTotal,
AVG(AverageSales) OVER (ORDER BY OrderDate) AS RunningAverage
FROM (
	SELECT
	DATETRUNC(month, order_date) AS OrderDate,
	SUM(sales_amount) AS TotalSales,
	AVG(sales_amount) AS AverageSales
	FROM gold.fact_sales
	WHERE order_date IS NOT NULL
	GROUP BY DATETRUNC(month, order_date)
)t
