-- LeetCode #1070: Product Sales Analysis III
-- Link: https://leetcode.com/problems/product-sales-analysis-iii/

-- Approach:
-- Find the first year each product was sold using MIN(year).
-- Join this result back with the Sales table.
-- Retrieve all sales entries that occurred in that first year.
-- Return product_id, first_year, quantity, and price.

SELECT
    s.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM Sales s
JOIN (
    SELECT
        product_id,
        MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
) first_sale
ON s.product_id = first_sale.product_id
AND s.year = first_sale.first_year;
