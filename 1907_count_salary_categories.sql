-- LeetCode #1907: Count Salary Categories
-- LeetCode Link: https://leetcode.com/problems/count-salary-categories/

-- Approach:
-- The problem requires counting bank accounts in three different salary ranges.
-- Use separate SELECT queries for each salary category.
-- Apply appropriate WHERE conditions to filter salaries for:
--   1) High Salary: income strictly greater than 50000
--   2) Low Salary: income strictly less than 20000
--   3) Average Salary: income between 20000 and 50000 (inclusive)
-- Use COUNT(income) to count the number of accounts in each category.
-- Combine all three results using UNION to produce the final result table.

SELECT
  "High Salary" AS category,
  COUNT(income) AS accounts_count
FROM Accounts 
WHERE income > 50000

UNION 

SELECT 
  "Low Salary" AS category,
  COUNT(income) AS accounts_count
FROM Accounts 
WHERE income < 20000

UNION

SELECT 
  "Average Salary" AS category,
  COUNT(income) AS accounts_count
FROM Accounts 
WHERE income >= 20000 AND income <= 50000

