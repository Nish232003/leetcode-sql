-- LeetCode #1193: Monthly Transactions I
-- Link: https://leetcode.com/problems/monthly-transactions-i/

-- Approach:
-- Extract month from trans_date using DATE_FORMAT.
-- Group by month and country.
-- Count total transactions and sum total amount.
-- Use conditional aggregation to count and sum approved transactions.

SELECT
    DATE_FORMAT(trans_date, '%Y-%m') AS month,
    country,
    COUNT(*) AS trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;
