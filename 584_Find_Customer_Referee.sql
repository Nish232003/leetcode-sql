-- LeetCode #584: Find Customer Referee
-- Link: https://leetcode.com/problems/find-customer-referee/

-- Approach:
-- We need customers who are either:
-- 1) Not referred by anyone (referee_id IS NULL)
-- 2) Referred by a customer whose id is not equal to 2
-- Important: Using only '!= 2' would exclude NULL values,
-- so IS NULL must be handled explicitly.

SELECT name
FROM customer
WHERE referee_id IS NULL
   OR referee_id != 2;
