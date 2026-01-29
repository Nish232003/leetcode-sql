--Leetcode #1164 : Product Price at a given date
-- Leetcode Link :https://leetcode.com/problems/product-price-at-a-given-date/

--Approach :
--Find the latest price change on or before 2019-08-16 for each product using MAX(change_date).
--Select the corresponding new_price for those products.
--Assign a default price of 10 to products with no price change before the given date.
--Combine both results using UNION.

SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN
(
    SELECT product_id, MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

UNION

SELECT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN
(
    SELECT  product_id
    FROM Products
    WHERE change_date <= '2019-08-16'
)
