-- LeetCode #1251: Average Selling Price
-- Link: https://leetcode.com/problems/average-selling-price/

-- Approach:
-- LEFT JOIN Prices with UnitsSold on product_id.
-- Ensure purchase_date falls within the price period.
-- Compute weighted average price as:
--   SUM(price * units) / SUM(units)
-- If a product has no sales, return 0.
-- Round the result to 2 decimal places.

SELECT
    p.product_id,
    ROUND(
        IFNULL(SUM(p.price * u.units) / SUM(u.units), 0),
        2
    ) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
