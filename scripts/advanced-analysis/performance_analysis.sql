--PERFOMANCE ANALYSIS (Comparing the current value to a target value)
--Helps measure success and compare the perfomance

--Analyze the yearly performance of products by comparing their sales to both the 
--average sales performance of the product and the previous year's sales.

WITH yearly_product_sales AS (
	SELECT 
		YEAR(f.order_date) AS Order_date,
		p.product_name,
		SUM(f.sales_amount) AS current_sales
	FROM gold.fact_sales f
	LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
	WHERE f.order_date IS NOT NULL
	GROUP BY YEAR(f.order_date), p.product_name
)
SELECT 
Order_date,
product_name,
current_sales,
AVG(current_sales) OVER (PARTITION BY product_name) AS average_sales,
current_sales - AVG(current_sales) OVER (PARTITION BY product_name) AS avg_diff,
CASE
	WHEN current_sales - AVG(current_sales) OVER (PARTITION BY product_name) > 0 THEN 'Above AVG'
	WHEN current_sales - AVG(current_sales) OVER (PARTITION BY product_name) < 0 THEN 'Below AVG'
	ELSE 'AVG'
END avg_diff_flag,
LAG(current_sales) OVER (PARTITION BY product_name ORDER BY Order_date) AS py_sales,
--year over year analysis
current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY Order_date) AS previous_year_diff,
CASE
	WHEN current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY Order_date) > 0 THEN 'Increase'
	WHEN current_sales - LAG(current_sales) OVER (PARTITION BY product_name ORDER BY Order_date) < 0 THEN 'Decrease'
	ELSE 'No change'
END pychange_flag
FROM yearly_product_sales
ORDER BY product_name, Order_date
