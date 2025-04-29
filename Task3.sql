# Task 3. Payment Status Analysis

#Total Payment By Status
SELECT 
payment_status,
COUNT(*) as total_payments
FROM 
payments
GROUP BY 
payment_status
ORDER BY 
total_payments DESC;
-- pending payments 5006 
-- failed payments 5003
-- completed payments 4991


#Payment Type and Status
SELECT 
    payment_method,
    payment_status,
    COUNT(*) AS total_count
FROM payments
GROUP BY payment_method, payment_status
ORDER BY payment_method, payment_status;
-- Bank Transfer are the more Failed Payments

# Monthly Payment Failures
SELECT 
    DATE_FORMAT(payment_date, '%Y-%m') AS month,
    COUNT(*) AS failed_payments
FROM payments
WHERE payment_status = 'Failed'
GROUP BY month
ORDER BY month;
-- Average Monthly failed payments are 80

