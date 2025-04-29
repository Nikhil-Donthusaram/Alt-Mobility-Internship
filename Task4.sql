# Task 4. Order Details Report

#Order Details Report
SELECT 
co.order_id,
co.customer_id,
co.order_date,
co.order_status,
p.payment_id,
p.payment_amount,
p.payment_method,
p.payment_status
FROM 
customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id
ORDER BY 
co.order_date;

#Key Metrics
SELECT 
    COUNT(DISTINCT co.order_id) AS total_orders,
    COUNT(DISTINCT p.payment_id) AS total_payments,
    SUM(CASE WHEN p.payment_status = 'completed' THEN 1 ELSE 0 END) AS successful_payments,
    SUM(CASE WHEN p.payment_status = 'completed' THEN p.payment_amount ELSE 0 END) AS total_revenue
FROM customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id;
-- Total orders are 15000
-- Total payments are 1500
-- completed payements are 4991
-- Total revenue is 1257085

#Pending Payments
SELECT 
    co.order_id,
    co.customer_id,
    co.order_date,
    co.order_status,
    p.payment_id,
    p.payment_status,
    p.payment_amount,
    p.payment_method
FROM customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id
WHERE p.payment_status = 'pending';

# Payments Mising in Table
SELECT 
    co.order_id,
    co.customer_id,
    co.order_date,
    co.order_status
FROM customer_orders co
LEFT JOIN payments p ON co.order_id = p.order_id
WHERE p.payment_id IS NULL;



