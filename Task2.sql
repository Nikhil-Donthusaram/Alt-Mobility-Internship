# Task 2. Customer Analysis

#Number Of Orders By Each Customer
SELECT 
customer_id,
count(order_id) as number_of_orders
FROM 
customer_orders
GROUP BY 
customer_id;
-- Average order per customer is 3

#Repeated Customers(more than 1 order)
SELECT 
count(DISTINCT customer_id) as repeat_customers
FROM(
SELECT 
customer_id
FROM 
customer_orders
GROUP BY 
customer_id
HAVING 
count(order_id)>1
) as repeaters;
-- More than one time repeated customers are 4402

#Segment Customers By Order Count 
SELECT 
CASE 
   WHEN orders_count = 1 THEN "One Time"
   WHEN orders_count BETWEEN 2 AND 4 THEN "Occasional"
   ELSE "Frequent"
END AS customer_segment,
count(*) as Number_of_customers
FROM(
    SELECT 
    customer_id, 
    count(order_id) as orders_count
    FROM
    customer_orders
    GROUP BY 
    customer_id
) AS customer_summary
GROUP BY customer_segment;
-- Number of occasional customers are 4144
-- Number of One Time customers are 2932
-- Nimber of Frequent customers are 258

#Customer Trend Over Time
SELECT 
DATE_FORMAT(order_date, "%Y-%m") as Month,
COUNT(DISTINCT customer_id) as unique_customers
FROM 
customer_orders
GROUP BY Month;
-- Average of unique customers per month is 200(repeated one's)

