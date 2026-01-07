-- LeetCode #1068: Product Sales Analysis I
-- Link: https://leetcode.com/problems/product-sales-analysis-i/

-- Approach:
-- Join Sales table with Product table using product_id.
-- Select product_name, year and price for each sale.
-- LEFT JOIN ensures all sales appear in result.

SELECT product_name,
       year,
       price
FROM Sales
LEFT JOIN Product ON Product.product_id = Sales.product_id;
