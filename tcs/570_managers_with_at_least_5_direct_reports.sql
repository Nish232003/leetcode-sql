-- LeetCode #570: Managers with at Least 5 Direct Reports
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

-- Approach:
-- Self join the Employee table to link employees with their managers.
-- Group by manager id and name.
-- Use HAVING clause to filter managers with at least 5 direct reports.

SELECT e2.name
FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e2.id, e2.name
HAVING COUNT(e1.id) >= 5;
