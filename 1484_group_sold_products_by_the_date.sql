--Leetcode #1484 – Group Sold Products By The Date
--Leetcode link : https://leetcode.com/problems/group-sold-products-by-the-date/

--Approach:

--Group records by sell_date to aggregte daily sales.
--Use COUNT(DISTINCT product) to calculate the number of unique products sold per date (num_sold).
--Use GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') to:
--remove duplicates
--sort product names alphabetically
--combine them into a single comma-separated string.
--Sort final output using ORDER BY sell_date

SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
