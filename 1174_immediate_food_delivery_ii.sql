-- LeetCode #1174: Immediate Food Delivery II
-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/

-- Approach:
-- First, identify the first order of each customer using MIN(order_date).
-- Consider only these first orders.
-- An order is immediate if order_date = customer_pref_delivery_date.
-- Calculate the percentage of immediate orders among all first orders.
-- Round the result to 2 decimal places.

SELECT
    ROUND(
        100 * SUM(order_date = customer_pref_delivery_date) / COUNT(*),
        2
    ) AS immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN (
    SELECT
        customer_id,
        MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);
