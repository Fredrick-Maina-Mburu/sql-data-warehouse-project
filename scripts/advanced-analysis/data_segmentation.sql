--DATA SEGMENTATION (Group the data on a specific range,
--helps understand the correlation between two measures)

--Segment products into cost ranges and count how many products fall into each segment

WITH products_segment AS (
	SELECT
		product_key,
		product_name,
		product_cost,
		CASE
			WHEN product_cost < 100 THEN 'Below 100'
			WHEN product_cost BETWEEN 100 AND 500 THEN '100-500'
			WHEN product_cost BETWEEN 500 AND 1000 THEN '500-1000'
			ELSE 'Above 1000'
		END AS cost_range
	FROM gold.dim_products
)

SELECT
cost_range,
COUNT(product_key) AS products_count
FROM products_segment
GROUP BY cost_range
ORDER BY products_count DESC

/* 
Group customers into three segments based on their spending behaviour:
	VIP: at least 12 months of history and spending more than 5000
	Regular: at least 12 months of history but spending 5000 or less 
	New: lifespan less than 12 months
And find the total number of customers by each group
*/

WITH customer_spending AS (
	SELECT
		c.customer_key AS customer_key,
		SUM(f.sales_amount)AS total_spending,
		MAX(f.order_date) AS first_order,
		MIN(f.order_date) AS last_order,
		DATEDIFF(month, MIN(f.order_date), MAX(f.order_date)) AS history
	FROM gold.fact_sales f
	LEFT JOIN gold.dim_customers c 
	ON f.customer_key = c.customer_key
	GROUP BY c.customer_key
)

SELECT
customer_segment,
COUNT(customer_key) AS total_customers
FROM(
	SELECT
	customer_key,
	history,
	CASE	
		WHEN total_spending > 5000 AND history >= 12 THEN 'VIP'
		WHEN total_spending <= 5000 AND history >= 12 THEN 'Regular'
		ELSE 'New'
	END AS customer_segment
	FROM customer_spending
)t
GROUP BY customer_segment
ORDER BY total_customers DESC
