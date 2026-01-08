-- LeetCode #1581: Customer Who Visited but Did Not Make Any Transactions
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Approach:
-- Use LEFT JOIN between Visits and Transactions on visit_id.
-- Filter rows where transaction_id is NULL (no transaction made).
-- Group by customer_id and count such visits.

SELECT V.customer_id,
       COUNT(V.visit_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;
