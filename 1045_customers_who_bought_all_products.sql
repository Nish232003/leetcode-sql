-- LeetCode #1045: Customers Who Bought All Products
-- Link: https://leetcode.com/problems/customers-who-bought-all-products/

-- Approach:
-- 1. Group records by customer_id to evaluate each customer independently
-- 2. Count DISTINCT products purchased by each customer
-- 3. Compare this count with the total number of products available
-- 4. Customers whose purchased-product count equals total products
--    are the ones who bought all products

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*) 
    FROM Product
);
